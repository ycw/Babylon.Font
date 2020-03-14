# About

- Drop .otf/.ttf to load new font
- Configure and preview resulting mesh in real-time
- Dump geometry and layout properties to .json or .bin
  - [Structure of .json](#json-structure)
  - [Create mesh from .json](#mesh-creation)
  - [Deserialize .bin](#binary-deserialization)
- Make a thumbnail
- [Try it online](https://ycw.github.io/Babylon.Font/app/gen/)



# JSON Structure 

```ts
type json = { 
    ascender: number;
    descender: number;
    chars: char[];
}

type char = {
    name: string;
    advanceWidth: number;
    data: null | { 
        positions: number[];
        indices: number[];
        uvs: number[];
        normals: number[];
    };
}
```



# Mesh Creation

```js
(async function () {

    const r = await fetch('./a.json');
    const json = await r.json();

    // E.g. generate a mesh for first char

    const { data } = json.chars[0];

    const vertexData = new VertexData();
    vertexData.positions = data.positions;
    vertexData.normals = data.normals;
    vertexData.uvs = data.uvs;
    vertexData.indices = data.indices;

    const mesh = new Mesh('');
    vertexData.applyToMesh(mesh);

    // Done.
}());
```

For space characters, `data` is **usually** `null`. This depends on font, e.g. a font is missing glyph of '&#x2003;' (EM SPACE), then `data` of em space char refers to [replacement glyph](http://unicode.org/glossary/#replacement_glyph). 

```ts
char.name;          // ' '
char.data != null;  // true
```



# Binary Deserialization

Binary Deserializer 
- [/app/gen/dist/bin.de.mjs](https://github.com/ycw/Babylon.Font/blob/master/app/gen/dist/)

Usage

```js
import { deserialize } from './bin.de.mjs' 

(async function () {

    const r = await fetch('a.bin');
    const ab = await r.arrayBuffer();
    const json = deserialize(ab);
    
    // Structure of `json` ... see ## JSON structure
    // Create mesh using `json` ... see ## Mesh Creation
})();
```