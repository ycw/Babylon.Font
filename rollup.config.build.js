import typescript from "rollup-plugin-typescript2";
import { terser } from "rollup-plugin-terser";
import dts from "rollup-plugin-dts";

export default [{
    input: "./src/index.ts",
    output: {
        file: "./build/babylon.font.js",
        format: "es",
        sourcemap: false
    },
    plugins: [
        typescript({
            useTsconfigDeclarationDir: true
        }),
        terser({
            format: {
                comments: false
            }
        })
    ]
}, {
    input: "./typings/index.d.ts",
    output: [{
        file: "./build/babylon.font.d.ts",
        format: "es",
    }],
    plugins: [
        dts()
    ]
}];