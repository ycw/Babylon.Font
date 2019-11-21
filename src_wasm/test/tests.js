const { testFont } = require('./util/index.js');



function test(wasm, { font0 }) {
    // Test first font

    const ppc = 1;
    const eps = 0.001;

    testFont(wasm, font0, ppc, eps, (testChar) => {
        testChar('(', () => [
            { nHoles: 0, count: 1 }
        ]);
        testChar('i', () => [
            { nHoles: 0, count: 2 }
        ]);
        testChar('e', () => [
            { nHoles: 1, count: 1 }
        ]);
        testChar('é', () => [
            { nHoles: 0, count: 1 },
            { nHoles: 1, count: 1 }
        ]);
        testChar(' ', ($) => {
            $.should('return empty shapes[]', (shapes) => shapes.length == 0);
        });
    });

    // .. Test other font here ..
}



module.exports = {
    test
};