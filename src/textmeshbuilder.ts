import * as BABYLON from "babylonjs";
import { Font } from "./font";
import { Shape, Vertex } from "./compiler";

// babylon MeshBuilder.createPolygon options
type CreatePolygonOptions = { 
  backUVs?: BABYLON.Vector4;
  depth?: number;
  faceColors?: BABYLON.Color4[];
  faceUV?: BABYLON.Vector4[];
  frontUVs?: BABYLON.Vector4;
  sideOrientation?: number;
  updatable?: boolean;
}

type TextBuilderCreateOptions = {
  font: Font,
  text: string,
  size: number,
  ppc: number,
  eps: number,
} & CreatePolygonOptions

export class TextMeshBuilder {

  constructor(
    private babylon: typeof BABYLON,
    private earcut: any
  ) { }

  private createFromShapes(
    shapes: Shape[],
    option: CreatePolygonOptions,
    scene?: BABYLON.Scene,
  ) {
    const meshes: BABYLON.Mesh[] = [];
    const toVec3 = (vert: Vertex) => new this.babylon.Vector3(vert[0], 0, -vert[1]);
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

  create(
    {
      font,
      text,
      size = 100,
      ppc = 2,
      eps = 0.001,
      ...createPolygonOptions
    }: TextBuilderCreateOptions, 
    scene?: BABYLON.Scene
  ) {
    const shapes = Font.Compile(font, text, size, ppc, eps);
    if (shapes === null) {
      return undefined;
    }
    return this.createFromShapes(shapes, createPolygonOptions, scene);
  }

}
