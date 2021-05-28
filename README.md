# About

Create text mesh for BabylonJS using WebAssembly. ( here's a bare [example](https://ycw.github.io/Babylon.Font/examples/bare/) )

Plus, a handy tool to pre-generate glyph data in json/binary.
- [Web Application](https://ycw.github.io/Babylon.Font/app/gen/)
- [Documentation](https://github.com/ycw/Babylon.Font/tree/master/app/gen)



## Installation

`npm i ycw/babylon.font`

or via cdn 

https://cdn.jsdelivr.net/gh/ycw/babylon.font@{VERSION}/dist/babylon.font.js



## Usage

```js
import * as BABYLON from 'babylonjs'
import * as opentype from 'opentype.js'
import earcut from 'earcut'
import { Compiler, Font, TextMeshBuilder } from 'babylon.font';

(async function() {

  // Create BabylonJS environment
  const scene = ..;

  // Build compiler
  const compiler = await Compiler.Build('compiler.wasm');

  // Install font(s)
  const font = await Font.Install('a.ttf', compiler, opentype);

  // Create mesh
  const builder = new TextMeshBuilder(BABYLON, earcut);
  const mesh = builder.create({ font, text: 'foo' });

  // Measure
  const metrics = font.measure(font, 'bar', fontSize);
  metrics.advanceWidth;
  metrics.ascender;
  metrics.descender;

})();
```



# API

## Compiler

Build a compiler:

```js
const compiler = await Compiler.Build(
  wasmUrl   // compiler (.wasm) url
);          //-> Compiler{}
```

## Font

Install a font from url:

```js
const font = await Font.Install(
  fontUrl,    // font (.otf/.ttf) url
  compiler,   // Compiler{}
  opentype    // the opentype.js lib
);            //-> Font{}

font.raw;    // opentype.Font{}
```

Measure text:

```js
const metrics = font.measure(
  text,   // string
  size    // font size
);        //-> Font.Metrics{}

metrics.advanceWidth;
metrics.ascender;
metrics.descender;
```



## TextMeshBuilder

Build extruded mesh using TextMeshBuilder:

```js
const builder = new TextMeshBuilder(
  BABYLON, // the babylonjs lib ( only Mesh, MeshBuilder & Vector3 are needed ) 
  earcut // the earcut lib
);
const mesh = builder.create({
  font, // Font{}
  text, // string
  size, // font size, def=100
  ppc,  // points per curve, [0, 255], def=2
  eps,  // decimation threshold, def=0.001
  depth, // ( see babylonjs doc: `MeshBuilder.CreatePolygon()` option )
  sideOrientation, // ditto
  backUVs, // ditto
  faceColors, // ditto
  faceUV, // ditto
  frontUVs, // ditto
  updatable  // ditto
});
```



# Thanks

[MaxGraey](https://github.com/MaxGraey) - 
Helps with AssemblyScript/WASM optimizations

[OpentypeJS](https://github.com/opentypejs/opentype.js) - 
Read and write OpenType fonts using JavaScript.

[Earcut](https://github.com/mapbox/earcut) - 
The fastest and smallest JavaScript polygon triangulation library for your 
WebGL apps

[BabylonJS](https://github.com/BabylonJS/Babylon.js) - 
A powerful, beautiful, simple, and open game and rendering engine packed into a 
friendly JavaScript framework.

[AssemblyScript](https://github.com/AssemblyScript/assemblyscript) - 
Compiles a strict subset of TypeScript (basically JavaScript with types) to 
WebAssembly using Binaryen.



# License
[MIT](https://github.com/ycw/Babylon.Font/blob/master/LICENSE)