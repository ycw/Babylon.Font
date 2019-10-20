main();



async function main() {

    const compiler = await Font.InstallCompiler('../dist/compile_wa.wasm');
    const font = await Font.InstallFont('./font/NotoSerifDisplay-Thin.ttf', compiler);
    const font2 = await Font.InstallFont('./font/NotoSansCJKtc-Thin.otf', compiler);

    const canvas = document.querySelector('canvas');
    const engine = new BABYLON.Engine(canvas);
    const scene = new BABYLON.Scene(engine);

    scene.createDefaultCamera(true, true, true);
    scene.createDefaultLight(true);

    const option = {
        depth: 0.1,
        sideOrientation: BABYLON.Mesh.DOUBLESIDE
    };

    let offsetX = 0;

    const char1 = font2.char('我', 1, 10, 0.001);
    const mesh1 = char1.node(option);
    mesh1.position.x = offsetX;
    offsetX += char1.advanceWidth;

    const char2 = font.char('M', 2, 10, 0.001);
    const mesh2 = char2.node(option);
    mesh2.position.x = offsetX;
    mesh2.position.y = 0.1 / 2;
    offsetX += char2.advanceWidth;

    const char3 = font.char('e', 2, 5, 0);
    const node3 = char3.node(option, scene, true);
    node3.position.x = offsetX;
    scene.onBeforeRenderObservable.add(() => {
        node3.rotation.x += 0.01;
        mesh1.rotation.x += 0.01;
        mesh2.rotation.x += 0.01;
    })


    const maxA = Math.max(char1.ascender, char2.ascender, char3.ascender);
    const maxD = Math.min(char1.descender, char2.descender, char3.descender);

    const lineA = [new BABYLON.Vector3(0, 0, maxA), new BABYLON.Vector3(10, 0, maxA)];
    const lineD = [new BABYLON.Vector3(0, 0, maxD), new BABYLON.Vector3(10, 0, maxD)];
    const baseline = [new BABYLON.Vector3(), new BABYLON.Vector3(10, 0, 0)];
    BABYLON.MeshBuilder.CreateLineSystem('', {
        lines: [lineA, baseline, lineD]
    });

    engine.runRenderLoop(() => scene.render());
    addEventListener('resize', () => engine.resize());
}