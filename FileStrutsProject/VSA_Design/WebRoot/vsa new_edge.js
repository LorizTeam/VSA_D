/*jslint */
/*global AdobeEdge: false, window: false, document: false, console:false, alert: false */
(function (compId) {

    "use strict";
    var im='images/',
        aud='media/',
        vid='media/',
        js='js/',
        fonts = {
        },
        opts = {
            'gAudioPreloadPreference': 'auto',
            'gVideoPreloadPreference': 'auto'
        },
        resources = [
        ],
        scripts = [
        ],
        symbols = {
            "stage": {
                version: "5.0.0",
                minimumCompatibleVersion: "5.0.0",
                build: "5.0.0.375",
                scaleToFit: "both",
                centerStage: "horizontal",
                resizeInstances: false,
                content: {
                    dom: [
                        {
                            id: 'vsalogo',
                            display: 'none',
                            type: 'image',
                            rect: ['0px', '469px', '236px', '178px', 'auto', 'auto'],
                            opacity: 0,
                            fill: ["rgba(0,0,0,0)",im+"vsalogo.png",'0px','0px'],
                            filter: [0, 0, 0, 1, 0, 0, 0, 0, "rgba(0,0,0,0)", 0, 0, 0]
                        },
                        {
                            id: 'vsctlogo',
                            display: 'none',
                            type: 'image',
                            rect: ['143px', '478px', '432px', '147px', 'auto', 'auto'],
                            opacity: 0,
                            fill: ["rgba(0,0,0,0)",im+"vsctlogo.png",'0px','0px'],
                            filter: [0, 0, 1, 1, 0, 0, 0, 0, "rgba(0,0,0,0)", 0, 0, 0]
                        },
                        {
                            id: 'wvslogo_stroke2',
                            type: 'image',
                            rect: ['484px', '482px', '343px', '122px', 'auto', 'auto'],
                            fill: ["rgba(0,0,0,0)",im+"wvslogo%20stroke.png",'0px','0px']
                        },
                        {
                            id: 'plzlogo',
                            display: 'none',
                            type: 'image',
                            rect: ['822px', '484px', '188px', '111px', 'auto', 'auto'],
                            opacity: 0.20512799918652,
                            fill: ["rgba(0,0,0,0)",im+"plzlogo.png",'0px','0px'],
                            filter: [0, 0, 1, 1, 0, 0, 0, 0, "rgba(0,0,0,0)", 0, 0, 0]
                        },
                        {
                            id: 'vsalogo2',
                            display: 'block',
                            type: 'image',
                            rect: ['-2px', '468px', '240px', '180px', 'auto', 'auto'],
                            overflow: 'hidden',
                            fill: ["rgba(0,0,0,0)",im+"vsalogo.png",'0px','0px']
                        },
                        {
                            id: 'architect',
                            type: 'image',
                            rect: ['22px', '470px', '240px', '144px', 'auto', 'auto'],
                            overflow: 'visible',
                            opacity: 1,
                            fill: ["rgba(0,0,0,0)",im+"architect.png",'0px','0px'],
                            filter: [0, 0, 1, 0, 0, 0, 0, 0, "rgba(0,0,0,0)", 0, 0, 0]
                        },
                        {
                            id: 'drawing3',
                            type: 'image',
                            rect: ['761px', '470px', '240px', '144px', 'auto', 'auto'],
                            fill: ["rgba(0,0,0,0)",im+"drawing3.png",'0px','0px']
                        },
                        {
                            id: 'plzlogo2',
                            type: 'image',
                            rect: ['779px', '469px', '205px', '122px', 'auto', 'auto'],
                            fill: ["rgba(0,0,0,0)",im+"plzlogo.png",'0px','0px']
                        },
                        {
                            id: 'vsa_logo_black22',
                            type: 'image',
                            rect: ['641px', '209px', '449px', '299px', 'auto', 'auto'],
                            fill: ["rgba(0,0,0,0)",im+"vsa%20logo%20black2.png",'0px','0px']
                        },
                        {
                            id: 'engineerin',
                            type: 'image',
                            rect: ['282px', '470px', '240px', '144px', 'auto', 'auto'],
                            opacity: 1,
                            fill: ["rgba(0,0,0,0)",im+"engineerin.png",'0px','0px'],
                            filter: [0, 0, 1, 0, 0, 0, 0, 0, "rgba(0,0,0,0)", 0, 0, 0]
                        },
                        {
                            id: 'vsctlogo2',
                            type: 'image',
                            rect: ['262px', '522px', '256px', '39px', 'auto', 'auto'],
                            fill: ["rgba(0,0,0,0)",im+"vsctlogo2.png",'0px','0px']
                        },
                        {
                            id: 'interior',
                            type: 'image',
                            rect: ['531px', '470px', '240px', '144px', 'auto', 'auto'],
                            opacity: 1,
                            fill: ["rgba(0,0,0,0)",im+"interior.png",'0px','0px'],
                            filter: [0, 0, 1, 0, 0, 0, 0, 0, "rgba(0,0,0,0)", 0, 0, 0]
                        },
                        {
                            id: 'wvslogo_stroke22',
                            type: 'image',
                            rect: ['532px', '518px', '218px', '40px', 'auto', 'auto'],
                            fill: ["rgba(0,0,0,0)",im+"wvslogo%20stroke2.png",'0px','0px']
                        }
                    ],
                    style: {
                        '${Stage}': {
                            isStage: true,
                            rect: ['null', 'null', '1021px', '600px', 'auto', 'auto'],
                            sizeRange: ['50px','1024px','',''],
                            overflow: 'hidden',
                            fill: ["rgba(255,255,255,0.00)",[270,[['rgba(255,255,255,0.00)',0],['rgba(255,255,255,0.00)',100]]]]
                        }
                    }
                },
                timeline: {
                    duration: 7336,
                    autoPlay: true,
                    data: [
                        [
                            "eid35",
                            "filter.contrast",
                            5189,
                            476,
                            "linear",
                            "${vsctlogo}",
                            '1',
                            '0'
                        ],
                        [
                            "eid377",
                            "opacity",
                            3500,
                            802,
                            "linear",
                            "${wvslogo_stroke2}",
                            '0',
                            '1'
                        ],
                        [
                            "eid378",
                            "opacity",
                            5664,
                            421,
                            "linear",
                            "${wvslogo_stroke2}",
                            '1',
                            '0'
                        ],
                        [
                            "eid448",
                            "opacity",
                            500,
                            621,
                            "linear",
                            "${vsa_logo_black22}",
                            '0',
                            '1'
                        ],
                        [
                            "eid484",
                            "top",
                            7336,
                            0,
                            "linear",
                            "${drawing3}",
                            '470px',
                            '470px'
                        ],
                        [
                            "eid117",
                            "opacity",
                            2792,
                            802,
                            "linear",
                            "${vsctlogo}",
                            '0',
                            '1'
                        ],
                        [
                            "eid498",
                            "opacity",
                            3594,
                            1116,
                            "linear",
                            "${vsctlogo}",
                            '1',
                            '0.99'
                        ],
                        [
                            "eid499",
                            "opacity",
                            4710,
                            954,
                            "linear",
                            "${vsctlogo}",
                            '0.99',
                            '1'
                        ],
                        [
                            "eid44",
                            "opacity",
                            5664,
                            421,
                            "linear",
                            "${vsctlogo}",
                            '1',
                            '0'
                        ],
                        [
                            "eid251",
                            "display",
                            0,
                            0,
                            "linear",
                            "${plzlogo}",
                            'none',
                            'none'
                        ],
                        [
                            "eid252",
                            "display",
                            4166,
                            0,
                            "linear",
                            "${plzlogo}",
                            'none',
                            'block'
                        ],
                        [
                            "eid450",
                            "filter.blur",
                            928,
                            621,
                            "linear",
                            "${vsa_logo_black22}",
                            '40px',
                            '0px'
                        ],
                        [
                            "eid506",
                            "display",
                            0,
                            0,
                            "linear",
                            "${vsctlogo2}",
                            'block',
                            'none'
                        ],
                        [
                            "eid37",
                            "filter.contrast",
                            5189,
                            476,
                            "linear",
                            "${plzlogo}",
                            '1',
                            '0'
                        ],
                        [
                            "eid483",
                            "left",
                            7336,
                            0,
                            "linear",
                            "${drawing3}",
                            '761px',
                            '761px'
                        ],
                        [
                            "eid352",
                            "opacity",
                            1939,
                            802,
                            "linear",
                            "${vsalogo}",
                            '0',
                            '1'
                        ],
                        [
                            "eid353",
                            "opacity",
                            5664,
                            421,
                            "linear",
                            "${vsalogo}",
                            '1',
                            '0'
                        ],
                        [
                            "eid309",
                            "opacity",
                            5842,
                            671,
                            "linear",
                            "${interior}",
                            '0',
                            '1'
                        ],
                        [
                            "eid376",
                            "filter.contrast",
                            5282,
                            382,
                            "linear",
                            "${wvslogo_stroke2}",
                            '1',
                            '0'
                        ],
                        [
                            "eid482",
                            "top",
                            7336,
                            0,
                            "linear",
                            "${architect}",
                            '470px',
                            '470px'
                        ],
                        [
                            "eid382",
                            "display",
                            2083,
                            0,
                            "linear",
                            "${vsalogo}",
                            'none',
                            'block'
                        ],
                        [
                            "eid238",
                            "display",
                            0,
                            0,
                            "linear",
                            "${engineerin}",
                            'none',
                            'none'
                        ],
                        [
                            "eid240",
                            "display",
                            5843,
                            0,
                            "linear",
                            "${engineerin}",
                            'none',
                            'block'
                        ],
                        [
                            "eid402",
                            "opacity",
                            5842,
                            671,
                            "linear",
                            "${drawing3}",
                            '0',
                            '1'
                        ],
                        [
                            "eid244",
                            "display",
                            0,
                            0,
                            "linear",
                            "${vsctlogo}",
                            'none',
                            'none'
                        ],
                        [
                            "eid248",
                            "display",
                            2792,
                            0,
                            "linear",
                            "${vsctlogo}",
                            'none',
                            'block'
                        ],
                        [
                            "eid214",
                            "display",
                            0,
                            0,
                            "linear",
                            "${architect}",
                            'none',
                            'none'
                        ],
                        [
                            "eid217",
                            "display",
                            5843,
                            0,
                            "linear",
                            "${architect}",
                            'none',
                            'block'
                        ],
                        [
                            "eid479",
                            "left",
                            7336,
                            0,
                            "linear",
                            "${interior}",
                            '531px',
                            '531px'
                        ],
                        [
                            "eid512",
                            "display",
                            0,
                            0,
                            "linear",
                            "${plzlogo2}",
                            'block',
                            'none'
                        ],
                        [
                            "eid403",
                            "display",
                            0,
                            0,
                            "linear",
                            "${drawing3}",
                            'none',
                            'none'
                        ],
                        [
                            "eid404",
                            "display",
                            5843,
                            0,
                            "linear",
                            "${drawing3}",
                            'none',
                            'block'
                        ],
                        [
                            "eid485",
                            "left",
                            7336,
                            0,
                            "linear",
                            "${engineerin}",
                            '282px',
                            '282px'
                        ],
                        [
                            "eid310",
                            "opacity",
                            5842,
                            671,
                            "linear",
                            "${architect}",
                            '0',
                            '1'
                        ],
                        [
                            "eid449",
                            "left",
                            5121,
                            1031,
                            "linear",
                            "${vsa_logo_black22}",
                            '314px',
                            '641px'
                        ],
                        [
                            "eid458",
                            "left",
                            6152,
                            0,
                            "linear",
                            "${vsa_logo_black22}",
                            '641px',
                            '641px'
                        ],
                        [
                            "eid509",
                            "display",
                            0,
                            0,
                            "linear",
                            "${wvslogo_stroke22}",
                            'block',
                            'none'
                        ],
                        [
                            "eid486",
                            "top",
                            7336,
                            0,
                            "linear",
                            "${engineerin}",
                            '470px',
                            '470px'
                        ],
                        [
                            "eid481",
                            "left",
                            7336,
                            0,
                            "linear",
                            "${architect}",
                            '22px',
                            '22px'
                        ],
                        [
                            "eid500",
                            "display",
                            0,
                            0,
                            "linear",
                            "${vsalogo2}",
                            'block',
                            'none'
                        ],
                        [
                            "eid312",
                            "opacity",
                            5842,
                            671,
                            "linear",
                            "${engineerin}",
                            '0',
                            '1'
                        ],
                        [
                            "eid354",
                            "filter.contrast",
                            5189,
                            476,
                            "linear",
                            "${vsalogo}",
                            '1',
                            '0'
                        ],
                        [
                            "eid13",
                            "opacity",
                            4166,
                            773,
                            "linear",
                            "${plzlogo}",
                            '0',
                            '1'
                        ],
                        [
                            "eid45",
                            "opacity",
                            5664,
                            421,
                            "linear",
                            "${plzlogo}",
                            '1',
                            '0'
                        ],
                        [
                            "eid480",
                            "top",
                            7336,
                            0,
                            "linear",
                            "${interior}",
                            '470px',
                            '470px'
                        ],
                        [
                            "eid230",
                            "display",
                            0,
                            0,
                            "linear",
                            "${interior}",
                            'none',
                            'none'
                        ],
                        [
                            "eid232",
                            "display",
                            5843,
                            0,
                            "linear",
                            "${interior}",
                            'none',
                            'block'
                        ]
                    ]
                }
            }
        };

    AdobeEdge.registerCompositionDefn(compId, symbols, fonts, scripts, resources, opts);

    if (!window.edge_authoring_mode) AdobeEdge.getComposition(compId).load("vsa%20new_edgeActions.js");
})("EDGE-1385226");
