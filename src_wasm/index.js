//
// This file is to prove artifact (at build/untouched.wasm) created by
// `npm run asbuild:untouched` works at runtime.
//
// # Note
// It may pass `npm run asbuild` phase, but then fail at runtime due to
// 1. wrong data structure at "load path commands in linear memory" phase
// 2. wrong data structure at "map result in linear memory back to js object"
//
// # TODO
// 1. It seems that assemblyscript `load<T>()` must use little endian
//    for multibyte data like f64. So I have to set 3nd param of
//    `dataview.setFloat64(,,_)` to be `true` (?)
//

const fs = require('fs');
const { promisify } = require('util');
const opentype = require('opentype.js');
const asLoader = require('assemblyscript/lib/loader');
const imports = {
  //
  // ---- These are assemblyscript provided, keep ----
  //
  env: {
    abort(_msg, _file, line, column) {
      console.error("abort called at index.ts:" + line + ":" + column);
    }
  },

  //
  // ---- These are debug utils when I dev assembly/index.ts ----
  //
  index: {
    inspectPolygons(str, polygonsPtr) {
      let i = 0;
      console.log(wasm.__getString(str));
      for (const polygonPtr of wasm.__getArray(polygonsPtr)) {
        console.log('---polygon---', i++)
        for (const vertexPtr of wasm.__getArray(polygonPtr)) {
          console.log(wasm.__getArray(vertexPtr));
        }
      }
    },
    inspectNumber(str, value) {
      console.log(wasm.__getString(str), value);
    }
  }
};



//
// ---- These are provided by assemblyscript, keep ----
//
// const compiled = new WebAssembly.Module(fs.readFileSync(__dirname + "/build/optimized.wasm"));
// Object.defineProperty(module, "exports", {
//   get: () => new WebAssembly.Instance(compiled, imports).exports
// });



(async function () {
  const file = await promisify(fs.readFile)(__dirname + '/build/untouched.wasm');
  const compiled = new WebAssembly.Module(file);
  const wasm = await asLoader.instantiate(compiled, imports);

  globalThis.wasm = wasm;

  const fontUrl = '../testbed/font/notoserifdisplay-thin.ttf';
  const ch = 'B';
  const ppc = 0;
  const eps = 0.005;

  const otFont = await opentype.load(fontUrl);
  const otPath = otFont.getPath(ch, 0, 0, 1);
  const otFontFmt = otFont.outlineFormat;

  // Test: load data into linear memory
  const bytesUsed = loadPathToLinearMemory(otPath);

  // Test: wasm exported API "compile" (it uses loaded data)
  const result = wasm.compile(bytesUsed, otFontFmt, ppc, eps);

  // Test: map result (in linear memory) to js object
  const shapes = map(result);

  // Should print a Set of Shape
  console.log(shapes);

  // If pass, it is safe to run `npm run asbuild:dist`
  // which will generate optimized outputs in two places
  // 1. /dist
  // 2. /testbed
}());



function map(shapesPtr) {
  const shapes = new Set();
  const F64 = new Float64Array(wasm.memory.buffer);
  for (const shapePtr of wasm.__getArray(shapesPtr)) {
    const shape = { fill: undefined, holes: new Set() };
    shapes.add(shape);
    for (const polygonPtr of wasm.__getArray(shapePtr)) {
      let polygon = [];
      if (shape.fill === undefined) {
        shape.fill = [];
      } else {
        shape.holes.add(polygon);
      }
      for (const vertexPtr of wasm.__getArray(polygonPtr)) {
        polygon.push([
          F64[(vertexPtr >>> 3) + 0], // x
          F64[(vertexPtr >>> 3) + 1]  // y
        ]);
      }
    }
  }
  return shapes;
}



function loadPathToLinearMemory(otPath) {
  const heap = wasm.memory.buffer;
  const view = new DataView(heap);
  const SZ = 8;
  let i = 0;
  let x = 0;
  let y = 0;

  for (const cmd of otPath.commands) {
    view.setUint8(i, cmd.type.codePointAt());
    // console.log(cmd.type.codePointAt(), cmd.type)
    i += 1;
    if (cmd.type == 'M' || cmd.type == 'L') {
      view.setFloat64(i, cmd.x, true);
      i += SZ;
      view.setFloat64(i, cmd.y, true);
      i += SZ;
      x = cmd.x;
      y = cmd.y;
      continue;
    }
    if (cmd.type == 'Q') {
      view.setFloat64(i, x, true);
      i += SZ;
      view.setFloat64(i, y, true);
      i += SZ;
      view.setFloat64(i, cmd.x1, true);
      i += SZ;
      view.setFloat64(i, cmd.y1, true);
      i += SZ;
      view.setFloat64(i, cmd.x, true);
      i += SZ;
      view.setFloat64(i, cmd.y, true);
      i += SZ;
      x = cmd.x;
      y = cmd.y;
      continue;
    }
    if (cmd.type == 'C') {
      view.setFloat64(i, x, true);
      i += SZ;
      view.setFloat64(i, y, true);
      i += SZ;
      view.setFloat64(i, cmd.x1, true);
      i += SZ;
      view.setFloat64(i, cmd.y1, true);
      i += SZ;
      view.setFloat64(i, cmd.x2, true);
      i += SZ;
      view.setFloat64(i, cmd.y2, true);
      i += SZ;
      view.setFloat64(i, cmd.x, true);
      i += SZ;
      view.setFloat64(i, cmd.y, true);
      i += SZ;
      x = cmd.x;
      y = cmd.y;
      continue;
    }
    // 'Z' .. noop
  }
  return i;
}
