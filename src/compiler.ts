import * as loader from '@assemblyscript/loader'

//
// Opentypejs PathCommand interface
//

type PathCommand =
  | { type: 'M' | 'L', x: number, y: number }
  | { type: 'Q', x: number, y: number, x1: number, y1: number }
  | { type: 'C', x: number, y: number, x1: number, y1: number, x2: number, y2: number }
  | { type: 'Z' }

//
// API
//

type Header = {
  MEMORY_BASE: { value: number };
  compile(bytesUsed: number, fmt: string, ppc: number, eps: number): number;
};
type Wasm = loader.ResultObject & {
  exports: loader.ASUtil & Header
};

//
// Shape - Compiled result
//

export type Vertex = [number, number];
export type Polygon = Vertex[];
export type Shape = {
  fill: Polygon;
  holes: Polygon[];
};

//
// Compiler
//

export class Compiler {

  constructor(
    private wasm: Wasm
  ) { }

  static async Build(wasmUrl?: string) {
    wasmUrl ??= new URL('optimized.wasm', import.meta.url).toString();

    const imports = {
      // env: {
      //   abort(_msg, _file, line, column) {
      //     console.error("abort called at" + line + ":" + column);
      //   },
      // },
    };

    const wasm = await loader.instantiate<Header>(fetch(wasmUrl), imports);
    return new Compiler(wasm);
  }

  //
  // Encode OpentypeJS IPathCommand[] into {this.wasm.exports.memory}
  //

  encode(cmds: PathCommand[]) {

    const view = new DataView(this.wasm.exports.memory!.buffer);

    let i = 0;
    let x = 0;
    let y = 0;

    for (const cmd of cmds) {
      let code = cmd.type.codePointAt(0) as number;
      view.setUint8(i, code);
      i++;

      switch (cmd.type) {
        case 'M':
        case 'L':
          view.setFloat64(i, cmd.x, true);
          i += 8;
          view.setFloat64(i, cmd.y, true);
          i += 8;
          x = cmd.x;
          y = cmd.y;
          break;
        case 'Q':
          view.setFloat64(i, x, true);
          i += 8;
          view.setFloat64(i, y, true);
          i += 8;
          view.setFloat64(i, cmd.x1, true);
          i += 8;
          view.setFloat64(i, cmd.y1, true);
          i += 8;
          view.setFloat64(i, cmd.x, true);
          i += 8;
          view.setFloat64(i, cmd.y, true);
          i += 8;
          x = cmd.x;
          y = cmd.y;
          break;
        case 'C':
          view.setFloat64(i, x, true);
          i += 8;
          view.setFloat64(i, y, true);
          i += 8;
          view.setFloat64(i, cmd.x1, true);
          i += 8;
          view.setFloat64(i, cmd.y1, true);
          i += 8;
          view.setFloat64(i, cmd.x2, true);
          i += 8;
          view.setFloat64(i, cmd.y2, true);
          i += 8;
          view.setFloat64(i, cmd.x, true);
          i += 8;
          view.setFloat64(i, cmd.y, true);
          i += 8;
          x = cmd.x;
          y = cmd.y;
          break;
      }
    }

    return i;
  }

  //
  // Compile
  //

  compile(cmds: PathCommand[], fmt: string, ppc: number, eps: number) {
    const bytesRequired = this.bytesRequired(cmds);
    const bytesMax = this.wasm.exports.MEMORY_BASE.value; 
    if (bytesRequired > bytesMax) {
      console.warn(`wasm out of mem: ${bytesRequired} > ${bytesMax}`);
      return null;
    }

    const bytesUsed = this.encode(cmds);

    ppc = Math.max(0, Math.min(255, Math.round(ppc)));
    eps = Math.abs(eps);

    const shapesPtr = this.wasm.exports.compile(bytesUsed, fmt, ppc, eps);

    //
    // Map to JS Objects
    //

    const F64 = new Float64Array(this.wasm.exports.memory!.buffer);
    const shapesIn = this.wasm.exports.__getUint32Array(shapesPtr);
    const shapesOut: Shape[] = [];
    for (let i = 0; i < shapesIn.length; i++) {
      const shape: Shape = { fill: [], holes: [] };
      if (shapesIn[i] === 0) break;
      const polygons = this.wasm.exports.__getUint32Array(shapesIn[i]);
      for (const polygonPtr of polygons) {
        if (polygonPtr === 0) break;
        const vertices = this.wasm.exports.__getUint32Array(polygonPtr);
        let arr: Polygon;
        if (shape.fill.length === 0) {
          arr = shape.fill;
        } else {
          shape.holes.push(arr = []);
        }
        for (const vertexPtr of vertices) {
          if (vertexPtr === 0) break;
          arr.push([
            F64[(vertexPtr >>> 3)], // x
            F64[(vertexPtr >>> 3) + 1]  // y
          ]);
        }
      }
      shapesOut.push(shape);
    }
    return shapesOut;
  }

  //
  // Bytes required for encoded cmds
  // 

  private bytesRequired(cmds: PathCommand[]) {
    let b = 0
    for (const cmd of cmds) {
      switch (cmd.type) {
        case 'M':
        case 'L': b += 17; break;
        case 'Q': b += 49; break;
        case 'C': b += 65; break;
        case 'Z': b += 1; break;
      }
    }
    return b
  }
}
