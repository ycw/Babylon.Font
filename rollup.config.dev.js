import typescript from "rollup-plugin-typescript2";

export default {
    input: "./src/index.ts",
    output: {
        file: "./build/babylon.font.js",
        format: "es",
        sourcemap: true
    },
    plugins: [
        typescript({
            useTsconfigDeclarationDir: true
        })
    ]
};