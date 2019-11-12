import { $ } from '../helper/dom.js';

let scene;
let meshStore;
let getSize;
let getTextContent;
let getMetrics;
let updateCanvasSize;

export function init(o) {
    scene = o.scene;
    meshStore = o.meshStore;
    getSize = o.getSize;
    getTextContent = o.getTextContent;
    getMetrics = o.getMetrics;
    updateCanvasSize = o.updateCanvasSize;

    $('#el_dumpImage').onclick = handleImage;
    $('#el_dumpData').onclick = handleData;
}

function handleImage(e) {
    screenshot();
}

function handleData(e) {
    serialize();
}

function screenshot() {
    const engine = scene.getEngine();
    const camera = scene.activeCamera;
    const canvas = engine.getRenderingCanvas();
    const oW = canvas.width;
    const oH = canvas.height;
    const { width, height } = getSize();
    canvas.width = width;
    canvas.height = height;
    engine.resize();
    scene.render();
    BABYLON.Tools.CreateScreenshot(engine, camera, { precision: 1 });
    canvas.width = oW;
    canvas.height = oH;
    updateCanvasSize();
}

function serialize() {
    const result = {
        ascender: NaN,
        descender: NaN,
        chars: []
    };
    const content = getTextContent();
    const names = new Set([...content]);
    for (const name of names) {
        if (name == '\n') {
            continue;
        }
        let data = null;
        const { mesh } = meshStore.get(name);
        if (mesh) {
            data = mesh.geometry.serializeVerticeData();
            delete data.id;
            delete data.updatable;
        }
        const { advanceWidth } = getMetrics(name);
        result.chars.push({ name, data, advanceWidth });
    }

    if (content.length) {
        const { ascender, descender } = getMetrics(content[0]);
        result.ascender = ascender;
        result.descender = descender;
    }

    // https://doc.babylonjs.com/resources/save_babylon

    const str = JSON.stringify(result, (k, v) => {
        if (typeof v == 'number') {
            return Number(v.toString().substring(0, 8));
        }
        return v;
    });
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