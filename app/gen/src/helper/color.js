// '#RRGGBB' to [r,g,b]
export function hex2rgb(s) {
    const r = parseInt(s.substring(1, 3), 16) / 255;
    const g = parseInt(s.substring(3, 5), 16) / 255;
    const b = parseInt(s.substring(5, 7), 16) / 255;
    return [r, g, b];
}

// [r,g,b] to '#RRGGBB'
export function rgb2hex([r, g, b]) {
    const R = (r * 255 | 0).toString(16).padStart(2, '0');
    const G = (g * 255 | 0).toString(16).padStart(2, '0');
    const B = (b * 255 | 0).toString(16).padStart(2, '0');
    return `#${R}${G}${B}`;
}
