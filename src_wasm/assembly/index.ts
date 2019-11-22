// # Flatten PathCommands in Linear Memory Structure
// | Command | Structure
// |---------|----------
// | M       | u8, f64, f64
// | L       | u8, f64, f64
// | Q       | u8, f64, f64, f64, f64, f64, f64
// | C       | u8, f64, f64, f64, f64, f64, f64, f64, f64
// | Z       | u8



const SZ: u8 = 8; // f64 size in byte
const TINYSTEP: f64 = 1e-3; // see `pickAPoint()`
const FARAWAY: f64 = 1e10; // represent infinity



//
// Classes
//

class Vertex {
  constructor(public x: f64 = 0, public y: f64 = 0) { }
}

class BBox {
  constructor(
    public xMin: f64 = 0,
    public yMin: f64 = 0,
    public xMax: f64 = 0,
    public yMax: f64 = 0
  ) { }
}



//
// Type Alias
//

type Polygon = Array<Vertex>;
type CompileResult = Array<Array<Polygon>>;



//
// External functions
//

// export declare function inspectPolygons(msg: string, x: Array<Polygon>): void;
// export declare function inspectNumber(msg: string, x: number): void;



//
// Compile path commands
//
// {bytesUsed} no. of bytes the flatten commands used 
// {fmt} outlineFormat; 1:'cff', non1:'truetype'
// {ppc} pointPerCurve(no. of intermediate points); [0, 255]
// {eps} dedupEpsilon(decimation); ideal values e.g. 0.001 
//

export function compile(bytesUsed: usize, fmt: u8, ppc: u8, eps: f64): CompileResult {

  ppc += 2;

  let polygons: Array<Polygon> = [];

  let i: usize = 0;
  let iP: usize = 0;
  let cmd: u8;
  let x0: f64, y0: f64;
  let x1: f64, y1: f64;
  let x2: f64, y2: f64;
  let x: f64, y: f64;

  while (i < bytesUsed) {
    cmd = load<u8>(i);
    i += 1;
    if (cmd == 77) { // 'M'
      x = load<f64>(i);
      i += SZ;
      y = load<f64>(i);
      i += SZ;
      polygons[iP] = [{ x, y }];
      continue;
    }
    if (cmd == 76) { // L
      x = load<f64>(i);
      i += SZ;
      y = load<f64>(i);
      i += SZ;
      polygons[iP].push({ x, y });
      continue;
    }
    if (cmd == 81) { // 'Q'
      x0 = load<f64>(i);
      i += SZ;
      y0 = load<f64>(i);
      i += SZ;
      x1 = load<f64>(i);
      i += SZ;
      y1 = load<f64>(i);
      i += SZ;
      x = load<f64>(i);
      i += SZ;
      y = load<f64>(i);
      i += SZ;
      let vs = interpQ(
        x0, y0,
        x1, y1,
        x, y,
        ppc
      );
      for (let k = 1, len = vs.length; k < len; ++k) {
        polygons[iP].push(vs[k]);
      }
      continue;
    }
    if (cmd == 67) { // 'C'
      x0 = load<f64>(i);
      i += SZ;
      y0 = load<f64>(i);
      i += SZ;
      x1 = load<f64>(i);
      i += SZ;
      y1 = load<f64>(i);
      i += SZ;
      x2 = load<f64>(i);
      i += SZ;
      y2 = load<f64>(i);
      i += SZ;
      x = load<f64>(i);
      i += SZ;
      y = load<f64>(i);
      i += SZ;
      let vs = interpC(
        x0, y0,
        x1, y1,
        x2, y2,
        x, y,
        ppc
      );
      for (let k = 1, len = vs.length; k < len; ++k) {
        polygons[iP].push(vs[k]);
      }
      continue;
    }
    if (cmd == 90) { // 'Z'
      polygons[iP] = dedup(polygons[iP], eps);

      // IF over decimation, dedup again w/ most restricted {eps} value (0.0)
      if (polygons[iP].length < 3) {
        polygons[iP] = dedup(polygons[iP], 0.0);
      }

      ++iP;
      continue;
    }
  }

  //
  // Determine fill/hole
  // 
  // | outline  | rule    | hole if |
  // |----------|---------|---------|
  // | cff      | oddeven | even    |
  // | truetype | nonzero | zero    |
  //

  const fills: Array<Polygon> = [];
  const holes: Array<Polygon> = [];
  let polygon: Polygon;
  for (let i = 0, len = polygons.length; i < len; ++i) {
    polygon = polygons[i];
    let isHole: bool;
    if (fmt == 1) { // cff
      isHole = isHole_oddeven(polygon, polygons);
    } else { // truetype or unknown
      isHole = isHole_nonzero(polygon, polygons);
    }
    if (isHole) {
      holes.push(polygon);
    } else {
      fills.push(polygon);
    }
  }

  // inspectPolygons('polygons', polygons);
  // inspectPolygons('filles', fills);
  // inspectPolygons('holes', holes);
  // inspectNumber('polygon count', polygons.length);

  return linkUp(fills, holes);
}



//
// Linkup (group hole polygon(s) into corresponding fill polygon)
//

function linkUp(
  fills: Array<Polygon>,
  holes: Array<Polygon>,
): CompileResult {
  const result: CompileResult = [];
  let hole: Polygon;
  let fill: Polygon;
  for (let i = 0, ilen = fills.length; i < ilen; ++i) {
    fill = fills[i];
    const $hs: Array<Polygon> = []; // hole stash
    for (let j = 0, jlen = holes.length; j < jlen; ++j) {
      hole = holes[j];
      if (!isPolygonInsidePolygon(hole, fill)) {
        continue;
      }

      let isInside = false;
      for (let k = 0; k < $hs.length; ++k) {
        const $h = $hs[k];
        if (isPolygonInsidePolygon(hole, $h)) {
          isInside = true;
          break;
        }
        if (isPolygonInsidePolygon($h, hole)) {
          let index = $hs.indexOf($h);
          if (index !== -1) {
            $hs.splice(index, 1);
          }
          // Dont shortcurcuit; holes in stash
          // maybe also inside current testing hole.
        }
      }
      if (!isInside) {
        $hs.push(hole);
      }
    }
    let shape: Array<Polygon> = [fill];
    for (let i = 0, len = $hs.length; i < len; ++i) {
      shape.push($hs[i]);
    }
    result.push(shape);
  }
  return result;
}



//
// Dedup nearby vertices
//

function dedup(vs: Polygon, eps: f64): Polygon {
  const first = vs[0];
  const result: Polygon = [first];
  let i = 1;
  let len = vs.length;
  let $curr: Vertex;
  let $prev = first;
  while (len > 1) {
    if (!isVertexEqual(vs[len - 1], first, eps)) {
      break;
    }
    --len;
  }
  while (i < len) {
    $curr = vs[i];
    if (!isVertexEqual($curr, $prev, eps)) {
      result.push($curr);
      $prev = $curr;
    }
    ++i;
  }
  return result;
}



//
// Is a vertex close-to another one 
//

// @ts-ignore: asc attribute 
@inline
function isVertexEqual(p0: Vertex, p1: Vertex, eps: f64): bool {
  let dx = p0.x - p1.x;
  let dy = p0.y - p1.y;
  return dx == 0 && dy == 0 // fast check
    || (dx * dx + dy * dy <= eps * eps);
}



//
// Interpolate 'Q' command
//

// @ts-ignore: asc attribute
@inline
function interpQ(
  p0x: f64, p0y: f64,
  p1x: f64, p1y: f64,
  p2x: f64, p2y: f64,
  n: u32
): Array<Vertex> {
  const result = new Array<Vertex>(n);
  let $0: f64;
  let $1: f64;
  let $2: f64;
  let $$: f64;
  let iN = 1.0 / (n - 1);
  for (let i: u32 = 0; i < n; ++i) {
    let t = f64(i) * iN;
    $$ = 1 - t;
    $0 = $$ * $$;
    $1 = 2 * $$ * t;
    $2 = t * t;
    unchecked(result[i] = {
      x: $0 * p0x + $1 * p1x + $2 * p2x,
      y: $0 * p0y + $1 * p1y + $2 * p2y
    });
  }
  return result;
}



//
// Interpolate 'C' command
//

// @ts-ignore: asc attribute
@inline
function interpC(
  p0x: f64, p0y: f64,
  p1x: f64, p1y: f64,
  p2x: f64, p2y: f64,
  p3x: f64, p3y: f64,
  n: u32
): Array<Vertex> {
  const result = new Array<Vertex>(n);
  let $0: f64;
  let $1: f64;
  let $2: f64;
  let $3: f64;
  let $4: f64;
  let $5: f64;
  let $6: f64;
  let iN = 1.0 / (n - 1);
  for (let i: u32 = 0; i < n; ++i) {
    let t = f64(i) * iN;
    $0 = 1.0 - t;
    $1 = $0 * $0;           // (1-t) ^2
    $2 = $1 * $0;           // (1-t) ^3 ... coeff#0
    $3 = t * t;             // t ^2
    $4 = $3 * t;            // t ^3      .. coeff#3
    $5 = 3 * $1 * t;        //          ... coeff#1
    $6 = 3 * $0 * $3;       //          ... coeff#2
    unchecked(result[i] = {
      x: $2 * p0x + $5 * p1x + $6 * p2x + $4 * p3x,
      y: $2 * p0y + $5 * p1y + $6 * p2y + $4 * p3y
    });
  }
  return result;
}



//
// Detect hole; by oddeven fillrule (even=hole)
// (cff outline)
//

function isHole_oddeven(target: Polygon, polygons: Polygon[]): bool {
  const p0 = pickAPoint(target);
  const $p1 = new Vertex(FARAWAY, p0.y);
  let c = 0;
  let $polygon: Polygon;
  let $v0: Vertex;
  let $v1: Vertex;
  for (let i = 0, ilen = polygons.length; i < ilen; ++i) {
    $polygon = polygons[i];
    for (let j = 0, len = $polygon.length - 1; j <= len; ++j) {
      $v0 = $polygon[j];
      $v1 = $polygon[j == len ? 0 : j + 1];
      if (isLinesIntersect(p0, $p1, $v0, $v1)) {
        ++c;
      }
    }
  }
  return (c & 1) == 0;
}



//
// Detect hole; by nonzero fillrule (0=hole)
// (truetype outline)
//

function isHole_nonzero(target: Polygon, polygons: Polygon[]): bool {
  const p0 = pickAPoint(target);
  const $p1 = new Vertex(FARAWAY, p0.y);
  let $v1: Vertex;
  let $v0: Vertex;
  let c = 0;
  let $polygon: Polygon;
  for (let i = 0, ilen = polygons.length; i < ilen; ++i) {
    $polygon = polygons[i];
    for (let j = 0, len = $polygon.length - 1; j <= len; ++j) {
      $v0 = $polygon[j];
      $v1 = $polygon[j == len ? 0 : j + 1];
      if (isLinesIntersect(p0, $p1, $v0, $v1)) {
        c += windingOfTwoLines(p0, $v0, $v1);
      }
    }
  }
  return (c & 1) == 0; // kill %
}



//
// Pick a point in polygon, algo:
//
// 1. Form a tiny triangle
//    p0 = the rightmost point
//    p1 = next neighbor of the rightmost point
//    p2 = prev neighbor of the rightmost point
// 2. Compute the centroid of the triangle as picked point
//    (p0 + p1 + p2) / 3.0 
//

function pickAPoint(vs: Polygon): Vertex {
  let $end = vs.length - 1;
  let $v = vs[0];
  let max = $v.x;
  let i = 0;
  let j = 1;
  while (j <= $end) {
    $v = vs[j];
    if ($v.x > max) {
      max = $v.x;
      i = j;
    }
    ++j;
  }
  const curr = vs[i];
  const prev = vs[i ? i - 1 : $end];
  const next = vs[i == $end ? 0 : i + 1];
  const $1 = tinystep(curr, next, TINYSTEP);
  const $2 = tinystep(curr, prev, TINYSTEP);
  return new Vertex(
    ($1.x + $2.x + curr.x) / 3.0,
    ($1.y + $2.y + curr.y) / 3.0
  );
}



//
// Find a point lying on line v0v1 && very close-to v0
//

function tinystep(
  v0: Vertex,
  v1: Vertex,
  e: f64
): Vertex {
  const v0x = v0.x;
  const v0y = v0.y;
  const dx = v1.x - v0x;
  const dy = v1.y - v0y;
  const d = Math.hypot(dx, dy);
  return {
    x: v0x + dx / d * e,
    y: v0y + dy / d * e
  };
}



//
// Is Line A intersects Line B
//

// @ts-ignore: asc attribute
@inline
function isLinesIntersect(
  a: Vertex, // line seg A endpoint
  b: Vertex, // line seg A endpoint
  c: Vertex, // line seg B endpoint
  d: Vertex  // line seg B endpoint
): bool {
  return windingOfTwoLines(a, b, c) !== windingOfTwoLines(a, b, d)
    && windingOfTwoLines(c, d, a) !== windingOfTwoLines(c, d, b);
}



//
// Winding from ab to ac, algo:
// 
// (b - a) cross (c - a)           # if < 0 then -1 else 1
// ^^$1^^^       ^^$2^^^
//
// $1 =(b.x - a.x, b.y - a.y)
// $2 = (c.x - a.x, c.y - a.y) 
//
// Then, $1 cross $2
// = ($1.x * $2.y - $1.y * $2.x) 
// = (b.x-a.x) * (c.y-a.y) - (b.y-a.y) * (c.x-a.x)
// 
// If it is negative, winding is -1, otherwise +1.
//

// @ts-ignore: asc attribute
@inline
function windingOfTwoLines(
  a: Vertex,
  b: Vertex,
  c: Vertex
): i32 {
  return (b.x - a.x) * (c.y - a.y) - (b.y - a.y) * (c.x - a.x) < 0 ? -1 : 1;
}



//
// Is point inside polygon
//

function isPointInsidePolygon(p: Vertex, vs: Polygon): bool {
  const $p1 = new Vertex(FARAWAY, p.y);
  let c = 0; // nonzero winding rule count
  for (let i = 0, len = vs.length - 1; i <= len; ++i) {
    let $v0 = vs[i];
    let $v1 = vs[i == len ? 0 : i + 1];
    if (isLinesIntersect(p, $p1, $v0, $v1)) {
      c += windingOfTwoLines(p, $v0, $v1);
    }
  }
  return (c & 1) != 0; // nonzero = inside; kill %
}



//
// BBox of polygon
//

function boundingBoxOf(polygon: Polygon): BBox {
  let xMin = +Infinity;
  let yMin = +Infinity;
  let xMax = -Infinity;
  let yMax = -Infinity;
  for (let i = 0, len = polygon.length; i < len; ++i) {
    let $v = polygon[i];
    let vx = $v.x;
    let vy = $v.y;
    xMin = Math.min(vx, xMin);
    xMax = Math.max(vx, xMax);
    yMin = Math.min(vy, yMin);
    yMax = Math.max(vy, yMax);
  }
  return { xMin, yMin, xMax, yMax };
}



//
// Is polygon A inside polygon B
// (for testing "hole in fill?", "hole in hole?")
//

function isPolygonInsidePolygon(
  A: Polygon,
  B: Polygon
): bool {

  //
  // false if bboxes are not overlapping 
  //

  let bboxA = boundingBoxOf(A);
  let bboxB = boundingBoxOf(B);
  if (
    bboxA.xMax < bboxB.xMin
    || bboxA.xMin > bboxB.xMax
    || bboxA.yMax < bboxB.yMin
    || bboxA.yMin > bboxB.yMax
  ) {
    return false;
  }

  //
  // true if A is not crossing B && A has a point inside B
  //

  for (let iA = 0, alen = A.length - 1; iA <= alen; ++iA) {
    let $vA0 = A[iA];
    let $vA1 = A[iA == alen ? 0 : iA + 1];
    for (let iB = 0, blen = B.length - 1; iB <= blen; ++iB) {
      let $vB0 = B[iB];
      let $vB1 = B[iB == blen ? 0 : iB + 1];
      if (isLinesIntersect($vA0, $vA1, $vB0, $vB1)) {
        return false;
      }
    }
  }
  return isPointInsidePolygon(A[0], B);
}
