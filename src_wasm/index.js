const fs = require('fs');
const { promisify } = require('util');
const opentype = require('opentype.js');
const asLoader = require('assemblyscript/lib/loader');
// const compiled = new WebAssembly.Module(fs.readFileSync(__dirname + "/build/optimized.wasm"));
const imports = {
  env: {
    abort(_msg, _file, line, column) {
      console.error("abort called at index.ts:" + line + ":" + column);
    }
  },
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
// Object.defineProperty(module, "exports", {
//   get: () => new WebAssembly.Instance(compiled, imports).exports
// });

(async function () {
  const file = await promisify(fs.readFile)(__dirname + '/build/untouched.wasm');
  const compiled = new WebAssembly.Module(file);
  const wasm = await asLoader.instantiate(compiled, imports);

  globalThis.wasm = wasm;

  const fontUrl = '../font/notoserifdisplay-thin.ttf';
  const ch = 'B';
  const ppc = 0;
  const eps = 0.005;

  const otFont = await opentype.load(fontUrl);
  const otPath = otFont.getPath(ch, 0, 0, 1);
  const otFontFmt = otFont.outlineFormat;
  const bytesUsed = loadPathToLinearMemory(wasm, otPath);

  const result = wasm.compile(bytesUsed, otFontFmt, ppc, eps);
  const shapes = map(wasm, result);
  console.log(shapes);
}());



function map(wasm, shapesPtr) {
  const shapes = new Set();
  for (const shapePtr of wasm.__getArray(shapesPtr)) {
    const shape = { fill: undefined, holes: [] };
    shapes.add(shape);
    for (const polygonPtr of wasm.__getArray(shapePtr)) {
      let polygon;
      if (shape.fill === undefined) {
        polygon = shape.fill = [];
      } else {
        shape.holes.push(polygon = []);
      }
      for (const vertexPtr of wasm.__getArray(polygonPtr)) {
        polygon.push(wasm.__getArray(vertexPtr));
      }
    }
  }
  return shapes;
}


function loadPathToLinearMemory(wasm, otPath) {
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