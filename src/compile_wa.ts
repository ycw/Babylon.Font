import * as loader from 'assemblyscript/lib/loader'



interface PathCommand {
    type: string;
    x?: number;
    y?: number;
    x1?: number;
    y1?: number;
    x2?: number;
    y2?: number;
}



interface MyAPI {
    memory: WebAssembly.Memory;
    compile(bytesUsed: number, fmt: string, ppc: number, eps: number): number;
}



export async function init(wasmUrl:string) {
    const imports = {};
    const wasm = await loader.instantiateStreaming<MyAPI>(fetch(wasmUrl), imports);
    return function compile(cmds: PathCommand[], fmt: string, ppc = 0, eps = 0) {
        const bytesUsed = load(wasm, cmds);
        const result = wasm.compile(bytesUsed, fmt, ppc, eps);
        return map(wasm, result);
    }
}



function load(wasm: loader.ASUtil & MyAPI, cmds: PathCommand[]) {

    const heap = wasm.memory.buffer;
    const view = new DataView(heap);
    const SZ = 8;

    let i = 0;
    let x = 0;
    let y = 0;

    for (const cmd of cmds) {
        view.setUint8(i, cmd.type.codePointAt(0));
        // console.log(cmd.type.codePointAt(), cmd.type)
        i += 1;
        if (cmd.type == 'M' || cmd.type == 'L') {
            view.setFloat64(i, cmd.x, true);
            i += SZ;
            view.setFloat64(i, cmd.y, true);
            i += SZ;
            x = cmd.x;
            y = cmd.y;
            continue;
        }
        if (cmd.type == 'Q') {
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
            continue;
        }
        if (cmd.type == 'C') {
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
            continue;
        }
        // 'Z' .. noop
    }
    return i;
}



function map(wasm: loader.ASUtil & MyAPI, shapesPtr: number) {
    const shapes = new Set();
    for (const shapePtr of wasm.__getArray(shapesPtr)) {
        const shape = { fill: undefined, holes: new Set() };
        for (const polygonPtr of wasm.__getArray(shapePtr)) {
            let arr;
            if (shape.fill === undefined) {
                arr = shape.fill = [];
            } 
            else {
                shape.holes.add(arr = []);
            }
            for (const vertexPtr of wasm.__getArray(polygonPtr)) {
                arr.push(wasm.__getArray(vertexPtr));
            }
        }
        shapes.add(shape);
    }
    return shapes;
}