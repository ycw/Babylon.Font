import * as loader from '@assemblyscript/loader';
import * as BABYLON from 'babylonjs';

declare type PathCommand = {
    type: 'M' | 'L';
    x: number;
    y: number;
} | {
    type: 'Q';
    x: number;
    y: number;
    x1: number;
    y1: number;
} | {
    type: 'C';
    x: number;
    y: number;
    x1: number;
    y1: number;
    x2: number;
    y2: number;
} | {
    type: 'Z';
};
declare type Header = {
    MEMORY_BASE: {
        value: number;
    };
    compile(bytesUsed: number, fmt: string, ppc: number, eps: number): number;
};
declare type Wasm = loader.ResultObject & {
    exports: loader.ASUtil & Header;
};
declare type Vertex = [number, number];
declare type Polygon = Vertex[];
declare type Shape = {
    fill: Polygon;
    holes: Polygon[];
};
declare class Compiler {
    private wasm;
    constructor(wasm: Wasm);
    static Build(wasmUrl?: string): Promise<Compiler>;
    encode(cmds: PathCommand[]): number;
    compile(cmds: PathCommand[], fmt: string, ppc: number, eps: number): Shape[] | null;
    private bytesRequired;
}

declare class Metrics {
    private font;
    private name;
    private size;
    constructor(font: Font, name: string, size: number);
    get ascender(): number;
    get descender(): number;
    get advanceWidth(): number;
}

declare class Font {
    raw: opentype.Font;
    private compiler;
    private constructor();
    static Install(fontUrl: string, compiler: Compiler, opentype: any): Promise<Font>;
    measure(name: string, size: number): Metrics;
    static Compile(font: Font, name: string, size: number, ppc: number, eps: number): Shape[] | null;
}

declare type CreatePolygonOptions = {
    backUVs?: BABYLON.Vector4;
    depth?: number;
    faceColors?: BABYLON.Color4[];
    faceUV?: BABYLON.Vector4[];
    frontUVs?: BABYLON.Vector4;
    sideOrientation?: number;
    updatable?: boolean;
};
declare type TextBuilderCreateOptions = {
    font: Font;
    text: string;
    size: number;
    ppc: number;
    eps: number;
} & CreatePolygonOptions;
declare class TextMeshBuilder {
    private babylon;
    private earcut;
    constructor(babylon: typeof BABYLON, earcut: any);
    private createFromShapes;
    create({ font, text, size, ppc, eps, ...createPolygonOptions }: TextBuilderCreateOptions, scene?: BABYLON.Scene): BABYLON.Nullable<BABYLON.Mesh> | undefined;
}

export { Compiler, Font, Polygon, Shape, TextMeshBuilder, Vertex };
