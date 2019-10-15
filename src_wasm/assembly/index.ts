//
// Compile opentypejs.PathCommand into shapes data 
// which is ready to map to library dependent struct 
// e.g. `BABYLON.Vector3(x, 0, -y)` 
//

// # Sample Output
// (Array of shapes) 
// [
//   [ fill, hole, hole ]  # "fill" has 2 "holes" inside
//   [ fill ]              # "fill" has 0 "holes"
// ] 
// where
//   fill = [[x, y], [x, y], ...]
//   hole = ditto

// # Note
// + Memory Base occupies 16384 bytes 
//   roughly contain 250 "flatten" PathCommands for 'C' 

// # Flatten PathCommands in Linear Memory Structure
// | Command | Structure
// |---------|---------- 
// | M       | u8, f64, f64
// | L       | u8, f64, f64
// | Q       | u8, f64, f64, f64, f64, f64, f64
// | C       | u8, f64, f64, f64, f64, f64, f64, f64, f64
// | Z       | u8


type Vertex = Array<f64>;
type Polygon = Array<Vertex>;
type Result = Array<Array<Polygon>>;

const SZ = 8; // f64 sz in byte
const TINYSTEP = 0.001; // see `pickAPoint()`



//
// "bring-in" fns (just some debug utilities) 
// Pipe wasm stuff to js console
// Comment out when build
//

// export declare function inspectPolygons(msg: string, x: Array<Polygon>): void;
// export declare function inspectNumber(msg: string, x: number): void;



//
// Compile loadedIn opentype PathCommand data (already in memory base sector) 
// {bytesUsed} flatten commands bytes used (must < --memoryBase value)
// {fmt} outlineFormat; 1:'cff' non1:'truetype'
// {ppc} pointPerCurve; 0~255
// {eps} dedupEpsilon; ideal values 0.001, 0.002, ...
//

export function compile(bytesUsed: usize, fmt: u8, ppc: u8, eps: f64): Result {

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
      polygons[iP] = [[x, y]];
      continue;
    }
    if (cmd == 76) { // L
      x = load<f64>(i);
      i += SZ;
      y = load<f64>(i);
      i += SZ;
      polygons[iP].push([x, y]);
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
        [x0, y0],
        [x1, y1],
        [x, y],
        ppc
      );
      for (let k = 1; k < vs.length; ++k) {
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
        [x0, y0],
        [x1, y1],
        [x2, y2],
        [x, y],
        ppc
      );
      for (let k = 1; k < vs.length; ++k) {
        polygons[iP].push(vs[k]);
      }
      continue;
    }
    if (cmd == 90) { // 'Z'
      polygons[iP] = dedup(polygons[iP], eps);
      iP += 1;
      continue;
    }
  }

  //
  // Determine fill/hole
  // cff : oddeven (cw+1, ccw-1)
  //

  const fills: Array<Polygon> = [];
  const holes: Array<Polygon> = [];
  let polygon: Polygon;
  {
    for (let i = 0; i < polygons.length; ++i) {
      polygon = polygons[i];
      let isHole: bool;
      if (fmt == 1) { // cff
        isHole = isHole_oddeven(polygon, polygons);
      }
      else { // truetype or unknown
        isHole = isHole_nonzero(polygon, polygons);
      }
      if (isHole) {
        holes.push(polygon);
      }
      else {
        fills.push(polygon);
      }
    }
  }

  // inspectPolygons('polygons', polygons);
  // inspectPolygons('filles', fills);
  // inspectPolygons('holes', holes);
  // inspectNumber('polygon count', polygons.length);

  const result: Array<Array<Polygon>> = [];
  linkUp(fills, holes, result);
  return result;
}


//
// Linkup
//

function linkUp(
  fills: Array<Polygon>,
  holes: Array<Polygon>,
  result: Array<Array<Polygon>>
): Result {
  let hole: Polygon;
  let fill: Polygon;
  for (let i = 0; i < fills.length; ++i) {
    fill = fills[i];
    const $hs: Array<Polygon> = []; // hole stash
    for (let j = 0; j < holes.length; ++j) {
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
          $hs.splice($hs.indexOf($h), 1);
          // Dont shortcurcuit; holes in stach
          // maybe also inside current testing hole.
        }
      }
      if (!isInside) {
        $hs.push(hole);
      }
    }
    let shape: Array<Polygon> = [fill];
    for (let i = 0; i < $hs.length; ++i) {
      shape.push($hs[i]);
    }
    result.push(shape);
  }
  return result;
}



//
// Dedup nearby vertices
//

function dedup(
  vs: Polygon,
  eps: f64
): Polygon {
  const result: Polygon = [
    vs[0]
  ];
  let $len: usize;
  if (isVertexEqual(vs[vs.length - 1], vs[0], eps)) {
    $len = vs.length - 1;
  }
  else {
    $len = vs.length;
  }
  let i = usize(1);
  let $v: Vertex;
  let $1 = vs[0];
  while (i < $len) {
    $v = vs[i];
    if (!isVertexEqual($v, $1, eps)) {
      result.push($v);
      $1 = $v;
    }
    ++i;
  }
  return result;
}



//
// Is vertex0 equals(closeto) vertex1
//

function isVertexEqual(p0: Vertex, p1: Vertex, eps: f64): bool {
  return p0[0] == p1[0] && p0[1] == p1[1] // fast check
    || (p0[0] - p1[0]) ** 2 + (p0[1] - p1[1]) ** 2 <= eps ** 2;
}



//
// Interpolate 'Q' command
// 

function interpQ(
  p0: Vertex,
  p1: Vertex,
  p2: Vertex,
  n: u8
): Array<Vertex> {
  const result: Array<Vertex> = [];
  let $0 = NaN;
  let $1 = NaN;
  let $2 = NaN;
  let $$ = NaN;
  let t: f64 = 0;
  let i: u8 = 0;
  for (; i < n; ++i) {
    t = f64(f64(i) / (n - 1.0));
    $0 = ($$ = 1.0 - t) ** 2.0;
    $1 = 2.0 * $$ * t;
    $2 = t ** 2.0;
    result.push([
      f64($0 * p0[0] + $1 * p1[0] + $2 * p2[0]),
      f64($0 * p0[1] + $1 * p1[1] + $2 * p2[1])
    ]);
  }
  return result;
}



//
// Interpolate 'C' command
//

function interpC(p0: Vertex, p1: Vertex, p2: Vertex, p3: Vertex, n: u8): Array<Vertex> {
  const result: Array<Vertex> = [];
  let $0 = NaN;
  let $1 = NaN;
  let $2 = NaN;
  let $3 = NaN;
  let $4 = NaN;
  let $5 = NaN;
  let $6 = NaN;
  let i: u8 = 0;
  let t: f64 = 0;
  for (; i < n; ++i) {
    t = f64(f64(i) / (n - 1.0));
    $0 = 1.0 - t;
    $1 = $0 ** 2;             // (1-t) ^2
    $2 = $1 * $0;             // (1-t) ^3 ... coeff#0
    $3 = t ** 2.0;            // t ^2
    $4 = $3 * t;              // t ^3      .. coeff#3
    $5 = 3.0 * $1 * t;        //          ... coeff#1
    $6 = 3.0 * $0 * $3;       //          ... coeff#2
    result.push([
      f64($2 * p0[0] + $5 * p1[0] + $6 * p2[0] + $4 * p3[0]),
      f64($2 * p0[1] + $5 * p1[1] + $6 * p2[1] + $4 * p3[1])
    ]);
  }
  return result;
}



//
// Detect hole; by oddeven fillrule (even=hole) 
// (cff outline)
//

function isHole_oddeven(target: Polygon, polygons: Polygon[]): bool {
  const p0 = pickAPoint(target);
  const $p1: Vertex = [100, p0[1]];
  let c = 0;
  let $polygon: Polygon;
  let $v0: Vertex;
  let $v1: Vertex;
  for (let i = 0; i < polygons.length; ++i) {
    $polygon = polygons[i];
    for (let j = 0; j < $polygon.length; ++j) {
      $v0 = $polygon[j];
      $v1 = $polygon[j == $polygon.length - 1 ? 0 : j + 1];
      if (isLinesIntersect(p0, $p1, $v0, $v1)) {
        ++c;
      }
    }
  }
  return c % 2 === 0;
}



//
// Detect hole; by nonzero fillrule (0=hole)
// (truetype outline)
//

function isHole_nonzero(
  target: Polygon,
  polygons: Array<Polygon>
): bool {
  const p0: Vertex = pickAPoint(target);
  const $p1: Vertex = [100, p0[1]];
  let $v1: Vertex;
  let $v0: Vertex;
  let c = 0;
  let $polygon: Polygon;
  for (let i = 0; i < polygons.length; ++i) {
    $polygon = polygons[i];
    for (let j = 0; j < $polygon.length; ++j) {
      $v0 = $polygon[j];
      $v1 = $polygon[j == $polygon.length - 1 ? 0 : j + 1];
      if (isLinesIntersect(p0, $p1, $v0, $v1)) {
        c += windingOfTwoLines(p0, $v0, $v1);
      }
    }
  }
  return c % 2 === 0;
}



//
// Pick a point in polygon
//

function pickAPoint(
  vs: Polygon
): Vertex {
  let max = vs[0][0];
  let i = 0;
  let j = 1;
  let $len = vs.length;
  let $v: Vertex = vs[0];
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
  // $1: (next-curr)/|next-curr| * epsilon + curr -> tinystep from curr to next
  // $2: (prev-curr)/|prev-curr| * epsilon + curr -> tinystep from curr to prev 
  // then ($1 + $2 + curr)/3 ~= tri centroid 
  const $1 = tinystep(curr, next, TINYSTEP);
  const $2 = tinystep(curr, prev, TINYSTEP);
  return [
    ($1[0] + $2[0] + curr[0]) / 3,
    ($1[1] + $2[1] + curr[1]) / 3
  ];
}



//
// Find a point from v0 to v1 && very close-to v0 
//

function tinystep(
  v0: Vertex,
  v1: Vertex,
  e: f64
): Vertex {
  const d = ((v1[1] - v0[1]) ** 2 + (v1[0] - v0[0]) ** 2) ** 0.5;
  return [
    f64((v1[0] - v0[0]) / d * e + v0[0]),
    f64((v1[1] - v0[1]) / d * e + v0[1])
  ];
}



//
// is Line A intersects Line B
//

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
// Winding from ab to ac
//

function windingOfTwoLines(
  a: Vertex,
  b: Vertex,
  c: Vertex
): i32 {
  // (b - a) cross (c - a)
  // ^^$1^^^       ^^$2^^^
  // const $1x = b[0] - a[0];
  // const $1y = b[1] - a[1];
  // const $2x = c[0] - a[0];
  // const $2y = c[1] - a[1];
  // cross
  // return $1x * $2y - $1y * $2x < 0 ? -1 : +1;
  return (b[0] - a[0]) * (c[1] - a[1]) - (b[1] - a[1]) * (c[0] - a[0]) < 0 ? -1 : 1;
}



//
// Is point inside polygon 
//

function isPointInsidePolygon(
  p: Vertex,
  vs: Polygon
): bool {
  const $p1: Vertex = [100, p[1]];
  let c = 0; // nonzero winding rule count
  let $v1: Vertex;
  let $v0: Vertex;
  for (let i = 0; i < vs.length; ++i) {
    $v0 = vs[i];
    $v1 = vs[i == vs.length - 1 ? 0 : i + 1];
    if (isLinesIntersect(p, $p1, $v0, $v1)) {
      c += windingOfTwoLines(p, $v0, $v1);
    }
  }
  return c % 2 != 0; // nonzero = inside 
}



//
// BBox of polygon
//

function boundingBoxOf(polygon: Polygon): Array<f64> {
  let xMin = Infinity;
  let yMin = Infinity;
  let xMax = -Infinity;
  let yMax = -Infinity;
  let $v: Vertex;
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
// Is polygon A inside polygon B
// (for testing is "hole" in "fill", is "hole" in "hole") 
//

function isPolygonInsidePolygon(
  A: Polygon,
  B: Polygon
): bool {
  //
  // ------ boundingbox fast check
  //
  let bboxA = boundingBoxOf(A);
  let bboxB = boundingBoxOf(B);
  if (bboxA[0] < bboxB[0] && bboxA[2] < bboxB[0]
    || bboxA[0] > bboxB[2] && bboxA[2] > bboxB[2]
    || bboxA[1] < bboxB[1] && bboxA[3] < bboxB[1]
    || bboxA[1] > bboxB[3] && bboxA[3] > bboxB[3]
  ) {
    return false;
  }

  //
  // true if A is not touching B && A has a point inside B
  //

  for (let iA = 0; iA < A.length; ++iA) {
    let $vA0 = A[iA];
    let $vA1 = A[iA == A.length - 1 ? 0 : iA + 1];
    for (let iB = 0; iB < B.length; ++iB) {
      let $vB0 = B[iB];
      let $vB1 = B[iB == B.length - 1 ? 0 : iB + 1];
      if (isLinesIntersect($vA0, $vA1, $vB0, $vB1)) {
        return false;
      }
    }
  }
  return isPointInsidePolygon(A[0], B);
}




