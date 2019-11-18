import { $ } from '../helper/dom.js';
import { hex2rgb, rgb2hex } from '../helper/color.js';

let color;
let material;
let isEmissive;

export function init(o) {
    color = o.color;
    material = o.material;
    isEmissive = o.isEmissive;

    $('#el_fgColor').oninput = handleColor;
    $('#el_isEmissiveFgColor').oninput = handleIsEmissive;

    $('#el_fgColor').value = rgb2hex(color);
    $('#el_isEmissiveFgColor').value = Number(isEmissive);

    update();
}

function handleColor(e) {
    color = hex2rgb(e.target.value);
    update();
}

function handleIsEmissive(e) {
    isEmissive = Boolean(parseInt(e.target.value));
    update();
}

function update() {
    if (isEmissive) {
        material.diffuseColor.set(0, 0, 0);
        material.emissiveColor.set(...color);
        material.disableLighting = true;
    } else {
        material.diffuseColor.set(...color);
        material.emissiveColor.set(0, 0, 0);
        material.disableLighting = false;
    }
}
