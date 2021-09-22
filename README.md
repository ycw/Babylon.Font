# About

Generate text mesh for babylonjs using WASM, written in AssemblyScript.

[Example](https://ycw.github.io/Babylon.Font/examples/bare/)

## Installation

With cdn

https://cdn.jsdelivr.net/gh/ycw/babylon.font@{VERSION}/build/babylon.font.js

or npm

```
npm i ycw/babylon.font
npm i ycw/babylon.font#{VERSION_TAG}
```

## Usage

```js
import * as BABYLON from "babylonjs"
import * as opentype from "opentype.js"
import earcut from "earcut"
import { Compiler, Font, TextMeshBuilder } from "babylon.font";

(async function() {
  
  const compiler = await Compiler.Build();
  const font = await Font.Install("a.ttf", compiler, opentype);
  const builder = new TextMeshBuilder(BABYLON, earcut);
  
  const scene = ..;
  const mesh = builder.create({ font, text: "foo" }, scene);
})();
```

# Docs

`Compiler`

```js
// construct a Compiler
await Compiler.Build();
```



---
`Font`

Load font from url

```js
await Font.Install(fontUrl, compiler, opentype);
// fontUrl:  font(.otf/.ttf) url
// compiler: a Compiler instance
// opentype: the 'opentype.js' lib
```

- `.measure(text, fontSize)` : measure text, return a Metrics{}

`Metrics` 

- `.advanceWidth`
- `.ascender`
- `.descender`


---
`TextMeshBuilder`

```js
// construct a builder
new TextMeshBuilder(BABYLON, earcut);
// BABYLON: the 'babylonjs' lib
// earcut: the 'earcut' lib
```

- `.create(options, scene)` : create extruded mesh.

Ex.

```js
builder.create({
  font, // Font instance
  text, // text
  size, // font size; default is 100
  ppc, // points per curve, [0, 255], default is 2
  eps, // decimation threshold, default is 0.001

  // plus `BABYLON.MeshBuilder.CreatePolygon` options
  depth, sideOrientation, faceColors,
  faceUV, backUVs, frontUVs, updatable 
}, scene);
```

# Thanks

[MaxGraey](https://github.com/MaxGraey) - Helps with AssemblyScript/WASM
optimizations

[OpentypeJS](https://github.com/opentypejs/opentype.js) - Read and write
OpenType fonts using JavaScript.

[Earcut](https://github.com/mapbox/earcut) - The fastest and smallest JavaScript
polygon triangulation library for your WebGL apps

[BabylonJS](https://github.com/BabylonJS/Babylon.js) - A powerful, beautiful,
simple, and open game and rendering engine packed into a friendly JavaScript
framework.

[AssemblyScript](https://github.com/AssemblyScript/assemblyscript) - Compiles a
strict subset of TypeScript (basically JavaScript with types) to WebAssembly
using Binaryen.

# License

[MIT](https://github.com/ycw/Babylon.Font/blob/master/LICENSE)
