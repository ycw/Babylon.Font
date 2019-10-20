declare module "compile_wa" {
    export interface IPathCommand {
        type: string;
        x?: number;
        y?: number;
        x1?: number;
        y1?: number;
        x2?: number;
        y2?: number;
    }
    export interface ICompileFn {
        (cmds: IPathCommand[], fmt: string, ppc?: number, eps?: number): Shape[];
    }
    export function init(wasmUrl: string): Promise<ICompileFn>;
    export type Vertex = [number, number];
    export type Polygon = Vertex[];
    export type Shape = {
        fill: Polygon;
        holes: Polygon[];
    };
}
declare module "font" {
    import * as opentype from 'opentype.js';
    import * as BABYLON from 'babylonjs';
    import { ICompileFn, IPathCommand } from "compile_wa";
    type VertexXZ = BABYLON.Vector3;
    type PolygonXZ = Array<VertexXZ>;
    type ShapeXZ = {
        fill: PolygonXZ;
        holes: Array<PolygonXZ>;
    };
    export function InstallCompiler(wasmUrl: string): Promise<Compiler>;
    export function InstallFont(fontUrl: string, compiler: Compiler): Promise<Font>;
    type PolygonMeshOption = {
        backUVs?: BABYLON.Vector4;
        depth?: number;
        faceColors?: BABYLON.Color4[];
        faceUV?: BABYLON.Vector4[];
        frontUVs: BABYLON.Vector4;
        sideOrientation?: number;
        updatable?: boolean;
    };
    class Font {
        private otFont;
        private compiler;
        constructor(otFont: opentype.Font, compiler: Compiler);
        compile(ch: string, ppc: number, eps: number, fontSize: number): Array<ShapeXZ>;
        char(name: string, fontSize: number, ppc: number, eps: number): Char;
    }
    class Compiler {
        private compileFn;
        constructor(compileFn: ICompileFn);
        compile(cmds: IPathCommand[], fmt: string, ppc: number, eps: number): import("compile_wa").Shape[];
    }
    class Char {
        name: string;
        fontSize: number;
        private shapes;
        private otFont;
        constructor(name: string, fontSize: number, shapes: ShapeXZ[], otFont: opentype.Font);
        readonly advanceWidth: number;
        readonly ascender: number;
        readonly descender: number;
        readonly sTypoAscender: number;
        readonly sTypoDescender: number;
        node(option?: PolygonMeshOption, scene?: BABYLON.Scene, isCenter?: boolean): BABYLON.TransformNode;
    }
}
