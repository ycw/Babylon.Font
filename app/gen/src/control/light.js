import { $ } from '../helper/dom.js';
import { hex2rgb, rgb2hex } from '../helper/color.js';

let angle;
let distance;
let height;
let intensity;
let light;
let color;

export function init(o) {
    angle = o.angle;
    distance = o.distance;
    height = o.height;
    intensity = o.intensity;
    light = o.light;
    color = o.color;

    $('#el_lightAngle').oninput = handleAngle;
    $('#el_lightDistance').oninput = handleDistance;
    $('#el_lightHeight').oninput = handleHeight;
    $('#el_lightIntensity').oninput = handleIntensity;
    $('#el_lightColor').oninput = handleColor;

    $('#el_lightAngle').value = angle;
    $('#el_lightDistance').value = distance;
    $('#el_lightHeight').value = height;
    $('#el_lightIntensity').value = intensity;
    $('#el_lightColor').value = rgb2hex(color);

    update();
}

function handleAngle(e) {
    angle = parseFloat(e.target.value);
    update();
}

function handleDistance(e) {
    distance = parseFloat(e.target.value);
    update();
}

function handleHeight(e) {
    height = parseFloat(e.target.value);
    update();
}

function handleIntensity(e) {
    intensity = parseFloat(e.target.value);
    update();
}

function handleColor(e) {
    color = hex2rgb(e.target.value);
    update();
}

function update() {
    const a = angle * Math.PI / 180;
    light.position.x = distance * Math.sin(a);
    light.position.z = distance * Math.cos(a);
    light.position.y = height;
    light.setDirectionToTarget(BABYLON.Vector3.Zero());
    light.intensity = intensity;
    light.diffuse.set(...color);
}
