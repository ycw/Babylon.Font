const fs = require('fs');
const path = require('path');
const { promisify } = require('util');
const opentype = require('opentype.js');
const asLoader = require('@assemblyscript/loader');
const { test } = require('./tests.js');

const wasmUrl = path.resolve(__dirname, '../build/untouched.wasm');
const fontUrl = path.resolve(__dirname, './font/notoserifdisplay-thin.ttf');



//
// main
//

(async function () {
  const file = await promisify(fs.readFile)(wasmUrl);
  const compiled = new WebAssembly.Module(file);
  const wasm = await asLoader.instantiate(compiled, getImports());
  const font0 = await promisify(opentype.load)(fontUrl);

  test(wasm, { 
    font0,
    // .. add more fonts here ..
    // .. and write all tests in "tests.js" ..
  });
}());



//
// Instaniation imports
//

function getImports() {
  return {
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
  }
}