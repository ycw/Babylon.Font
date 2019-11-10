import { $ } from '../helper/dom.js';
import { hex2rgb, rgb2hex } from '../helper/color.js';

let color;
let alpha;
let scene;

export function init(o) {
    color = o.color;
    alpha = o.alpha;
    scene = o.scene;

    $('#el_bgColor').oninput = handleColor;
    $('#el_bgAlpha').oninput = handleAlpha;

    $('#el_bgColor').value = rgb2hex(color);
    $('#el_bgAlpha').value = alpha;

    update();
}

function handleColor(e) {
    color = hex2rgb(e.target.value);
    update();
}

function handleAlpha(e) {
    alpha = parseFloat(e.target.value);
    update();
}

function update() {
    // Fix Firefox bug
    if (alpha === 0) {
        scene.clearColor.set(0, 0, 0, 0);
        return;
    }
    scene.clearColor.set(...color, alpha);
}