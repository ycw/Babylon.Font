declare module "compile_wa" {
    interface PathCommand {
        type: string;
        x?: number;
        y?: number;
        x1?: number;
        y1?: number;
        x2?: number;
        y2?: number;
    }
    export function init(wasmUrl: string): Promise<(cmds: PathCommand[], fmt: string, ppc?: number, eps?: number) => Shape[]>;
    export type Vertex = [number, number];
    export type Polygon = Vertex[];
    export type Shape = {
        fill: Polygon;
        holes: Polygon[];
    };
}
