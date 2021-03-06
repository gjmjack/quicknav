require.config({
    baseUrl: "/content/js",
    paths: {
        ZrlStrings: 'ZrlStrings',
        jquery: "jquery-2.1.0",
        jqueryui: "jquery-ui-1.10.4",
        qrcode: "jquery.qrcode",
        qrcodebase: "qrcode",
        md5: "jquery.md5",
        jvalidate: "jquery-validate",
        bootstrap: "bootstrap"
    },
    waitSeconds: 15,
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
        "jvalidate": {
            deps: ['jquery'],
            exports: "$"
        },
    }
});