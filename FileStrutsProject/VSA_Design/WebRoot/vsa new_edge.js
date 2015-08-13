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
                            rect: ['12px', '422px', '236px', '178px', 'auto', 'auto'],
                            opacity: 0,
                            fill: ["rgba(0,0,0,0)",im+"vsalogo.png",'0px','0px'],
                            filter: [0, 0, 0, 1, 0, 0, 0, 0, "rgba(0,0,0,0)", 0, 0, 0]
                        },
                        {
                            id: 'vsctlogo',
                            display: 'none',
                            type: 'image',
                            rect: ['418px', '430px', '432px', '147px', 'auto', 'auto'],
                            opacity: 0,
                            fill: ["rgba(0,0,0,0)",im+"vsctlogo.png",'0px','0px'],
                            filter: [0, 0, 1, 1, 0, 0, 0, 0, "rgba(0,0,0,0)", 0, 0, 0]
                        },
                        {
                            id: 'plzlogo',
                            display: 'none',
                            type: 'image',
                            rect: ['800px', '436px', '188px', '111px', 'auto', 'auto'],
                            opacity: 0.20512799918652,
                            fill: ["rgba(0,0,0,0)",im+"plzlogo.png",'0px','0px'],
                            filter: [0, 0, 1, 1, 0, 0, 0, 0, "rgba(0,0,0,0)", 0, 0, 0]
                        },
                        {
                            id: 'vsalogo2',
                            type: 'image',
                            rect: ['0px', '430px', '256px', '192px', 'auto', 'auto'],
                            overflow: 'hidden',
                            fill: ["rgba(0,0,0,0)",im+"vsalogo.png",'0px','0px']
                        },
                        {
                            id: 'architect',
                            type: 'image',
                            rect: ['57px', '462px', '164px', '99px', 'auto', 'auto'],
                            overflow: 'visible',
                            opacity: 1,
                            fill: ["rgba(0,0,0,0)",im+"architect.png",'0px','0px'],
                            filter: [0, 0, 1, 0, 0, 0, 0, 0, "rgba(0,0,0,0)", 0, 0, 0]
                        },
                        {
                            id: 'drawing3',
                            type: 'image',
                            rect: ['791px', '461px', '164px', '99px', 'auto', 'auto'],
                            opacity: 1,
                            fill: ["rgba(0,0,0,0)",im+"drawing3.png",'0px','0px']
                        },
                        {
                            id: 'plzlogo2',
                            type: 'image',
                            rect: ['778px', '443px', '205px', '122px', 'auto', 'auto'],
                            fill: ["rgba(0,0,0,0)",im+"plzlogo.png",'0px','0px']
                        },
                        {
                            id: 'vsa_logo_black22',
                            type: 'image',
                            rect: ['656px', '188px', '372px', '248px', 'auto', 'auto'],
                            fill: ["rgba(0,0,0,0)",im+"vsa%20logo%20black2.png",'0px','0px']
                        },
                        {
                            id: 'engineerin',
                            type: 'image',
                            rect: ['552px', '461px', '164px', '99px', 'auto', 'auto'],
                            opacity: 1,
                            fill: ["rgba(0,0,0,0)",im+"engineerin.png",'0px','0px'],
                            filter: [0, 0, 1, 0, 0, 0, 0, 0, "rgba(0,0,0,0)", 0, 0, 0]
                        },
                        {
                            id: 'vsctlogo2',
                            type: 'image',
                            rect: ['511px', '491px', '256px', '39px', 'auto', 'auto'],
                            fill: ["rgba(0,0,0,0)",im+"vsctlogo2.png",'0px','0px']
                        },
                        {
                            id: 'interior',
                            type: 'image',
                            rect: ['292px', '462px', '164px', '99px', 'auto', 'auto'],
                            opacity: 1,
                            fill: ["rgba(0,0,0,0)",im+"interior.png",'0px','0px'],
                            filter: [0, 0, 1, 0, 0, 0, 0, 0, "rgba(0,0,0,0)", 0, 0, 0]
                        },
                        {
                            id: 'wvs',
                            type: 'image',
                            rect: ['309px', '467px', '129px', '49px', 'auto', 'auto'],
                            fill: ["rgba(0,0,0,0)",im+"wvs.png",'0px','0px']
                        },
                        {
                            id: 'wvsCopy',
                            display: 'none',
                            type: 'image',
                            rect: ['309px', '479px', '129px', '49px', 'auto', 'auto'],
                            opacity: 1,
                            fill: ["rgba(0,0,0,0)",im+"wvs.png",'0px','0px']
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
                            5382,
                            374,
                            "linear",
                            "${vsctlogo}",
                            '1',
                            '0'
                        ],
                        [
                            "eid579",
                            "display",
                            0,
                            0,
                            "linear",
                            "${wvsCopy}",
                            'none',
                            'none'
                        ],
                        [
                            "eid578",
                            "display",
                            7336,
                            0,
                            "linear",
                            "${wvsCopy}",
                            'block',
                            'none'
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
                            "eid117",
                            "opacity",
                            3500,
                            630,
                            "linear",
                            "${vsctlogo}",
                            '0',
                            '1'
                        ],
                        [
                            "eid498",
                            "opacity",
                            4130,
                            876,
                            "linear",
                            "${vsctlogo}",
                            '1',
                            '0.99'
                        ],
                        [
                            "eid499",
                            "opacity",
                            5006,
                            749,
                            "linear",
                            "${vsctlogo}",
                            '0.99',
                            '1'
                        ],
                        [
                            "eid44",
                            "opacity",
                            5755,
                            330,
                            "linear",
                            "${vsctlogo}",
                            '1',
                            '0'
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
                            "eid565",
                            "opacity",
                            2698,
                            802,
                            "linear",
                            "${wvs}",
                            '0',
                            '1'
                        ],
                        [
                            "eid566",
                            "opacity",
                            5778,
                            307,
                            "linear",
                            "${wvs}",
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
                            "eid631",
                            "display",
                            7336,
                            0,
                            "linear",
                            "${vsalogo2}",
                            'none',
                            'none'
                        ],
                        [
                            "eid525",
                            "width",
                            7336,
                            0,
                            "linear",
                            "${architect}",
                            '164px',
                            '164px'
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
                            "eid604",
                            "left",
                            6000,
                            0,
                            "linear",
                            "${vsalogo}",
                            '12px',
                            '12px'
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
                            "eid649",
                            "opacity",
                            7336,
                            0,
                            "linear",
                            "${interior}",
                            '1',
                            '1'
                        ],
                        [
                            "eid533",
                            "top",
                            7336,
                            0,
                            "linear",
                            "${architect}",
                            '462px',
                            '462px'
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
                            "eid568",
                            "filter.contrast",
                            5500,
                            278,
                            "linear",
                            "${wvs}",
                            '1',
                            '0'
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
                            "eid580",
                            "display",
                            7336,
                            0,
                            "linear",
                            "${vsctlogo2}",
                            'none',
                            'none'
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
                            "eid653",
                            "opacity",
                            6513,
                            823,
                            "linear",
                            "${drawing3}",
                            '1',
                            '0.99000000953674'
                        ],
                        [
                            "eid524",
                            "height",
                            7336,
                            0,
                            "linear",
                            "${architect}",
                            '99px',
                            '99px'
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
                            3500,
                            0,
                            "linear",
                            "${vsctlogo}",
                            'none',
                            'block'
                        ],
                        [
                            "eid654",
                            "display",
                            7336,
                            0,
                            "linear",
                            "${vsctlogo}",
                            'block',
                            'block'
                        ],
                        [
                            "eid635",
                            "height",
                            7336,
                            0,
                            "linear",
                            "${vsalogo2}",
                            '192px',
                            '192px'
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
                            "eid621",
                            "display",
                            7336,
                            0,
                            "linear",
                            "${drawing3}",
                            'block',
                            'block'
                        ],
                        [
                            "eid636",
                            "width",
                            7336,
                            0,
                            "linear",
                            "${vsalogo2}",
                            '256px',
                            '256px'
                        ],
                        [
                            "eid572",
                            "left",
                            5006,
                            1494,
                            "linear",
                            "${vsa_logo_black22}",
                            '314px',
                            '662px'
                        ],
                        [
                            "eid532",
                            "left",
                            7336,
                            0,
                            "linear",
                            "${architect}",
                            '57px',
                            '57px'
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
                            "eid650",
                            "display",
                            7336,
                            0,
                            "linear",
                            "${plzlogo2}",
                            'none',
                            'none'
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
