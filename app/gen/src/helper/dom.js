export function $(sel, ctx) {
    return (ctx || document).querySelector(sel);
}