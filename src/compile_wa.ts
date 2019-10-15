import * as loader from '../src_wasm/node_modules/assemblyscript/lib/loader'



interface IPathCommand {
    type: string;
    x?: number;
    y?: number;
    x1?: number;
    y1?: number;
    x2?: number;
    y2?: number;
}



interface ICompileFn {
    (cmds:IPathCommand[], fmt: string, ppc?: number, eps?: number): Shape[];
}



interface MyAPI {
    memory: WebAssembly.Memory;
    compile (bytesUsed: number, fmt: string, ppc: number, eps: number): number;
}



export async function init(wasmUrl: string): Promise<ICompileFn> {
    const imports = {};
    const wasm = await loader.instantiateStreaming<MyAPI>(fetch(wasmUrl), imports);
    return function compile(cmds: IPathCommand[], fmt: string, ppc = 0, eps = 0) {
        ppc = Math.max(0, Math.min(255, Math.round(ppc)));
        eps = Math.abs(eps);
        const bytesUsed = load(wasm, cmds);
        const result = wasm.compile(bytesUsed, fmt, ppc, eps);
        return map(wasm, result);
    }
}



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
                arr = shape.fill = [];
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
