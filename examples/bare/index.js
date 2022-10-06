import BABYLON from "babylonjs";
import earcut from "earcut";
import opentype from "opentype";
import { Compiler, Font, TextMeshBuilder } from "babylon.font";
import { Pane } from "tweakpane";

const fontUrl = "../font/NotoSansMono-Thin.ttf";

(async function main() {

  const compiler = await Compiler.Build();
  const font = await Font.Install(fontUrl, compiler, opentype);
  const builder = new TextMeshBuilder(BABYLON, earcut);

  // Env
  const canvas = document.querySelector("canvas");
  const engine = new BABYLON.Engine(canvas, true, undefined, true);
  const scene = new BABYLON.Scene(engine);
  engine.runRenderLoop(() => scene.render());
  window.addEventListener("resize", () => engine.resize());

  // Camera
  const cam = new BABYLON.ArcRotateCamera("",
    BABYLON.Tools.ToRadians(-90), BABYLON.Tools.ToRadians(15),
    500, new BABYLON.Vector3(), scene
  );
  cam.attachControl(scene.getEngine().getRenderingCanvas());

  // Light
  new BABYLON.DirectionalLight("", new BABYLON.Vector3(-1, -1, 0), scene);

  // Params
  const params = {
    text: "BF4.0",
    size: 100,
    ppc: 2,
    eps: 0.001,
    depth: 0.0
  }

  // Mesh
  let mesh = createMesh(params);

  function createMesh(params) {
    const mesh = builder.create({
      font,
      text: params.text,
      size: params.size,
      ppc: params.ppc,
      eps: params.eps,
      depth: params.depth,
      sideOrientation: BABYLON.Mesh.DOUBLESIDE
    }, scene);

    if (mesh === undefined) { // wasm fails to process
      return null
    }

    if (mesh === null) { // no mesh created, e.g. text are all whtiespaces
      return null
    }

    const info = mesh.getBoundingInfo();
    mesh.position.copyFrom(info.boundingBox.center.scale(-1));
    return mesh;
  }

  // GUI
  const pane = new Pane({ title: "babylon.font" });
  pane.addInput(params, "text");
  pane.addInput(params, "size", { min: 100, max: 900, step: 10 });
  pane.addInput(params, "ppc", { min: 2, max: 10, step: 1 });
  pane.addInput(params, "eps", { min: 0.001, max: 0.01 });
  pane.addInput(params, "depth", { min: 0, max: 100 });
  pane.on("change", () => {
    mesh?.dispose();
    mesh = createMesh(params);
  });
})();