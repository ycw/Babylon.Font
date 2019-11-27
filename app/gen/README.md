# About

- Drop .otf/.ttf to load new font
- Config font and preview resulting mesh in real-time
- Dump geometry and layout props to .json or .bin
- Make a thumbnail



# Serde

- [dist](https://github.com/ycw/Babylon.Font/blob/master/app/gen/dist/)
- [struct](https://github.com/ycw/Babylon.Font/blob/master/app/gen/src/struct.txt)



## Usage

```js
import { deserialize } from './bin.de.mjs'

(async function () {

    const r = await fetch('a.bin');
    const ab = await r.arrayBuffer();
    const json = deserialize(ab);

    //..
})();
```