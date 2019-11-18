# About

#### Library

- Compile glyph to shapes using WebAssembly.
- Build mesh from shapes.

#### Tool

- [Gen](https://ycw.github.io/Babylon.Font/app/gen/)
  - Dump mesh geometry to json.
  - Screenshot to png.

# Usage

```html
<script src='babylon.js'></script>
<script src='earcut.js'></script>
<script src='opentype.js'></script>
<script src='babylon.font.js'></script>
<script>
(async function() {

  // Create BabylonJS environment
  const scene = ..;

  // Build compiler
  const compiler = await BF.Compiler.Build('compile_wa.wasm');

  // Install font(s)
  const font = await BF.Font.Install('a.ttf', compiler);

  // Build mesh for single character
  const fontSize = 1;
  const ppc = 0;
  const eps = 0;
  const shapes = Font.Compile(font, 'c', fontSize, ppc, eps);
  const depth = 1;
  const sideOrientation = BABYLON.Mesh.DOUBLESIDE;
  const mesh = Font.BuildMesh(shapes, { depth, sideOrientation }, scene);

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
  ppc,  // no. intermediate points used to interp. a bezier curve
  eps   // threshold of decimation (>1/1000 of font size)
);      //-> Array<Font.Shape>
```

### Font.BuildMesh

```js
const mesh = Font.BuildMesh(
  shapes, // Array<Font.Shape>
  option, // option of MeshBuilder.CreatePolygon() [optional]
  scene   // BABYLON.Scene{} [optional]
);        //-> BABYLON.Mesh
```

## Thanks

[Max Graey][T01] - Helps with AssemblyScript/WASM optimizations

[OpentypeJS][T02] - Read and write OpenType fonts using JavaScript.

[EarcutJS][T03] - The fastest and smallest JavaScript polygon triangulation library for your WebGL apps

[BabylonJS][T04] - A powerful, beautiful, simple, and open game and rendering engine packed into a friendly JavaScript framework.

[AssemblyScript][T05] - Compiles a strict subset of TypeScript (basically JavaScript with types) to WebAssembly using Binaryen.

[T01]:[//github.com/MaxGraey]
[T02]:[//github.com/opentypejs/opentype.js]
[T03]:[//github.com/mapbox/earcut]
[T04]:[//github.com/BabylonJS/Babylon.js]
[T05]:[//github.com/AssemblyScript/assemblyscript]
