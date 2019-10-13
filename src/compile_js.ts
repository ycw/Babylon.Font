//
// Compile Opentypejs PathCommand to a Set of "Fill-Holes"
// 

// # Sample output 
// Set Entries:
//   0:[ fill, Set<hole> ]
//   1:[ fill, Set<hole> ]

// + Single char glyph may compose w/ multi discrete "fills", 
//   ex. 'i' (a dot and a stroke)
// + Single discrete shape may have multi "holes" 
//   - they must be isolated each other for earcutjs
//   - ex. '8' (two circle holes inside the same shape) 



interface PathCommand {
    type: string;
    x?: number;
    y?: number;
    x1?: number;
    y1?: number;
    x2?: number;
    y2?: number;
}




//
// Compile opentype.PathCommand
// {fmt} = outline format; 'cff' | 'truetype'; unknown type treated as truetype
// {ppc} = pointPerCurve; used by interpolating bezier curve commands
// {eps} = dedupEpsilon; used to solve extreme thin glyph; step should be 0.001
//

export default function compile(cmds: PathCommand[], fmt: string, ppc = 0, eps = 0) {
    ppc += 2;
    const polygons = new Set<[number, number][]>();
    let curr: [number, number][] = [];
    let $x = NaN;
    let $y = NaN;
    for (const cmd of cmds) {
        switch (cmd.type) {
            case 'M':
                curr = [[
                    $x = cmd.x!,
                    $y = cmd.y!
                ]];
                break;
            case 'L':
                curr.push([
                    $x = cmd.x!,
                    $y = cmd.y!
                ]);
                break;
            case 'Q':
                curr.push(...interpQ(
                    [$x, $y],
                    [cmd.x1!, cmd.y1!],
                    [$x = cmd.x!, $y = cmd.y!],
                    ppc
                ));
                break;
            case 'C':
                curr.push(...interpC(
                    [$x, $y],
                    [cmd.x1!, cmd.y1!],
                    [cmd.x2!, cmd.y2!],
                    [$x = cmd.x!, $y = cmd.y!],
                    ppc
                ));
                break;
            case 'Z':
                curr = dedup(curr, eps); // dedup nearby vertices
                polygons.add(curr);
                break;
        }
    }

    // Determine hole/fill
    //// CFF uses oddeven (+1 +1 ..; even=hole)
    //// TTF uses nonzero (cw +1 ccw -1; 0=hole)

    const fills = new Set<[number, number][]>();
    const holes = new Set<[number, number][]>();
    const isHoleFn = fmt == 'cff' ? isHole_oddeven : isHole_nonzero;

    for (const polygon of polygons) {
        isHoleFn(polygon, polygons)
            ? holes.add(polygon)
            : fills.add(polygon);
    }

    // Determine: "hole(s)" belong to which "fill". 
    // Group them as a "shape" (shape = 1 fill & 0+ holes) 
    // return a Set of "shape" (a glyph = Set of 0+ shape)
    // e.g. ' ' space -> returns empty Set
     
    return linkUp(fills, holes);
}



//
// Pick a point inside a polygon
// - Find centroid of the rightmost point and its two neighbors
// 

function pickAPoint(
    vs: [number, number][]
): [number, number] {
    let max = vs[0][0];
    let i = 0;
    let j = 1;
    let $len = vs.length;
    let $v: [number, number] = vs[0];
    while (j < $len) {
        $v = vs[j];
        if ($v[0] > max) {
            max = $v[0];
            i = j;
        }
        ++j;
    }
    const curr = vs[i];
    const prev = vs[i ? i - 1 : $len - 1];
    const next = vs[(i + 1) % $len];
    const $1 = tinystep(curr, next, 0.001);
    const $2 = tinystep(curr, prev, 0.001);
    return [
        ($1[0] + $2[0] + curr[0]) / 3,
        ($1[1] + $2[1] + curr[1]) / 3
    ];
}



//
// Get a point from v0 towards v1 and very near v0.
//

function tinystep(
    v0: [number, number],
    v1: [number, number],
    e: number
): [number, number] {
    const d = ((v1[1] - v0[1]) ** 2 + (v1[0] - v0[0]) ** 2) ** 0.5;
    return [
        (v1[0] - v0[0]) / d * e + v0[0],
        (v1[1] - v0[1]) / d * e + v0[1]
    ];
}



//
// Is a hole polygon? 
// Oddeven fillrule, for cff outline format
// (even=hole) 
//

function isHole_oddeven(
    target: [number, number][],
    polygons: Set<[number, number][]>
): boolean {
    const p0 = pickAPoint(target);
    const $p1: [number, number] = [100, p0[1]];
    let $v1: [number, number];
    let c = 0;
    for (const polygon of polygons) {
        for (const [i, v] of polygon.entries()) {
            $v1 = polygon[(i + 1) % polygon.length];
            if (isLinesIntersect(p0, $p1, v, $v1)) {
                ++c;
            }
        }
    }
    return c % 2 === 0;
}



//
// Is a hole polygon?  
// Nonzero fillrule, for 'truetype' outline format;
// (0=hole)
// 

function isHole_nonzero(
    target: [number, number][],
    polygons: Set<[number, number][]>
): boolean {
    const p0 = pickAPoint(target);
    const $p1: [number, number] = [100, p0[1]];
    let $v1: [number, number];
    let c = 0;
    for (const polygon of polygons) {
        for (const [i, v] of polygon.entries()) {
            $v1 = polygon[(i + 1) % polygon.length];
            if (isLinesIntersect(p0, $p1, v, $v1)) {
                c += windingOfTwoLines(p0, v, $v1);
            }
        }
    }
    return c % 2 === 0;
}



//
// Grouping "hole polygons" to "fill" polygon
//

type Result = Set<[
    [number, number][],         // #0 is fill 
    Set<[number, number][]>     // #1 is Set<holes>
]>

function linkUp(
    fills: Set<[number, number][]>,
    holes: Set<[number, number][]>
): Result {
    const result: Result = new Set();
    for (const fill of fills) {
        const $hs = new Set<[number, number][]>(); // hole stash
        A: for (const hole of holes) {
            if (!isPolygonInsidePolygon(hole, fill)) {
                continue;
            }
            for (const $h of $hs) {
                if (isPolygonInsidePolygon(hole, $h)) {
                    continue A;
                }
                if (isPolygonInsidePolygon($h, hole)) {
                    $hs.delete($h);
                    // Dont shortcurcuit; holes in stach
                    // maybe also inside current testing hole.
                }
            }
            $hs.add(hole); // includes isolated hole
        }
        result.add([fill, $hs]);
    }
    return result;
}



//
// Interpolate quadratic bezier curve
//

function interpQ(
    p0: [number, number],
    p1: [number, number],
    p2: [number, number],
    n: number // n must >= 2
): [number, number][] {
    const result: [number, number][] = [];
    let $0 = NaN;
    let $1 = NaN;
    let $2 = NaN;
    let $$ = NaN;
    for (let i = 0, t = 0; i < n; ++i) {
        t = i / (n - 1);
        $0 = ($$ = 1 - t) ** 2;
        $1 = 2 * $$ * t;
        $2 = t ** 2;
        result.push([
            $0 * p0[0] + $1 * p1[0] + $2 * p2[0],
            $0 * p0[1] + $1 * p1[1] + $2 * p2[1]
        ]);
    }
    return result;
}



//
// Interpolate cubic bezier curve 
//

function interpC(
    p0: [number, number],
    p1: [number, number],
    p2: [number, number],
    p3: [number, number],
    n: number // n must >= 2
): [number, number][] {
    const result: [number, number][] = [];
    let $0 = NaN;
    let $1 = NaN;
    let $2 = NaN;
    let $3 = NaN;
    let $4 = NaN;
    let $5 = NaN;
    let $6 = NaN;
    for (let i = 0, t = 0; i < n; ++i) {
        t = i / (n - 1);
        $0 = 1 - t;
        $1 = $0 ** 2;             // (1-t) ^2
        $2 = $1 * $0;             // (1-t) ^3 ... coeff#0
        $3 = t ** 2;              // t ^2
        $4 = $3 * t;              // t ^3      .. coeff#3
        $5 = 3 * $1 * t;          //          ... coeff#1
        $6 = 3 * $0 * $3;         //          ... coeff#2
        result.push([
            $2 * p0[0] + $5 * p1[0] + $6 * p2[0] + $4 * p3[0],
            $2 * p0[1] + $5 * p1[1] + $6 * p2[1] + $4 * p3[1]
        ]);
    }
    return result;
}



//
// Dedup nearby vertices
//

function dedup(
    vs: [number, number][],
    eps: number
): [number, number][] {
    const result: [number, number][] = [vs[0]];
    let i = 1;
    let $len = vs.length;
    let $v: [number, number];
    let $1 = vs[0];
    while (i < $len) {
        $v = vs[i];
        if (!isVertexEqual($v, $1, eps)) {
            result.push($v);
            $1 = $v;
        }
        ++i;
    }
    if (isVertexEqual(result[0], $1, eps)) {
        result.pop();
    }
    return result;
}


//
// Is vertex eq to another
//

function isVertexEqual(
    p0: [number, number],
    p1: [number, number],
    eps: number
): boolean {
    return p0[0] == p1[0] && p0[1] == p1[1] // fast check
        || (p0[0] - p1[0]) ** 2 + (p0[1] - p1[1]) ** 2 <= eps ** 2;
}



//
// Determine winding from ab to ac
//

function windingOfTwoLines(
    a: [number, number],
    b: [number, number],
    c: [number, number]
): number {
    // (b - a) cross (c - a)
    // ^^$1^^^       ^^$2^^^
    const $1 = [b[0] - a[0], b[1] - a[1]];
    const $2 = [c[0] - a[0], c[1] - a[1]];
    // cross
    return Math.sign($1[0] * $2[1] - $1[1] * $2[0]);
}



//
// Is a point inside a polygon
// 

function isPointInsidePolygon(
    p: [number, number],
    vs: [number, number][]
): boolean {
    const $p1: [number, number] = [100, p[1]];
    let c = 0; // nonzero winding rule count
    let $v1: [number, number];
    for (const [iV, v] of vs.entries()) {
        $v1 = vs[(iV + 1) % vs.length];
        if (isLinesIntersect(p, $p1, v, $v1)) {
            c += windingOfTwoLines(p, v, $v1);
        }
    }
    return c % 2 != 0; // nonzero = inside 
}



//
// Is a line intersects another line
//

function isLinesIntersect(
    a: [number, number], // line seg A endpoint
    b: [number, number], // line seg A endpoint
    c: [number, number], // line seg B endpoint
    d: [number, number]  // line seg B endpoint
): boolean {
    return windingOfTwoLines(a, b, c) !== windingOfTwoLines(a, b, d)
        && windingOfTwoLines(c, d, a) !== windingOfTwoLines(c, d, b);
}



// 
// Get bounding box of polygon
//

function boundingBoxOf(
    polygon: [number, number][]
): [number, number, number, number] {
    let xMin = Infinity;
    let yMin = Infinity;
    let xMax = -Infinity;
    let yMax = -Infinity;
    let $v: [number, number];
    for (let i = 0; i < polygon.length; ++i) {
        $v = polygon[i];
        if ($v[0] < xMin) { xMin = $v[0] }
        else if ($v[0] > xMax) { xMax = $v[0] }
        if ($v[1] < yMin) { yMin = $v[1] }
        else if ($v[1] > yMax) { yMax = $v[1] }
    }
    return [xMin, yMin, xMax, yMax];
}




//
// Is polygon A inside another polygon, B
// 

function isPolygonInsidePolygon(
    A: [number, number][],
    B: [number, number][]
): boolean {
    //------ fast check 
    const bboxA = boundingBoxOf(A);
    const bboxB = boundingBoxOf(B);
    if (bboxA[0] < bboxB[0] && bboxA[2] < bboxB[0]
        || bboxA[0] > bboxB[2] && bboxA[2] > bboxB[2]
        || bboxA[1] < bboxB[1] && bboxA[3] < bboxB[1]
        || bboxA[1] > bboxB[3] && bboxA[3] > bboxB[3]
    ) {
        return false;
    }
    //
    // true ony if A is not touching B && A has a point inside B
    //
    let $vA1: [number, number];
    let $vB1: [number, number];
    for (const [iA, vA] of A.entries()) {
        $vA1 = A[(iA + 1) % A.length];
        for (const [iB, vB] of B.entries()) {
            $vB1 = B[(iB + 1) % B.length];
            if (isLinesIntersect(vA, $vA1, vB, $vB1)) {
                return false;
            }
        }
    }
    return isPointInsidePolygon(A[0], B);
}