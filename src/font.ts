/// <reference path='../node_modules/babylonjs/babylon.module.d.ts' />
/// <reference path='../node_modules/@types/opentype.js/index.d.ts' />

import { Compiler } from './compiler'

type Shape = {
    fill: BABYLON.Vector3[],
    holes: BABYLON.Vector3[][]
};

type PolygonMeshOption = {
    backUVs?: BABYLON.Vector4;
    depth?: number;
    faceColors?: BABYLON.Color4[];
    faceUV?: BABYLON.Vector4[];
    frontUVs?: BABYLON.Vector4;
    sideOrientation?: number;
    updatable?: boolean;
}



//
// Font
//

export class Font {

    constructor(
        public raw: opentype.Font,
        private compiler: Compiler
    ) { }

    static async Install(
        fontUrl: string,
        compiler: Compiler
    ) {
        const raw = await opentypeLoadAsync(fontUrl);
        return new Font(raw, compiler);
    }

    static Measure(
        font: Font,
        name: string,
        size: number
    ) {
        return new Metrics(font, name, size);
    }

    static Compile(
        font: Font,
        name: string,
        size: number,
        ppc: number,
        eps: number
    ) {
        const cmds = font.raw.getPath(name, 0, 0, size).commands;
        const fmt = font.raw.outlinesFormat;
        const shapes = font.compiler.compile(cmds, fmt, ppc, eps * size);
        const vec3 = ([x, y]) => new BABYLON.Vector3(x, 0, -y);
        const result: Array<Shape> = [];
        for (const { fill, holes } of shapes) {
            const shape = {
                fill: fill.map(vec3),
                holes: holes.map(hole => hole.map(vec3))
            };
            result.push(shape);
        }
        return result;
    }

    static BuildMesh(
        shapes: Shape[],
        option?: PolygonMeshOption,
        scene?: BABYLON.Scene
    ) {
        const meshes: BABYLON.Mesh[] = [];
        for (const { fill, holes } of shapes) {
            const mesh = BABYLON.MeshBuilder.CreatePolygon('', {
                ...option,
                shape: fill,
                holes: holes
            }, scene);
            meshes.push(mesh);
        }

        if (meshes.length > 0) {
            return BABYLON.Mesh.MergeMeshes(meshes, true, true);
        } else {
            return null;
        }
    }
}



//
// Metrics - Result of Measure()
//

export class Metrics {

    constructor(
        private font: Font,
        private name: string,
        private size: number
    ) { }

    get ascender() {
        return this.font.raw.ascender
            / this.font.raw.unitsPerEm
            * this.size;
    }

    get descender() {
        return this.font.raw.descender
            / this.font.raw.unitsPerEm
            * this.size;
    }

    get advanceWidth() {
        return this.font.raw.getAdvanceWidth(this.name, this.size);
    }
}



//
// Helper: opentype.load async
//

function opentypeLoadAsync(
    fontUrl: string
): Promise<opentype.Font> {
    return new Promise((resolve, reject) => {
        // @ts-ignore : UMD global
        opentype.load(fontUrl, (err, otFont) => {
            if (err) {
                reject(err);
            } else {
                resolve(otFont);
            }
        });
    });
}