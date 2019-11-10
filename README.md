# Babylon.Font

lib
- [Compile](#compile) glyph into shapes using WASM
- [Build](#char) extruded mesh 

tool
- [Dump][1] mesh geometry  

[1]: https://ycw.github.io/Babylon.Font/www/TextGen/



# Usage

```html
<script src='babylon.js'></script>
<script src='earcut.js'></script>
<script src='opentype.js'></script>
<script src='font.js'></script>
<script>
(async function() {

  // Create BabylonJS environment
  const scene = ..;
  
  // Install compiler
  const compiler = await Font.InstallCompiler('compile_wa.wasm');
  
  // Install font(s)
  const font = await Font.InstallFont('a.ttf', compiler); 

  // Create Char{}
  const char = font.char('B');

  // Generate mesh (wrapped in transform node)
  const node = char.node({ depth:1 }, scene);

})();
</script>
```
 


# Font 

Construct.

```js
const font = await Font.InstallFont('a.ttf', compiler);
```

Get underlying OpentypeJS Font instance.
- `font.otFont`

Compile font glyph into shapes
- `font.compile(..)` 
- see [Compile](#compile) 

Generate extruded mesh for single character 

- `font.char(..).node(..)` 
- see [Char](#char)





# Char

Construct.

```js
const char = font.char(
  ch,    // char
  sz,    // fontsize
  ppc,   // number of points used to interp a bezier curve
  eps    // threshold used to dedup nearby vertices, ~= 1/1000 of sz 
);
```

Then, generate mesh.

```js
const node = char.node(
  option,           // MeshBuilder.CreatePolygon() option 
  scene,            // scene that resulting node is adding to
  isPivotAtOrigin   // centers the mesh? default false
);                  // -> TransformNode{}
```
- The mesh is wrapped in a transform node
- For space characters, no mesh is generated, transform node is empty.
- `node.x` refers to embox left edge
- `node.z` refers to baseline
- If `isPivotAtOrigin` is set, the mesh is centered.    


Get layout properties. 

```js
char.advanceWidth     // width plus L & R bearings
char.ascender         // distance from top to baseline
char.descender        // distance from baseline to bottom; negative 
char.sTypoAscender    // distance from top to CJK_baseline 
char.sTypoDescender   // distance from CJK_baseline to bottom
```



# Compile

Compile glyph into shapes.

```js
const shapes = font.compile(
  ch,    // char
  sz,    // fontsize
  ppc,   // number of points used to interp a bezier curve
  eps    // threshold used to dedup nearby vertices, ~= 1/1000 of sz
);       // -> ShapeXZ[] 

// type ShapeXZ = {
//   fill  : Vector3[]     # on XZplane
//   holes : Vector3[][]   # on XZplane
// }
```
