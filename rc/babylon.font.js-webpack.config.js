module.exports = [{
    mode: 'production',
    devtool: 'source-map',
    entry: './src/babylon.font.ts',
    output: {
        path: require('path').join(__dirname, '../dist/'),
        filename: 'babylon.font.js',
        library: 'BF',
        libraryTarget: 'var'
    },
    externals: {
        'babylonjs': 'BABYLON',
        'opentype.js': 'opentype'
    },
    module: {
        rules: [
            { test: /\.ts$/, use: [{ loader: 'ts-loader' }] },
        ]
    },
    resolve: {
        extensions: ['.ts', '.js']
    }
}]; 