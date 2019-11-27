# About

#### Library

- Compile glyph to shapes using WebAssembly.
- Build mesh from shapes.

#### Tool

- [Gen](https://ycw.github.io/Babylon.Font/app/gen/)
  - Dump mesh geometry to json.
  - Dump mesh geometry to binary.
  - Screenshot to png.
  - [more](https://ycw.github.io/Babylon.Font/app/gen/README.md) ...



# Usage

```html
<script src='babylon.js'></script>
<script src='earcut.js'></script>
<script src='opentype.js'></script>
<script type='module'>

import { Compiler, Font } from './babylon.font.mjs';

(async function() {

  // Create BabylonJS environment
  const scene = ..;

  // Build compiler
  const compiler = await Compiler.Build('compiler.wasm');

  // Install font(s)
  const font = await Font.Install('a.ttf', compiler);

  // Build mesh for single character
  const shapes = Font.Compile(font, 'c', ..); // see ### Font.Compile
  const mesh = Font.BuildMesh(shapes, ..); // see ### Font.BuildMesh

  // Measure a character
  const metrics = Font.Measure(font, 'c', fontSize);
  metrics.advanceWidth;
  metrics.ascender;
  metrics.descender;

})();

</script>
```



# API

## Compiler

### Compiler.Build

```js
const compiler = await Compiler.Build(
  wasmUrl   // compiler (.wasm) url
);          //-> Compiler{}
```

## Font

### Font.Install

```js
const font = await Font.Install(
  fontUrl,   // font (.otf/.ttf) url
  compiler   // Compiler{}
);           //-> Font{}

font.raw;    // opentype.Font{}
```

### Font.Measure

```js
const metrics = Font.Measure(
  font,   // Font{}
  name,   // char name, e.g. 'B'
  size    // font size
);        //-> Font.Metrics{}

metrics.advanceWidth;
metrics.ascender;
metrics.descender;
```

### Font.Compile

```js
const shapes = Font.Compile(
  font, // Font{}
  name, // char name, e.g. 'B'
  size, // font size
  ppc,  // no. of intermediate points used to interp. a bezier curve [0, 255]
  eps   // threshold of decimation, e.g. 0.001
);      //-> Array<Font.Shape>
```

### Font.BuildMesh

```js
const mesh = Font.BuildMesh(
  shapes, // Array<Font.Shape>
  option, // options(excludes shape & holes[]) of MeshBuilder.CreatePolygon()
  scene   // BABYLON.Scene{}
);        //-> BABYLON.Mesh
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