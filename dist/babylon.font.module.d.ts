declare module "compiler" {
    import * as loader from '@assemblyscript/loader';
    interface IPathCommand {
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
    type Vertex = [number, number];
    type Polygon = Vertex[];
    export type Shape = {
        fill: Polygon;
        holes: Polygon[];
    };
    export class Compiler {
        private wasm;
        constructor(wasm: loader.ASUtil & MyAPI);
        static Build(wasmUrl: string): Promise<Compiler>;
        encode(cmds: IPathCommand[], buffer: ArrayBuffer): number;
        compileEncoded(buffer: ArrayBuffer, bytesUsed: number, fmt: string, ppc: number, eps: number): Shape[];
        compile(cmds: IPathCommand[], fmt: string, ppc: number, eps: number): Shape[];
    }
}
declare module "font" {
    import * as opentype from 'opentype.js';
    import * as BABYLON from 'babylonjs';
    import { Compiler } from "compiler";
    type Shape = {
        fill: BABYLON.Vector3[];
        holes: BABYLON.Vector3[][];
    };
    type PolygonMeshOption = {
        backUVs?: BABYLON.Vector4;
        depth?: number;
        faceColors?: BABYLON.Color4[];
        faceUV?: BABYLON.Vector4[];
        frontUVs?: BABYLON.Vector4;
        sideOrientation?: number;
        updatable?: boolean;
    };
    export class Font {
        raw: opentype.Font;
        private compiler;
        constructor(raw: opentype.Font, compiler: Compiler);
        static Install(fontUrl: string, compiler: Compiler): Promise<Font>;
        static Measure(font: Font, name: string, size: number): Metrics;
        static Compile(font: Font, name: string, size: number, ppc: number, eps: number): Shape[];
        static BuildMesh(shapes: Shape[], option?: PolygonMeshOption, scene?: BABYLON.Scene): BABYLON.Mesh;
    }
    export class Metrics {
        private font;
        private name;
        private size;
        constructor(font: Font, name: string, size: number);
        get ascender(): number;
        get descender(): number;
        get advanceWidth(): number;
    }
}
declare module "babylon.font" {
    export { Compiler } from "compiler";
    export { Font } from "font";
}
