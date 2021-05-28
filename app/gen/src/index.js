import BABYLON from 'https://cdn.skypack.dev/babylonjs@4.2.0';
import earcut from 'https://cdn.skypack.dev/earcut@2.2.2';
import opentype from 'https://cdn.skypack.dev/opentype.js@1.3.3';
import { Compiler, Font, TextMeshBuilder } from '../../../dist/babylon.font.js';

import * as cLight from './control/light.js';
import * as cForeground from './control/foreground.js';
import * as cFont from './control/font.js';
import * as cText from './control/text.js';
import * as cDump from './control/dump.js';
import * as cRendering from './control/rendering.js';

const wasmUrl = '../../dist/compiler.wasm';
const fontUrl = './font/NotoSansMono-Thin.ttf';

(async function main() {

    const compiler = await Compiler.Build(wasmUrl);
    const font = await Font.Install(fontUrl, compiler, opentype);

    // Create BabylonJS Env
    const canvas = document.querySelector('canvas');
    const option = { preserveDrawingBuffer: true, stencil: true };
    const engine = new BABYLON.Engine(canvas, true, option, true);
    const scene = new BABYLON.Scene(engine);
    engine.runRenderLoop(() => scene.render());

    // App State
    const meshStore = new Map();
    const builder = new TextMeshBuilder(BABYLON, earcut);
    const state = { compiler, font, scene, meshStore, builder };

    initScene(state);
    initUI(state);
})();



function initScene(state) {
    const { scene } = state;
    scene.metadata = {};
    scene.fogEnabled = false;
    scene.clearColor.set(0, 0, 0, 0);

    // Setup Camera
    const cam = new BABYLON.ArcRotateCamera('',
        BABYLON.Tools.ToRadians(-90), BABYLON.Tools.ToRadians(0),
        600, new BABYLON.Vector3(), scene
    );
    cam.attachControl(scene.getEngine().getRenderingCanvas());
    cam.wheelPrecision = 10;
    cam.panningSensibility *= 2;
    cam.upperBetaLimit = Math.PI / 2;
    cam.fov = Math.PI / 180;

    // Create Light 
    const light0 = new BABYLON.DirectionalLight('light0',
        BABYLON.Vector3.Zero(), scene
    );

    // Create Font Material
    const textMat = new BABYLON.StandardMaterial('text');
    textMat.specularColor.set(0, 0, 0);

    // Create Rendering Pipeline
    const rp = new BABYLON.DefaultRenderingPipeline();
    scene.metadata.pipeline = rp;
}



function initUI(state) {

    // Text Related
    cText.init({
        content: [
            `ABCDEFGHIJKLM`,
            `NOPQRSTUVWXYZ`,
            `abcdefghijklm`,
            `nopqrstuvwxyz`,
            ` `, // <- space
            `0123456789\`!~`,
            `@#$%^&*_-+<>{`,
            `}[]()/;:"',.?`,
        ].join('\n'),
        render: () => render(state)
    });

    // Light Related
    cLight.init({
        angle: 135,
        distance: 100,
        height: 100,
        intensity: 1,
        color: [1, 1, 1],
        light: state.scene.getLightByName('light0')
    });

    // Foreground Related
    cForeground.init({
        color: [0, 0.5, 1],
        isEmissive: false,
        material: state.scene.getMaterialByName('text')
    });

    // Font Related
    cFont.init({
        ppc: 1,
        eps: 0,
        depth: 0,
        render: () => {
            clearMeshStore(state.meshStore);
            render(state);
        },
        onDrop: async (file) => {
            const font = await installFont(file, state.compiler);
            if (font) {
                state.font = font;
                clearMeshStore(state.meshStore);
                render(state);
            }
        }
    });

    // Rendering Related
    cRendering.init({
        width: 1920,
        height: 1080,
        samples: 1,
        onSize: (w, h) => {
            updateCanvasSize(state.scene, w, h);
        },
        onSamples: (n) => {
            state.scene.metadata.pipeline.samples = n;
        }
    });

    // Dump Related (datafile/image)
    cDump.init({
        scene: state.scene,
        meshStore: state.meshStore,
        getSize: () => {
            const { width, height } = cRendering;
            return { width, height };
        },
        getTextContent: () => {
            return cText.content;
        },
        getMetrics: (name) => {
            return Font.Measure(state.font, name, 1);
        },
        updateCanvasSize: () => {
            const { width, height } = cRendering;
            updateCanvasSize(state.scene, width, height);
        }
    });

    // Recompute canvas size on resize
    addEventListener('resize', () => {
        updateCanvasSize(state.scene, cRendering.width, cRendering.height);
    });

    // Compute canvas size once
    updateCanvasSize(state.scene, cRendering.width, cRendering.height);
}



async function installFont(file, compiler) {
    const url = URL.createObjectURL(file);
    try {
        const font = await Font.Install(url, compiler, opentype);
        installFont.url && URL.revokeObjectURL(installFont.url);
        installFont.url = url;
        return font;
    } catch (e) {
        alert('Failed to install font');
        console.error(e);
        return null;
    }
}



function updateCanvasSize(scene, w, h) {
    const canvas = scene.getEngine().getRenderingCanvas();
    const container = canvas.parentNode;
    const { width: cW, height: cH } = container.getBoundingClientRect();
    if (w > h) { // canvas ratio: landscape
        canvas.width = cW;
        canvas.height = h * (cW / w);
        if (canvas.height > cH) {
            canvas.width = w * (cH / h);
            canvas.height = cH;
        }
    } else { // canvas ratio: portrait
        canvas.height = cH;
        canvas.width = w * (cH / h);
        if (canvas.width > cW) {
            canvas.height = h * (cW / w);
            canvas.width = cW;
        }
    }
    scene.getEngine().resize();
}



function clearMeshStore(meshStore) {
    for (const [ch, { mesh }] of meshStore.entries()) {
        mesh && mesh.dispose();
        meshStore.delete(ch);
    }
}



function render(state) {
    const { scene, font, meshStore, builder } = state;
    const { size, ppc, eps, depth } = cFont;
    const { content } = cText;

    if (scene.metadata.hostNode) {
        scene.metadata.hostNode.dispose();
    }

    scene.metadata.hostNode = new BABYLON.TransformNode('');

    if (content.length == 0) {
        return;
    }

    const textMat = scene.getMaterialByName('text');

    let x = 0;
    let xMax = 0;
    let line = 0;

    const sideOrientation = BABYLON.Mesh.DOUBLESIDE;

    for (const ch of content) {
        if (ch == '\n') {
            x = 0;
            line += 1;
            continue;
        }
        if (!meshStore.has(ch)) {
            const mesh = builder.create({
                font, text: ch, 
                size, ppc, eps, depth, sideOrientation
            });
            if (mesh) {
                mesh.setEnabled(false);
                mesh.material = textMat;
            }
            meshStore.set(ch, { mesh });
        }
        const { mesh } = meshStore.get(ch);
        if (mesh) {
            const inst = mesh.createInstance('');
            inst.position.x = x;
            inst.position.z = -1 * line * size;
            inst.parent = scene.metadata.hostNode;
        }
        x += font.measure(ch, size).advanceWidth;
        xMax = Math.max(xMax, x);
    }

    const { ascender } = font.measure('M', size);
    const { hostNode } = scene.metadata;
    hostNode.position.x = -0.5 * xMax;
    hostNode.position.z = 0.5 * ((line + 1) * size - ascender);
}
