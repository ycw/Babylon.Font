const { ShapesTester } = require('./ShapesTester.js');
const { ShapesReporter } = require('./ShapesReporter.js');



function map(wasm, shapesPtr) {
    const shapes = [];
    const F64 = new Float64Array(wasm.memory.buffer);
    for (const shapePtr of wasm.__getArray(shapesPtr)) {
        const shape = { fill: undefined, holes: [] };
        shapes.push(shape);
        for (const polygonPtr of wasm.__getArray(shapePtr)) {
            let polygon = [];
            if (shape.fill === undefined) {
                shape.fill = polygon;
            } else {
                shape.holes.push(polygon);
            }
            for (const vertexPtr of wasm.__getArray(polygonPtr)) {
                polygon.push([
                    F64[(vertexPtr >>> 3) + 0], // x
                    F64[(vertexPtr >>> 3) + 1]  // y
                ]);
            }
        }
    }
    return shapes;
}



function load(wasm, otPath) {
    const heap = wasm.memory.buffer;
    const view = new DataView(heap);
    const SZ = 8;
    let i = 0;
    let x = 0;
    let y = 0;

    for (const cmd of otPath.commands) {
        view.setUint8(i, cmd.type.codePointAt());
        i += 1;
        if (cmd.type == 'M' || cmd.type == 'L') {
            view.setFloat64(i, cmd.x, true);
            i += SZ;
            view.setFloat64(i, cmd.y, true);
            i += SZ;
            x = cmd.x;
            y = cmd.y;
            continue;
        }
        if (cmd.type == 'Q') {
            view.setFloat64(i, x, true);
            i += SZ;
            view.setFloat64(i, y, true);
            i += SZ;
            view.setFloat64(i, cmd.x1, true);
            i += SZ;
            view.setFloat64(i, cmd.y1, true);
            i += SZ;
            view.setFloat64(i, cmd.x, true);
            i += SZ;
            view.setFloat64(i, cmd.y, true);
            i += SZ;
            x = cmd.x;
            y = cmd.y;
            continue;
        }
        if (cmd.type == 'C') {
            view.setFloat64(i, x, true);
            i += SZ;
            view.setFloat64(i, y, true);
            i += SZ;
            view.setFloat64(i, cmd.x1, true);
            i += SZ;
            view.setFloat64(i, cmd.y1, true);
            i += SZ;
            view.setFloat64(i, cmd.x2, true);
            i += SZ;
            view.setFloat64(i, cmd.y2, true);
            i += SZ;
            view.setFloat64(i, cmd.x, true);
            i += SZ;
            view.setFloat64(i, cmd.y, true);
            i += SZ;
            x = cmd.x;
            y = cmd.y;
            continue;
        }
        // 'Z' .. noop
    }
    return i;
}



function testFont(wasm, otFont, ppc, eps, fn) {
    // 
    // 1. Test by describing shapes  
    //    - by returning an array of shape descriptor
    //    - shape descriptors order doesn't matter
    //    - e.g. 
    //          testChar('i', () => [{ nHoles: 0, count:2 }])
    //          // 2 shapes having no holes 
    // 2. Test complex logic by using passin tester as arg#0
    //    - e.g. 
    //          testChar(' ', (tester) => { 
    //            tester.should('empty', (shapes) => {
    //              return shapes.length === 0
    //            })
    //          })
    //
    function testChar(ch, specsFn) {
        const otPath = otFont.getPath(ch, 0, 0, 1);
        const otFontFmt = otFont.outlineFormat == 'cff' ? 1 : 0;
        const bytesUsed = load(wasm, otPath);
        const result = wasm.compile(bytesUsed, otFontFmt, ppc, eps);
        const shapes = map(wasm, result);

        const shapesTester = new ShapesTester(shapes, ch);
        const oDescriptors = specsFn(shapesTester);

        // add specs for shape descriptors if any
        if (oDescriptors !== undefined) {
            // clone descriptors
            const nuDescriptors = oDescriptors.map(d => Object.assign({}, d));
            shapesTester.should('fulfill shape descriptors', (shapes) => {
                for (const shape of shapes) {
                    const nHoles = shape.holes.length;
                    for (const nuDescriptor of nuDescriptors) {
                        if (nHoles === nuDescriptor.nHoles) {
                            nuDescriptor.count -= 1;
                        }
                    }
                }
                for (const [i, nuDescriptor] of nuDescriptors.entries()) {
                    if (nuDescriptor.count !== 0) {
                        const c = oDescriptors[i].count;
                        const h = oDescriptors[i].nHoles;
                        const cLabel = 'shape' + (c == 1 ? '' : 's');
                        const hLabel = 'hole' + (h == 1 ? '' : 's');
                        throw [
                            `should be <${c}> ${cLabel} having `,
                            `${h} ${hLabel} but get `,
                            `<${nuDescriptor.count}>`
                        ].join('');
                    }
                }
                return true;
            });
        }

        // run all specs in tester
        shapesTester.run();

        // print report
        const shapeReporter = new ShapesReporter();
        shapeReporter.report(shapesTester);
    }

    fn(testChar);
}



module.exports = {
    testFont
};