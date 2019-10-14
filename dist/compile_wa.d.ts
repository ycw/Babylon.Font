interface PathCommand {
    type: string;
    x?: number;
    y?: number;
    x1?: number;
    y1?: number;
    x2?: number;
    y2?: number;
}
export declare function init(wasmUrl: string): Promise<(cmds: PathCommand[], fmt: string, ppc?: number, eps?: number) => Set<Shape>>;
declare type Vertex = [number, number];
declare type Polygon = Vertex[];
declare type Shape = {
    fill: Polygon;
    holes: Set<Polygon>;
};
export {};
