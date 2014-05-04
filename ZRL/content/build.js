({

    appDir: './',
    baseUrl: './js',
    dir: './dist',
    modules: [
        {
            name:'index'
        },
        {
            name: 'bootstrap'
        } 
    ],
    fileExclusionRegExp: /^(r|build)\.js$/,
    optimizeCss: 'standard',
    removeCombined: true,
    paths: {
        ZrlStrings: 'ZrlStrings',
        jquery: "jquery-2.1.0",
        jqueryui: "jquery-ui-1.10.4",
        qrcode: "jquery.qrcode",
        qrcodebase: "qrcode",
        md5: "jquery.md5",
        bootstrap: "bootstrap"
    },
   
    shim: {
        "bootstrap": {
            deps: ['jquery']
        },
        'jqueryui': {
            deps: ['jquery'],
            exports: "$"
        },
        "qrcode": {
            deps: ['jquery', 'qrcodebase'],
            exports: "$"
        },
        "md5": {
            deps: ['jquery'],
            exports: "$"
        },
    }
})