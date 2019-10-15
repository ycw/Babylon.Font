declare module "compile_wa" {
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
