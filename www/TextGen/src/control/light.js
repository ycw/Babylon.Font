import { $ } from '../helper/dom.js';

let angle;
let distance;
let height;
let intensity;
let light;

export function init(o) {
    angle = o.angle;
    distance = o.distance;
    height = o.height;
    intensity = o.intensity;
    light = o.light;

    $('#el_lightAngle').oninput = handleAngle;
    $('#el_lightDistance').oninput = handleDistance;
    $('#el_lightHeight').oninput = handleHeight;
    $('#el_lightIntensity').oninput = handleIntensity;

    $('#el_lightAngle').value = angle;
    $('#el_lightDistance').value = distance;
    $('#el_lightHeight').value = height;
    $('#el_lightIntensity').value = intensity;
    
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

function update() {
    const a = angle * Math.PI / 180;
    light.position.x = distance * Math.sin(a);
    light.position.z = distance * Math.cos(a);
    light.position.y = height;
    light.setDirectionToTarget(BABYLON.Vector3.Zero());
    light.intensity = intensity;
}
