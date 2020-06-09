const presets = ['@babel/preset-env'];
const plugins = [
    'babel-plugin-macros',
    '@babel/plugin-syntax-dynamic-import',
    '@babel/plugin-transform-destructuring',
    [
        '@babel/plugin-proposal-class-properties',
        {
            loose: true
        }
    ],
    [
        '@babel/plugin-proposal-object-rest-spread',
        {
            useBuiltIns: true
        }
    ],
    [
        '@babel/plugin-transform-runtime',
        {
            helpers: false,
            regenerator: true,
            corejs: false
        }
    ],
    [
        '@babel/plugin-transform-regenerator',
        {
            async: false
        }
    ]
];

module.exports = { presets, plugins };
