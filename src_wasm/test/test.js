const fs = require('fs');
const path = require('path');
const { promisify } = require('util');
const opentype = require('opentype.js');
const asLoader = require('@assemblyscript/loader');
const testUtil = require('./util/index.js');

const wasmUrl = path.resolve(__dirname, '../build/untouched.wasm');
const fontUrl = path.resolve(__dirname, './font/notoserifdisplay-thin.ttf');

const imports = {

  env: {
    abort(_msg, _file, line, column) {
      console.error("abort called at index.ts:" + line + ":" + column);
    }
  },

  //
  // Debug utils (assembly/index.js)
  //

  index: {
    inspectPolygons(str, polygonsPtr) {
      let i = 0;
      const view = new Float64Array(wasm.memory.buffer);
      console.log(wasm.__getString(str));
      for (const polygonPtr of wasm.__getArray(polygonsPtr)) {
        console.log('---polygon---', i++)
        for (const vertexPtr of wasm.__getArray(polygonPtr)) {
          console.log(
            view[(vertexPtr >>> 3) + 0],
            view[(vertexPtr >>> 3) + 1]
          )
        }
      }
    },
    inspectNumber(str, value) {
      console.log(wasm.__getString(str), value);
    }
  }
};



(async function () {
  const file = await promisify(fs.readFile)(wasmUrl);
  const compiled = new WebAssembly.Module(file);
  const wasm = await asLoader.instantiate(compiled, imports);

  const otFont = await promisify(opentype.load)(fontUrl);

  {
    const ch = 'B';
    const ppc = 1;
    const eps = 0.003;

    const otPath = otFont.getPath(ch, 0, 0, 1);
    const otFontFmt = otFont.outlineFormat;

    // Test: load data into linear memory
    const bytesUsed = loadPathToLinearMemory(wasm, otPath);

    // Test: wasm exported API "compile" (it uses loaded data)
    const result = wasm.compile(bytesUsed, otFontFmt, ppc, eps);

    // Test: map result (in linear memory) to js object
    const shapes = map(wasm, result);

    // Test: shapes
    test(shapes);
  }

}());



function map(wasm, shapesPtr) {
  const shapes = [];
  const F64 = new Float64Array(wasm.memory.buffer);
  for (const shapePtr of wasm.__getArray(shapesPtr)) {
    const shape = { fill: undefined, holes: [] };
    shapes.push(shape);
    for (const polygonPtr of wasm.__getArray(shapePtr)) {
      let polygon = [];
      if (shape.fill === undefined) {
        shape.fill = polygon;
      } else {
        shape.holes.push(polygon);
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



function loadPathToLinearMemory(wasm, otPath) {
  const heap = wasm.memory.buffer;
  const view = new DataView(heap);
  const SZ = 8;
  let i = 0;
  let x = 0;
  let y = 0;

  for (const cmd of otPath.commands) {
    view.setUint8(i, cmd.type.codePointAt());
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



function test(shapes) {

  const shapesTester = new testUtil.ShapesTester(shapes);

  shapesTester.should('has 1 shape', (shapes) => {
    return shapes.length === 1;
  });

  shapesTester.should('at least 3 vertices in .fill polygon', (shapes) => {
    return shapes[0].fill.length >= 3;
  })

  
  shapesTester.should('has 2 holes in shape', (shapes) => {
    return shapes[0].holes.length === 2;
  });

  
  shapesTester.should('at least 3 vertices in holes[0] polygon', (shapes) => {
    return shapes[0].holes[0].length >= 3;
  });


  shapesTester.should('at least 3 vertices in holes[1] polygon', (shapes) => {
    return shapes[0].holes[1].length >= 3;
  });

  shapesTester.run();
  const shapeReporter = new testUtil.ShapesReporter();
  shapeReporter.report(shapesTester);
}