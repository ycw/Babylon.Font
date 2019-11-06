(async function main() {

    // Install Compiler
    const wasmUrl = '../../dist/compile_wa.wasm';
    const compiler = await Font.InstallCompiler(wasmUrl);

    // Install Font
    const fontUrl = './font/NotoSerifDisplay-Thin.ttf';
    const font = await Font.InstallFont(fontUrl, compiler);

    // Create BabylonJS Env
    const canvas = document.querySelector('canvas');
    const engine = new BABYLON.Engine(canvas);
    const scene = new BABYLON.Scene(engine);
    engine.runRenderLoop(() => scene.render());
    addEventListener('resize', () => engine.resize());

    // Setup Scene
    scene.createDefaultCamera(true, true, true);
    scene.createDefaultLight(true);

    // Create Char{}s
    const option = { depth: 0.1, sideOrientation: BABYLON.Mesh.DOUBLESIDE };
    const chars = [
        font.char('B', 0.5, 5, 0.001),
        font.char('a', 1.0, 5, 0.001),
        font.char('b', 0.5, 5, 0.001),
        font.char('y', 1.0, 5, 0.001),
        font.char('l', 0.5, 5, 0.001),
        font.char('o', 1.0, 5, 0.001),
        font.char('n', 0.5, 5, 0.001),
    ];

    // Layout a Word
    const node = layout(chars, option);

    // Upright
    node.rotation.x = - 0.5 * Math.PI;
})();



function layout(chars, option) {
    const word = new BABYLON.TransformNode('');
    let x = 0;
    let maxFontSize = 0;
    let minDescender = 0;
    for (const char of chars) {
        const node = char.node(option);
        node.position.x = x; // offset x
        node.parent = word; // parent to "word" container
        x += char.advanceWidth; // inc x
        minDescender = Math.min(minDescender, char.descender); // -ve
        maxFontSize = Math.max(maxFontSize, char.fontSize);
    }
    word.position.x = -0.5 * x; // center x
    word.position.y = 0.5 * option.depth; // center y
    word.position.z = -0.5 * maxFontSize - minDescender; // center z
    const root = new BABYLON.TransformNode('');
    word.parent = root;
    return root;
}
