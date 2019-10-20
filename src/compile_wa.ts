import * as loader from '../src_wasm/node_modules/assemblyscript/lib/loader'

//
// Opentypejs PathCommand interface
//

export interface IPathCommand {
    type: string;
    x?: number;
    y?: number;
    x1?: number;
    y1?: number;
    x2?: number;
    y2?: number;
}

//
// Compile function signature
//

export interface ICompileFn {
    (cmds: IPathCommand[], fmt: string, ppc?: number, eps?: number): Shape[];
}

//
// Union of assemblyscript loader API & 
//   exported "func"s of my ".wasm"
//

interface MyAPI {
    memory: WebAssembly.Memory;
    compile(bytesUsed: number, fmt: string, ppc: number, eps: number): number;
}

//
// Public API
//

export async function init(wasmUrl: string): Promise<ICompileFn> {
    
    //
    // Imports of instantiate
    //

    const imports = {
        env: {
            abort(_msg, _file, line, column) {
                console.error("abort called at assembly/index.ts:" + line + ":" + column);
            },
        },
    };

    //
    // Instantiate
    // https://caniuse.com/#search=instantiateStreaming
    //

    let wasm: loader.ASUtil & MyAPI;
    if (typeof (WebAssembly as any).instantiateStreaming !== "undefined") {
      wasm = await loader.instantiateStreaming<MyAPI>(fetch(wasmUrl), imports);
    } 
    else {
      const response = await fetch(wasmUrl);
      const buffer = await response.arrayBuffer();
      wasm = await loader.instantiateBuffer<MyAPI>(buffer, imports);
    }

    //
    // Return a fn implemented ICompileFn
    // Throws, from load(), if setFloat64() to addr exceeding "--memoryBase"
    //

    return function compile(cmds: IPathCommand[], fmt: string, ppc = 0, eps = 0) {
        ppc = Math.max(0, Math.min(255, Math.round(ppc)));
        eps = Math.abs(eps);
        const bytesUsed = load(wasm, cmds);
        const result = wasm.compile(bytesUsed, fmt, ppc, eps);
        return map(wasm, result);
    }
}

// ----
// Internal
// ----

//
// Load IPathCommand[] in linear memory
// Will not check memory access; May throw.
//

function load(wasm: loader.ASUtil & MyAPI, cmds: IPathCommand[]) {

    const heap = wasm.memory.buffer;
    const view = new DataView(heap);
    const SZ = 8;

    let i = 0;
    let x = 0;
    let y = 0;

    const M = 'M'.codePointAt(0);
    const L = 'L'.codePointAt(0);
    const Q = 'Q'.codePointAt(0);
    const C = 'C'.codePointAt(0);

    for (const cmd of cmds) {
        let code = cmd.type.codePointAt(0);
        view.setUint8(i, code);
        i++;

        switch (code) {
            case M:
            case L:
                view.setFloat64(i, cmd.x, true);
                i += SZ;
                view.setFloat64(i, cmd.y, true);
                i += SZ;
                x = cmd.x;
                y = cmd.y;
                break;
            case Q:
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
                break;
            case C:
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
                break;
        }
        // 'Z' .. noop
    }
    return i;
}

//
// Map result from linear memory to js object
//

export type Vertex = [number, number];
export type Polygon = Vertex[];
export type Shape = {
    fill: Polygon;
    holes: Polygon[];
};

function map(wasm: loader.ASUtil & MyAPI, shapesPtr: number) {
    const F64 = new Float64Array(wasm.memory.buffer);
    const shapesIn = wasm.__getUint32Array(shapesPtr);
    const shapesOut = new Array<Shape>(shapesIn.length);
    for (let i = 0; i < shapesIn.length; i++) {
        const shape: Shape = { fill: [], holes: [] };
        const polygons = wasm.__getUint32Array(shapesIn[i]);
        for (const polygonPtr of polygons) {
            const vertices = wasm.__getUint32Array(polygonPtr);
            let arr: Polygon;
            if (shape.fill.length === 0) {
                arr = shape.fill;
            } else {
                shape.holes.push(arr = []);
            }
            for (const vertexPtr of vertices) {
                arr.push([
                    F64[(vertexPtr >>> 3) + 0], // x
                    F64[(vertexPtr >>> 3) + 1]  // y
                ]);
            }
        }
        shapesOut[i] = shape;
    }
    return shapesOut;
}
