import { $ } from '../helper/dom.js';
import { hex2rgb, rgb2hex } from '../helper/color.js';

let color;
let material;

export function init(o) {
    color = o.color;
    material = o.material;
    
    $('#el_fgColor').oninput = handleColor;

    $('#el_fgColor').value = rgb2hex(color);

    update();
}

function handleColor(e) {
    color = hex2rgb(e.target.value);
    update();
}

function update() {
    material.emissiveColor.set(...color);
}
