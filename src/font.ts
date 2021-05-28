/// <reference path='../node_modules/babylonjs/babylon.module.d.ts' />

import { Compiler, Shape } from './compiler'



//
// PolygonMeshOption ( subset of MeshBuilder.CreatePolygon params )
//

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

    private constructor(
        public raw: opentype.Font,
        private compiler: Compiler
    ) { }

    static async Install(
        fontUrl: string,
        compiler: Compiler,
        opentype: any,
    ) {
        const raw = await opentype.load(fontUrl);
        return new Font(raw, compiler);
    }

    measure(
        name: string,
        size: number
    ) {
        return new Metrics(this, name, size);
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
        return shapes;
    }

}



// 
// TextMeshBuilder
//

interface IBabylon {
    Mesh: typeof BABYLON.Mesh;
    MeshBuilder: typeof BABYLON.MeshBuilder;
    Vector3: typeof BABYLON.Vector3
}

export class TextMeshBuilder {

    constructor(
        private babylon: IBabylon,
        private earcut: any
    ) { }

    private createFromShapes(
        shapes: Shape[],
        option: PolygonMeshOption,
        scene?: BABYLON.Scene,
    ) {
        const meshes: BABYLON.Mesh[] = [];
        const toVec3 = (vert) => new this.babylon.Vector3(vert[0], 0, -vert[1]);
        for (const { fill, holes } of shapes) {
            const mesh = this.babylon.MeshBuilder.CreatePolygon('', {
                ...option,
                shape: fill.map(toVec3),
                holes: holes.map(hole => hole.map(toVec3))
            }, scene, this.earcut);
            meshes.push(mesh);
        }

        if (meshes.length > 0) {
            return this.babylon.Mesh.MergeMeshes(meshes, true, true);
        } else {
            return null;
        }
    }

    create({
        font,
        text,
        size = 100,
        ppc = 2,
        eps = 0.001,
        ...option
    }: {
        font: Font,
        text: string,
        size: number,
        ppc: number,
        eps: number,
    } & PolygonMeshOption, scene?: BABYLON.Scene) {
        const shapes = Font.Compile(font, text, size, ppc, eps);
        return this.createFromShapes(shapes, option, scene);
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
