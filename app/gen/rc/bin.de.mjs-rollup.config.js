import { terser } from 'rollup-plugin-terser'

export default [{
    input: './src/helper/serde/bin/de.js',
    output: {
        file: './dist/bin.de.mjs',
        format: 'esm',
        compact: true,
        sourcemap: true,
        plugins: [
            terser()
        ]
    }
}]