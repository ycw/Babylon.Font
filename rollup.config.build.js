import resolve from 'rollup-plugin-node-resolve';
import commonjs from 'rollup-plugin-commonjs';
import typescript from 'rollup-plugin-typescript2';
import minify from 'rollup-plugin-babel-minify';
import dts from 'rollup-plugin-dts';

export default [{
    input: './src/babylon.font.ts',
    output: {
        file: './dist/babylon.font.js',
        format: 'es',
        sourcemap: true
    },
    plugins: [
        // Resolve source specifier by node style
        resolve(),
        // If a source is in commonjs style, transpiles it to ESM
        commonjs(),
        // Intergrate with typescript
        typescript({
            tsconfig: 'tsconfig.json',
            useTsconfigDeclarationDir: true
        }),
        // Minify
        minify({
            comments: false
        })
    ]
}, {
    input: './dist/dts/babylon.font.d.ts',
    output: [{
        file: './dist/babylon.font.d.ts',
        format: 'es',
    }],
    plugins: [
        dts()
    ]
}];