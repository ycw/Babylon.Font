(async function main() {

    // Install Compiler
    const compiler = await Font.InstallCompiler('../../dist/compile_wa.wasm');

    // Install Font
    const font = await Font.InstallFont('./font/NotoSerifDisplay-Regular.ttf', compiler);

    // Create BabylonJS Env
    const canvas = document.querySelector('canvas');
    const engine = new BABYLON.Engine(canvas, true, {
        preserveDrawingBuffer: true, stencil: true
    }, false);
    const scene = new BABYLON.Scene(engine);
    engine.runRenderLoop(() => scene.render());

    // App State
    const state = {
        compiler,

        lightAngle: 180,
        lightDistance: 5,
        lightIntensity: 5,

        font,
        fontSize: 1,
        fontPpc: 10,
        fontEps: 0.01,
        fontDepth: 0.1,

        fontColor: [1, 0.75, 0.65],
        shadowColor: [1, 0, 0],
        bgColor: [0, 0, 0],
        bgAlpha: 1,

        saveWidth: 1920,
        saveHeight: 1080,

        text: 'Babylon.Font',
        light: null,
        shadowGen: null,
        hostNode: null,
        wallMat: null,
        fontMat: null,
        meshStore: new Map(),
        scene,
    };

    initScene(state);
    initUI(state);
    render(state);
})();



function initUI(state) {
    function $(sel, ctx) {
        return (ctx || document).querySelector(sel);
    }

    function updateLight() {
        const { lightAngle, lightDistance, lightIntensity, light,
            lightHeightFactor, fontDepth
        } = state;
        const rad = lightAngle * Math.PI / 180;
        light.position.x = Math.sin(rad) * lightDistance;
        light.position.y = fontDepth;
        light.position.z = Math.cos(rad) * lightDistance;
        light.setDirectionToTarget(BABYLON.Vector3.Zero());
        light.intensity = lightIntensity;
    }

    function hex2rgb(hstr) {
        const r = parseInt(hstr.substring(1, 3), 16) / 255;
        const g = parseInt(hstr.substring(3, 5), 16) / 255;
        const b = parseInt(hstr.substring(5, 7), 16) / 255;
        return [r, g, b];
    }

    function rgb2hex([r, g, b]) {
        const R = (r * 255 | 0).toString(16).padStart(2, '0');
        const G = (g * 255 | 0).toString(16).padStart(2, '0');
        const B = (b * 255 | 0).toString(16).padStart(2, '0');
        return `#${R}${G}${B}`;
    }

    function updateFontColor() {
        state.fontMat.diffuseColor.set(...state.fontColor);
    }

    function updateShadowColor() {
        state.wallMat.shadowColor.set(...state.shadowColor);
    }

    function updateBg() {
        state.scene.clearColor.set(...state.bgColor, state.bgAlpha);
    }

    function updateCanvasSize() {
        const container = $('.preview');
        const { width: cW, height: cH } = container.getBoundingClientRect();
        const w = state.saveWidth;
        const h = state.saveHeight;
        const canvas = $('#el_canvas');
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
        state.scene.getEngine().resize();
    }

    function screenshot() {
        const engine = state.scene.getEngine();
        const camera = state.scene.activeCamera;
        const canvas = engine.getRenderingCanvas();
        const oWidth = canvas.width;
        const oHeight = canvas.height;
        canvas.width = state.saveWidth;
        canvas.height = state.saveHeight;
        engine.resize();
        state.scene.render();
        BABYLON.Tools.CreateScreenshot(engine, camera, { precision: 1 });
        canvas.width = oWidth;
        canvas.height = oHeight;
        engine.resize();
        state.scene.render();
    }

    function serialize() {
        if (state.text.length === 0) {
            return;
        }

        const result = {};
        result.chars = [];
        const names = new Set([...state.text]);
        for (const name of names) {
            const { mesh, char } = state.meshStore.get(name);
            const data = mesh.geometry.serializeVerticeData();
            const { advanceWidth } = char;
            result.chars.push({ name, data, advanceWidth });
        }

        const { char } = state.meshStore.get(state.text[0]);
        result.ascender = char.ascender;
        result.descender = char.descender;

        // Dump JSON
        // https://doc.babylonjs.com/resources/save_babylon
        const str = JSON.stringify(result);
        const blob = new Blob([str], { type: 'octet/stream' });
        serialize.url && URL.revokeObjectURL(serialize.url);
        serialize.url = URL.createObjectURL(blob);
        const a = document.createElement('a');
        a.href = serialize.url;
        a.download = 'a.json';
        const ev = document.createEvent('MouseEvents');
        ev.initEvent('click', true, false);
        a.dispatchEvent(ev);
    }

    async function loadFont(file) {
        const url = URL.createObjectURL(file);
        try {
            const font = await Font.InstallFont(url, state.compiler);
            state.font = font;
            state.meshStore.clear();
            render(state);
            loadFont.url && URL.revokeObjectURL(loadFont.url);
            loadFont.url = url;
        } catch (e) {
            alert('Failed to install font');
            console.error(e);
        }
    }

    // Handle Text Section
    $('#el_text').oninput = e => {
        state.text = e.target.value;
        render(state);
    };

    // Handle Light Section 
    $('#el_lightAngle').oninput = e => {
        state.lightAngle = +e.target.value;
        updateLight();
    }
    $('#el_lightDistance').oninput = e => {
        state.lightDistance = +e.target.value;
        updateLight();
    };
    $('#el_lightIntensity').oninput = e => {
        state.lightIntensity = +e.target.value;
        updateLight();
    };

    // Handle Color Section
    $('#el_fg').oninput = e => {
        state.fontColor = hex2rgb(e.target.value);
        updateFontColor();
    };
    $('#el_shadowColor').oninput = e => {
        state.shadowColor = hex2rgb(e.target.value);
        updateShadowColor();
    };
    $('#el_bgColor').oninput = e => {
        state.bgColor = hex2rgb(e.target.value);
        updateBg();
    };
    $('#el_bgAlpha').oninput = e => {
        state.bgAlpha = +e.target.value;
        updateBg();
    };

    // Handle Font Section
    $('#el_ppc').oninput = e => {
        state.fontPpc = +e.target.value;
        state.meshStore.clear();
        render(state);
    };
    $('#el_eps').oninput = e => {
        state.fontEps = +e.target.value;
        state.meshStore.clear();
        render(state);
    };
    $('#el_depth').oninput = e => {
        state.fontDepth = +e.target.value;
        state.meshStore.clear();
        render(state);
    }
    document.body.ondragover = e => {
        e.preventDefault();
    };
    document.body.ondrop = async (e) => {
        e.preventDefault();
        for (const item of e.dataTransfer.items) {
            if (item.kind == 'file') {
                const file = item.getAsFile();
                await loadFont(file);
                break;
            }
        }
    };

    // Handle Render Section
    $('#el_saveWidth').oninput = e => {
        state.saveWidth = parseInt(e.target.value, 10);
        updateCanvasSize();
    };
    $('#el_saveHeight').oninput = e => {
        state.saveHeight = parseInt(e.target.value, 10);
        updateCanvasSize();
    };
    addEventListener('resize', e => {
        updateCanvasSize();
    });

    // Handle Dump Section
    $('#el_screenshot').onclick = e => {
        screenshot();
    };
    $('#el_serialize').onclick = e => {
        serialize();
    };

    // Sync UI
    updateLight();
    updateFontColor();
    updateShadowColor();
    updateCanvasSize();
    updateBg();
    $('#el_text').value = state.text;
    $('#el_lightAngle').value = state.lightAngle.toString();
    $('#el_lightDistance').value = state.lightDistance.toString();
    $('#el_lightIntensity').value = state.lightIntensity.toString();
    $('#el_fg').value = rgb2hex(state.fontColor);
    $('#el_shadowColor').value = rgb2hex(state.shadowColor);
    $('#el_bgColor').value = rgb2hex(state.bgColor);
    $('#el_bgAlpha').value = state.bgAlpha.toString();
    $('#el_ppc').value = state.fontPpc.toString();
    $('#el_eps').value = state.fontEps.toString();
    $('#el_depth').value = state.fontDepth.toString();
    $('#el_saveWidth').value = state.saveWidth.toString();
    $('#el_saveHeight').value = state.saveHeight.toString();
}



function initScene(state) {
    const { lightAngle, lightDistance, lightHeightFactor, fontDepth, scene } = state;

    // Setup Camera
    const cam = new BABYLON.ArcRotateCamera('',
        -BABYLON.Tools.ToRadians(125), BABYLON.Tools.ToRadians(45),
        200, new BABYLON.Vector3(), scene
    );
    cam.attachControl(scene.getEngine().getRenderingCanvas());
    cam.wheelPrecision = 10;
    cam.panningSensibility *= 5;
    cam.upperBetaLimit = Math.PI / 2;
    cam.fov = BABYLON.Tools.ToRadians(1);

    // Create Wall mesh
    const wall = BABYLON.MeshBuilder.CreateGround('wall', {
        width: 1e4, height: 1e4, subdivisions: 10
    });
    wall.position.y = -fontDepth;
    const wallMat = new BABYLON.ShadowOnlyMaterial('', scene);
    wall.material = wallMat;
    state.wallMat = wallMat;

    // Create Shadow Light 
    const light = new BABYLON.DirectionalLight('', new BABYLON.Vector3(), scene);
    state.light = light;

    // Create Shadow Gen
    const shadowGen = new BABYLON.ShadowGenerator(2048, light, true);
    shadowGen.filteringQuality = BABYLON.ShadowGenerator.QUALITY_HIGH;
    wall.receiveShadows = true;
    shadowGen.bias = 0.000001;
    state.shadowGen = shadowGen;

    // Create Ambient Light
    const light1 = new BABYLON.DirectionalLight('',
        new BABYLON.Vector3(0, -1, 0), scene
    );

    // Create Material
    const fontMat = new BABYLON.StandardMaterial('');
    fontMat.specularColor.set(0, 0, 0);
    fontMat.doNotSerialize = true;
    state.fontMat = fontMat;

    // Fx
    const rp = new BABYLON.DefaultRenderingPipeline();
    rp.samples = 8;
}



function render(state) {
    const { hostNode, font, fontSize, fontDepth, fontPpc, fontEps,
        shadowGen, fontMat, meshStore, scene, edgesColor
    } = state;
    hostNode && hostNode.dispose();
    const nuHost = new BABYLON.TransformNode('');
    let x = 0;
    let xMax = 0;
    let line = 0;
    let ascender = 0;
    for (const ch of state.text) {
        if (ch == '\n') {
            x = 0;
            line += 1;
            continue;
        }
        if (!meshStore.has(ch)) {
            const char = font.char(ch, fontSize, fontPpc, fontEps);
            const node = char.node({
                depth: fontDepth,
                sideOrientation: BABYLON.Mesh.DOUBLESIDE
            });
            const mesh = node.getChildMeshes(true)[0];
            if (mesh) {
                mesh.setEnabled(false);
                mesh.receiveShadows = true;
                mesh.material = fontMat;
            }
            meshStore.set(ch, { mesh, char });
        }

        const { mesh, char } = meshStore.get(ch);
        if (mesh) {
            const inst = mesh.createInstance('');
            inst.position.x = x;
            inst.position.z = -1 * line * fontSize;
            inst.parent = nuHost;
            shadowGen.addShadowCaster(inst, false);
        }
        x += char.advanceWidth;
        xMax = Math.max(xMax, x);
        ascender = char.ascender;
    }
    nuHost.position.x = -0.5 * xMax;
    nuHost.position.z = 0.5 * (line * fontSize - ascender);
    state.hostNode = nuHost;

    const wall = scene.getMeshByName('wall');
    wall.position.y = -fontDepth;
}