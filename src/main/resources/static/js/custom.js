var CURRENT_URL = window.location.href.split("#")[0].split("?")[0], $BODY = $("body"), $MENU_TOGGLE = $("#menu_toggle"),
    $SIDEBAR_MENU = $("#sidebar-menu"), $SIDEBAR_FOOTER = $(".sidebar-footer"), $LEFT_COL = $(".left_col"),
    $RIGHT_COL = $(".right_col"), $NAV_MENU = $(".nav_menu"), $FOOTER = $("footer");

function init_sidebar() {
    function a() {
        $RIGHT_COL.css("min-height", $(window).height());
        var e = $BODY.outerHeight(), t = $BODY.hasClass("footer_fixed") ? -10 : $FOOTER.height(),
            a = $LEFT_COL.eq(1).height() + $SIDEBAR_FOOTER.height(), e = e < a ? a : e;
        e -= $NAV_MENU.height() + t, $RIGHT_COL.css("min-height", e)
    }

    function n() {
        $SIDEBAR_MENU.find("li").removeClass("active active-sm"), $SIDEBAR_MENU.find("li ul").slideUp()
    }

    $SIDEBAR_MENU.find("a").on("click", function (e) {
        var t = $(this).parent();
        t.is(".active") ? (t.removeClass("active active-sm"), $("ul:first", t).slideUp(function () {
            a()
        })) : (t.parent().is(".child_menu") ? $BODY.is("nav-sm") && (t.parent().is("child_menu") || n()) : n(), t.addClass("active"), $("ul:first", t).slideDown(function () {
            a()
        }))
    }), $MENU_TOGGLE.on("click", function () {
        $BODY.hasClass("nav-md") ? ($SIDEBAR_MENU.find("li.active ul").hide(), $SIDEBAR_MENU.find("li.active").addClass("active-sm").removeClass("active")) : ($SIDEBAR_MENU.find("li.active-sm ul").show(), $SIDEBAR_MENU.find("li.active-sm").addClass("active").removeClass("active-sm")), $BODY.toggleClass("nav-md nav-sm"), a(), $(".dataTable").each(function () {
            $(this).dataTable().fnDraw()
        })
    }), $SIDEBAR_MENU.find('a[href="' + CURRENT_URL + '"]').parent("li").addClass("current-page"), $SIDEBAR_MENU.find("a").filter(function () {
        return this.href == CURRENT_URL
    }).parent("li").addClass("current-page").parents("ul").slideDown(function () {
        a()
    }).parent().addClass("active"), $(window).smartresize(function () {
        a()
    }), a(), $.fn.mCustomScrollbar && $(".menu_fixed").mCustomScrollbar({
        autoHideScrollbar: !0,
        theme: "minimal",
        mouseWheel: {preventDefault: !0}
    })
}

$(document).ready(function () {
    $(".collapse-link").on("click", function () {
        var e = $(this).closest(".x_panel"), t = $(this).find("i"), a = e.find(".x_content");
        e.attr("style") ? a.slideToggle(200, function () {
            e.removeAttr("style")
        }) : (a.slideToggle(200), e.css("height", "auto")), t.toggleClass("fa-chevron-up fa-chevron-down")
    }), $(".close-link").click(function () {
        $(this).closest(".x_panel").remove()
    })
}), $(document).ready(function () {
    $('[data-toggle="tooltip"]').tooltip({container: "body"})
}), $(document).ready(function () {
    $(".progress .progress-bar")[0] && $(".progress .progress-bar").progressbar()
}), $(document).ready(function () {
    $(".js-switch")[0] && Array.prototype.slice.call(document.querySelectorAll(".js-switch")).forEach(function (e) {
        new Switchery(e, {color: "#26B99A"})
    })
}), $(document).ready(function () {
    $("input.flat")[0] && $(document).ready(function () {
        $("input.flat").iCheck({checkboxClass: "icheckbox_flat-purple", radioClass: "iradio_flat-purple"})
    })
}), $("table input").on("ifChecked", function () {
    checkState = "", $(this).parent().parent().parent().addClass("selected"), countChecked()
}), $("table input").on("ifUnchecked", function () {
    checkState = "", $(this).parent().parent().parent().removeClass("selected"), countChecked()
});
var checkState = "";

function countChecked() {
    "all" === checkState && $(".bulk_action input[name='table_records']").iCheck("check"), "none" === checkState && $(".bulk_action input[name='table_records']").iCheck("uncheck");
    var e = $(".bulk_action input[name='table_records']:checked").length;
    e ? ($(".column-title").hide(), $(".bulk-actions").show(), $(".action-cnt").html(e + " Records Selected")) : ($(".column-title").show(), $(".bulk-actions").hide())
}

function repearCheck() {
    for (var e = (new Date).getFullYear(), t = 0; t <= 5; t++) {
        var a = e + t;
        $(".year_limit").append("<option>" + a + "</option>")
    }
    $(".repeat_box [data-repeat='repeat']").prop("checked") ? ($(".result_repeat").show(), $(".result_norepeat").hide()) : ($(".result_repeat").hide(), $(".result_norepeat").show())
}

$(".bulk_action input").on("ifChecked", function () {
    checkState = "", $(this).parent().parent().parent().addClass("selected"), countChecked()
}), $(".bulk_action input").on("ifUnchecked", function () {
    checkState = "", $(this).parent().parent().parent().removeClass("selected"), countChecked()
}), $(".bulk_action input#check-all").on("ifChecked", function () {
    checkState = "all", countChecked()
}), $(".bulk_action input#check-all").on("ifUnchecked", function () {
    checkState = "none", countChecked()
}), $(".repeat_box input").on("ifChecked", function () {
    switch ($(this).attr("data-repeat")) {
        case"repeat":
            $(".result_repeat").show(), $(".result_norepeat").hide();
            break;
        case"no_repeat":
            $(".result_repeat").hide(), $(".result_norepeat").show()
    }
}), $(document).ready(function () {
    repearCheck(), $(".expand").on("click", function () {
        $(this).next().slideToggle(200), $expand = $(this).find(">:first-child"), "+" == $expand.text() ? $expand.text("-") : $expand.text("+")
    })
}), "undefined" != typeof NProgress && ($(document).ready(function () {
    NProgress.start()
}), $(window).on("load", function () {
    NProgress.done()
})), $(".del_img").on("click", function () {
    $(this).closest("li").remove()
});
var originalLeave = $.fn.popover.Constructor.prototype.leave;

function gd(e, t, a) {
    return new Date(e, t - 1, a).getTime()
}

function init_flot_chart() {
    if (void 0 !== $.plot) {
        console.log("init_flot_chart");
        for (var e = [[gd(2012, 1, 1), 17], [gd(2012, 1, 2), 74], [gd(2012, 1, 3), 6], [gd(2012, 1, 4), 39], [gd(2012, 1, 5), 20], [gd(2012, 1, 6), 85], [gd(2012, 1, 7), 7]], t = [[gd(2012, 1, 1), 82], [gd(2012, 1, 2), 23], [gd(2012, 1, 3), 66], [gd(2012, 1, 4), 9], [gd(2012, 1, 5), 119], [gd(2012, 1, 6), 6], [gd(2012, 1, 7), 9]], a = [], n = 0; n < 30; n++) a.push([new Date(Date.today().add(n).days()).getTime(), Math.floor(21 * Math.random()) + 20 + n + n + 10]);
        var o = {
            grid: {
                show: !0,
                aboveData: !0,
                color: "#3f3f3f",
                labelMargin: 10,
                axisMargin: 0,
                borderWidth: 0,
                borderColor: null,
                minBorderMargin: 5,
                clickable: !0,
                hoverable: !0,
                autoHighlight: !0,
                mouseActiveRadius: 100
            },
            series: {
                lines: {show: !0, fill: !0, lineWidth: 2, steps: !1},
                points: {show: !0, radius: 4.5, symbol: "circle", lineWidth: 3}
            },
            legend: {
                position: "ne",
                margin: [0, -25],
                noColumns: 0,
                labelBoxBorderColor: null,
                labelFormatter: function (e, t) {
                    return e + "&nbsp;&nbsp;"
                },
                width: 40,
                height: 1
            },
            colors: ["#96CA59", "#3F97EB", "#72c380", "#6f7a8a", "#f7cb38", "#5a8022", "#2c7282"],
            shadowSize: 0,
            tooltip: !0,
            tooltipOpts: {content: "%s: %y.0", xDateFormat: "%d/%m", shifts: {x: -30, y: -50}, defaultTheme: !1},
            yaxis: {min: 0},
            xaxis: {mode: "time", minTickSize: [1, "day"], timeformat: "%d/%m/%y", min: a[0][0], max: a[20][0]}
        };
        $("#chart_plot_01").length && (console.log("Plot1"), $.plot($("#chart_plot_01"), [e, t], {
            series: {
                lines: {
                    show: !1,
                    fill: !0
                },
                splines: {show: !0, tension: .4, lineWidth: 1, fill: .4},
                points: {radius: 0, show: !0},
                shadowSize: 2
            },
            grid: {
                verticalLines: !0,
                hoverable: !0,
                clickable: !0,
                tickColor: "#d5d5d5",
                borderWidth: 1,
                color: "#fff"
            },
            colors: ["rgba(38, 185, 154, 0.38)", "rgba(3, 88, 106, 0.38)"],
            xaxis: {
                tickColor: "rgba(51, 51, 51, 0.06)",
                mode: "time",
                tickSize: [1, "day"],
                axisLabel: "Date",
                axisLabelUseCanvas: !0,
                axisLabelFontSizePixels: 12,
                axisLabelFontFamily: "Verdana, Arial",
                axisLabelPadding: 10
            },
            yaxis: {ticks: 8, tickColor: "rgba(51, 51, 51, 0.06)"},
            tooltip: !1
        })), $("#chart_plot_02").length && (console.log("Plot2"), $.plot($("#chart_plot_02"), [{
            label: "Email Sent",
            data: a,
            lines: {fillColor: "rgba(150, 202, 89, 0.12)"},
            points: {fillColor: "#fff"}
        }], o)), $("#chart_plot_03").length && (console.log("Plot3"), $.plot($("#chart_plot_03"), [{
            label: "Registrations",
            data: [[0, 1], [1, 9], [2, 6], [3, 10], [4, 5], [5, 17], [6, 6], [7, 10], [8, 7], [9, 11], [10, 35], [11, 9], [12, 12], [13, 5], [14, 3], [15, 4], [16, 9]],
            lines: {fillColor: "rgba(150, 202, 89, 0.12)"},
            points: {fillColor: "#fff"}
        }], {
            series: {curvedLines: {apply: !0, active: !0, monotonicFit: !0}},
            colors: ["#26B99A"],
            grid: {
                borderWidth: {top: 0, right: 0, bottom: 1, left: 1},
                borderColor: {bottom: "#7F8790", left: "#7F8790"}
            }
        }))
    }
}

function init_starrr() {
    "undefined" != typeof starrr && (console.log("init_starrr"), $(".stars").starrr(), $(".stars-existing").starrr({rating: 4}), $(".stars").on("starrr:change", function (e, t) {
        $(".stars-count").html(t)
    }), $(".stars-existing").on("starrr:change", function (e, t) {
        $(".stars-count-existing").html(t)
    }))
}

function init_JQVmap() {
    void 0 !== jQuery.fn.vectorMap && (console.log("init_JQVmap"), $("#world-map-gdp").length && $("#world-map-gdp").vectorMap({
        map: "world_en",
        backgroundColor: null,
        color: "#ffffff",
        hoverOpacity: .7,
        selectedColor: "#666666",
        enableZoom: !0,
        showTooltip: !0,
        values: sample_data,
        scaleColors: ["#E6F2F0", "#149B7E"],
        normalizeFunction: "polynomial"
    }), $("#usa_map").length && $("#usa_map").vectorMap({
        map: "usa_en",
        backgroundColor: null,
        color: "#ffffff",
        hoverOpacity: .7,
        selectedColor: "#666666",
        enableZoom: !0,
        showTooltip: !0,
        values: sample_data,
        scaleColors: ["#E6F2F0", "#149B7E"],
        normalizeFunction: "polynomial"
    }))
}

function init_skycons() {
    if ("undefined" != typeof Skycons) {
        console.log("init_skycons");
        for (var e = new Skycons({color: "#73879C"}), t = ["clear-day", "clear-night", "partly-cloudy-day", "partly-cloudy-night", "cloudy", "rain", "sleet", "snow", "wind", "fog"], a = t.length; a--;) e.set(t[a], t[a]);
        e.play()
    }
}

function init_gauge() {
    var e, t, a;
    "undefined" != typeof Gauge && (console.log("init_gauge [" + $(".gauge-chart").length + "]"), console.log("init_gauge"), e = {
        lines: 12,
        angle: 0,
        lineWidth: .4,
        pointer: {length: .75, strokeWidth: .042, color: "#1D212A"},
        limitMax: "false",
        colorStart: "#1ABC9C",
        colorStop: "#1ABC9C",
        strokeColor: "#F0F3F3",
        generateGradient: !0
    }, $("#chart_gauge_01").length && (t = document.getElementById("chart_gauge_01"), t = new Gauge(t).setOptions(e)), $("#gauge-text").length && (t.maxValue = 6e3, t.animationSpeed = 32, t.set(3200), t.setTextField(document.getElementById("gauge-text"))), $("#chart_gauge_02").length && (a = document.getElementById("chart_gauge_02"), a = new Gauge(a).setOptions(e)), $("#gauge-text2").length && (a.maxValue = 9e3, a.animationSpeed = 32, a.set(2400), a.setTextField(document.getElementById("gauge-text2"))))
}

function init_sparklines() {
    void 0 !== jQuery.fn.sparkline && (console.log("init_sparklines"), $(".sparkline_one").sparkline([2, 4, 3, 4, 5, 4, 5, 4, 3, 4, 5, 6, 4, 5, 6, 3, 5, 4, 5, 4, 5, 4, 3, 4, 5, 6, 7, 5, 4, 3, 5, 6], {
        type: "bar",
        height: "125",
        barWidth: 13,
        colorMap: {7: "#a1a1a1"},
        barSpacing: 2,
        barColor: "#26B99A"
    }), $(".sparkline_two").sparkline([2, 4, 3, 4, 5, 4, 5, 4, 3, 4, 5, 6, 7, 5, 4, 3, 5, 6], {
        type: "bar",
        height: "40",
        barWidth: 9,
        colorMap: {7: "#a1a1a1"},
        barSpacing: 2,
        barColor: "#26B99A"
    }), $(".sparkline_three").sparkline([2, 4, 3, 4, 5, 4, 5, 4, 3, 4, 5, 6, 7, 5, 4, 3, 5, 6], {
        type: "line",
        width: "200",
        height: "40",
        lineColor: "#26B99A",
        fillColor: "rgba(223, 223, 223, 0.57)",
        lineWidth: 2,
        spotColor: "#26B99A",
        minSpotColor: "#26B99A"
    }), $(".sparkline11").sparkline([2, 4, 3, 4, 5, 4, 5, 4, 3, 4, 6, 2, 4, 3, 4, 5, 4, 5, 4, 3], {
        type: "bar",
        height: "40",
        barWidth: 8,
        colorMap: {7: "#a1a1a1"},
        barSpacing: 2,
        barColor: "#26B99A"
    }), $(".sparkline22").sparkline([2, 4, 3, 4, 7, 5, 4, 3, 5, 6, 2, 4, 3, 4, 5, 4, 5, 4, 3, 4, 6], {
        type: "line",
        height: "40",
        width: "200",
        lineColor: "#26B99A",
        fillColor: "#ffffff",
        lineWidth: 3,
        spotColor: "#34495E",
        minSpotColor: "#34495E"
    }), $(".sparkline_bar").sparkline([2, 4, 3, 4, 5, 4, 5, 4, 3, 4, 5, 6, 4, 5, 6, 3, 5], {
        type: "bar",
        colorMap: {7: "#a1a1a1"},
        barColor: "#26B99A"
    }), $(".sparkline_area").sparkline([5, 6, 7, 9, 9, 5, 3, 2, 2, 4, 6, 7], {
        type: "line",
        lineColor: "#26B99A",
        fillColor: "#26B99A",
        spotColor: "#4578a0",
        minSpotColor: "#728fb2",
        maxSpotColor: "#6d93c4",
        highlightSpotColor: "#ef5179",
        highlightLineColor: "#8ba8bf",
        spotRadius: 2.5,
        width: 85
    }), $(".sparkline_line").sparkline([2, 4, 3, 4, 5, 4, 5, 4, 3, 4, 5, 6, 4, 5, 6, 3, 5], {
        type: "line",
        lineColor: "#26B99A",
        fillColor: "#ffffff",
        width: 85,
        spotColor: "#34495E",
        minSpotColor: "#34495E"
    }), $(".sparkline_pie").sparkline([1, 1, 2, 1], {
        type: "pie",
        sliceColors: ["#26B99A", "#ccc", "#75BCDD", "#D66DE2"]
    }), $(".sparkline_discreet").sparkline([4, 6, 7, 7, 4, 3, 2, 1, 4, 4, 2, 4, 3, 7, 8, 9, 7, 6, 4, 3], {
        type: "discrete",
        barWidth: 3,
        lineColor: "#26B99A",
        width: "85"
    }))
}

function init_autocomplete() {
    var e;
    void 0 !== $.fn.autocomplete && (console.log("init_autocomplete"), e = $.map({
        AD: "Andorra",
        A2: "Andorra Test",
        AE: "United Arab Emirates",
        AF: "Afghanistan",
        AG: "Antigua and Barbuda",
        AI: "Anguilla",
        AL: "Albania",
        AM: "Armenia",
        AN: "Netherlands Antilles",
        AO: "Angola",
        AQ: "Antarctica",
        AR: "Argentina",
        AS: "American Samoa",
        AT: "Austria",
        AU: "Australia",
        AW: "Aruba",
        AX: "Åland Islands",
        AZ: "Azerbaijan",
        BA: "Bosnia and Herzegovina",
        BB: "Barbados",
        BD: "Bangladesh",
        BE: "Belgium",
        BF: "Burkina Faso",
        BG: "Bulgaria",
        BH: "Bahrain",
        BI: "Burundi",
        BJ: "Benin",
        BL: "Saint Barthélemy",
        BM: "Bermuda",
        BN: "Brunei",
        BO: "Bolivia",
        BQ: "British Antarctic Territory",
        BR: "Brazil",
        BS: "Bahamas",
        BT: "Bhutan",
        BV: "Bouvet Island",
        BW: "Botswana",
        BY: "Belarus",
        BZ: "Belize",
        CA: "Canada",
        CC: "Cocos [Keeling] Islands",
        CD: "Congo - Kinshasa",
        CF: "Central African Republic",
        CG: "Congo - Brazzaville",
        CH: "Switzerland",
        CI: "Côte d’Ivoire",
        CK: "Cook Islands",
        CL: "Chile",
        CM: "Cameroon",
        CN: "China",
        CO: "Colombia",
        CR: "Costa Rica",
        CS: "Serbia and Montenegro",
        CT: "Canton and Enderbury Islands",
        CU: "Cuba",
        CV: "Cape Verde",
        CX: "Christmas Island",
        CY: "Cyprus",
        CZ: "Czech Republic",
        DD: "East Germany",
        DE: "Germany",
        DJ: "Djibouti",
        DK: "Denmark",
        DM: "Dominica",
        DO: "Dominican Republic",
        DZ: "Algeria",
        EC: "Ecuador",
        EE: "Estonia",
        EG: "Egypt",
        EH: "Western Sahara",
        ER: "Eritrea",
        ES: "Spain",
        ET: "Ethiopia",
        FI: "Finland",
        FJ: "Fiji",
        FK: "Falkland Islands",
        FM: "Micronesia",
        FO: "Faroe Islands",
        FQ: "French Southern and Antarctic Territories",
        FR: "France",
        FX: "Metropolitan France",
        GA: "Gabon",
        GB: "United Kingdom",
        GD: "Grenada",
        GE: "Georgia",
        GF: "French Guiana",
        GG: "Guernsey",
        GH: "Ghana",
        GI: "Gibraltar",
        GL: "Greenland",
        GM: "Gambia",
        GN: "Guinea",
        GP: "Guadeloupe",
        GQ: "Equatorial Guinea",
        GR: "Greece",
        GS: "South Georgia and the South Sandwich Islands",
        GT: "Guatemala",
        GU: "Guam",
        GW: "Guinea-Bissau",
        GY: "Guyana",
        HK: "Hong Kong SAR China",
        HM: "Heard Island and McDonald Islands",
        HN: "Honduras",
        HR: "Croatia",
        HT: "Haiti",
        HU: "Hungary",
        ID: "Indonesia",
        IE: "Ireland",
        IL: "Israel",
        IM: "Isle of Man",
        IN: "India",
        IO: "British Indian Ocean Territory",
        IQ: "Iraq",
        IR: "Iran",
        IS: "Iceland",
        IT: "Italy",
        JE: "Jersey",
        JM: "Jamaica",
        JO: "Jordan",
        JP: "Japan",
        JT: "Johnston Island",
        KE: "Kenya",
        KG: "Kyrgyzstan",
        KH: "Cambodia",
        KI: "Kiribati",
        KM: "Comoros",
        KN: "Saint Kitts and Nevis",
        KP: "North Korea",
        KR: "South Korea",
        KW: "Kuwait",
        KY: "Cayman Islands",
        KZ: "Kazakhstan",
        LA: "Laos",
        LB: "Lebanon",
        LC: "Saint Lucia",
        LI: "Liechtenstein",
        LK: "Sri Lanka",
        LR: "Liberia",
        LS: "Lesotho",
        LT: "Lithuania",
        LU: "Luxembourg",
        LV: "Latvia",
        LY: "Libya",
        MA: "Morocco",
        MC: "Monaco",
        MD: "Moldova",
        ME: "Montenegro",
        MF: "Saint Martin",
        MG: "Madagascar",
        MH: "Marshall Islands",
        MI: "Midway Islands",
        MK: "Macedonia",
        ML: "Mali",
        MM: "Myanmar [Burma]",
        MN: "Mongolia",
        MO: "Macau SAR China",
        MP: "Northern Mariana Islands",
        MQ: "Martinique",
        MR: "Mauritania",
        MS: "Montserrat",
        MT: "Malta",
        MU: "Mauritius",
        MV: "Maldives",
        MW: "Malawi",
        MX: "Mexico",
        MY: "Malaysia",
        MZ: "Mozambique",
        NA: "Namibia",
        NC: "New Caledonia",
        NE: "Niger",
        NF: "Norfolk Island",
        NG: "Nigeria",
        NI: "Nicaragua",
        NL: "Netherlands",
        NO: "Norway",
        NP: "Nepal",
        NQ: "Dronning Maud Land",
        NR: "Nauru",
        NT: "Neutral Zone",
        NU: "Niue",
        NZ: "New Zealand",
        OM: "Oman",
        PA: "Panama",
        PC: "Pacific Islands Trust Territory",
        PE: "Peru",
        PF: "French Polynesia",
        PG: "Papua New Guinea",
        PH: "Philippines",
        PK: "Pakistan",
        PL: "Poland",
        PM: "Saint Pierre and Miquelon",
        PN: "Pitcairn Islands",
        PR: "Puerto Rico",
        PS: "Palestinian Territories",
        PT: "Portugal",
        PU: "U.S. Miscellaneous Pacific Islands",
        PW: "Palau",
        PY: "Paraguay",
        PZ: "Panama Canal Zone",
        QA: "Qatar",
        RE: "Réunion",
        RO: "Romania",
        RS: "Serbia",
        RU: "Russia",
        RW: "Rwanda",
        SA: "Saudi Arabia",
        SB: "Solomon Islands",
        SC: "Seychelles",
        SD: "Sudan",
        SE: "Sweden",
        SG: "Singapore",
        SH: "Saint Helena",
        SI: "Slovenia",
        SJ: "Svalbard and Jan Mayen",
        SK: "Slovakia",
        SL: "Sierra Leone",
        SM: "San Marino",
        SN: "Senegal",
        SO: "Somalia",
        SR: "Suriname",
        ST: "São Tomé and Príncipe",
        SU: "Union of Soviet Socialist Republics",
        SV: "El Salvador",
        SY: "Syria",
        SZ: "Swaziland",
        TC: "Turks and Caicos Islands",
        TD: "Chad",
        TF: "French Southern Territories",
        TG: "Togo",
        TH: "Thailand",
        TJ: "Tajikistan",
        TK: "Tokelau",
        TL: "Timor-Leste",
        TM: "Turkmenistan",
        TN: "Tunisia",
        TO: "Tonga",
        TR: "Turkey",
        TT: "Trinidad and Tobago",
        TV: "Tuvalu",
        TW: "Taiwan",
        TZ: "Tanzania",
        UA: "Ukraine",
        UG: "Uganda",
        UM: "U.S. Minor Outlying Islands",
        US: "United States",
        UY: "Uruguay",
        UZ: "Uzbekistan",
        VA: "Vatican City",
        VC: "Saint Vincent and the Grenadines",
        VD: "North Vietnam",
        VE: "Venezuela",
        VG: "British Virgin Islands",
        VI: "U.S. Virgin Islands",
        VN: "Vietnam",
        VU: "Vanuatu",
        WF: "Wallis and Futuna",
        WK: "Wake Island",
        WS: "Samoa",
        YD: "People's Democratic Republic of Yemen",
        YE: "Yemen",
        YT: "Mayotte",
        ZA: "South Africa",
        ZM: "Zambia",
        ZW: "Zimbabwe",
        ZZ: "Unknown or Invalid Region"
    }, function (e, t) {
        return {value: e, data: t}
    }), $("#autocomplete-custom-append").autocomplete({lookup: e}))
}

function init_autosize() {
    void 0 !== $.fn.autosize && autosize($(".resizable_textarea"))
}

function init_parsley() {
    if ("undefined" != typeof parsley) {
        console.log("init_parsley"), $("parsley:field:validate", function () {
            e()
        }), $("#demo-form .btn").on("click", function () {
            $("#demo-form").parsley().validate(), e()
        });
        var e = function () {
            !0 === $("#demo-form").parsley().isValid() ? ($(".bs-callout-info").removeClass("hidden"), $(".bs-callout-warning").addClass("hidden")) : ($(".bs-callout-info").addClass("hidden"), $(".bs-callout-warning").removeClass("hidden"))
        };
        $("parsley:field:validate", function () {
            e()
        }), $("#demo-form2 .btn").on("click", function () {
            $("#demo-form2").parsley().validate(), e()
        });
        e = function () {
            !0 === $("#demo-form2").parsley().isValid() ? ($(".bs-callout-info").removeClass("hidden"), $(".bs-callout-warning").addClass("hidden")) : ($(".bs-callout-info").addClass("hidden"), $(".bs-callout-warning").removeClass("hidden"))
        };
        try {
            hljs.initHighlightingOnLoad()
        } catch (e) {
        }
    }
}

function onAddTag(e) {
    alert("Added a tag: " + e)
}

function onRemoveTag(e) {
    alert("Removed a tag: " + e)
}

function onChangeTag(e, t) {
    alert("Changed a tag: " + t)
}

function init_TagsInput() {
    void 0 !== $.fn.tagsInput && $("#tags_1").tagsInput({width: "auto"})
}

function init_select2() {
    "undefined" != typeof select2 && (console.log("init_toolbox"), $(".select2_single").select2({
        placeholder: "Select a state",
        allowClear: !0
    }), $(".select2_group").select2({}), $(".select2_multiple").select2({
        maximumSelectionLength: 4,
        placeholder: "With Max Selection limit 4",
        allowClear: !0
    }))
}

function init_wysiwyg() {
    function t(e, t) {
        var a = "";
        "unsupported-file-type" === e ? a = "Unsupported format " + t : console.log("error uploading file", e, t), $('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button><strong>File upload error</strong> ' + a + " </div>").prependTo("#alerts")
    }

    void 0 !== $.fn.wysiwyg && (console.log("init_wysiwyg"), $(".editor-wrapper").each(function () {
        var e = $(this).attr("id");
        $(this).wysiwyg({toolbarSelector: '[data-target="#' + e + '"]', fileUploadError: t})
    }), window.prettyPrint, prettyPrint())
}

function init_cropper() {
    var i, o, t, a, n, r, l, s, c, d, p, u, g;
    void 0 !== $.fn.cropper && (console.log("init_cropper"), i = $("#image"), o = $("#download"), t = $("#dataX"), a = $("#dataY"), n = $("#dataHeight"), r = $("#dataWidth"), l = $("#dataRotate"), s = $("#dataScaleX"), c = $("#dataScaleY"), d = {
        aspectRatio: 16 / 9,
        preview: ".img-preview",
        crop: function (e) {
            t.val(Math.round(e.x)), a.val(Math.round(e.y)), n.val(Math.round(e.height)), r.val(Math.round(e.width)), l.val(e.rotate), s.val(e.scaleX), c.val(e.scaleY)
        }
    }, $('[data-toggle="tooltip"]').tooltip(), i.on({
        "build.cropper": function (e) {
            console.log(e.type)
        }, "built.cropper": function (e) {
            console.log(e.type)
        }, "cropstart.cropper": function (e) {
            console.log(e.type, e.action)
        }, "cropmove.cropper": function (e) {
            console.log(e.type, e.action)
        }, "cropend.cropper": function (e) {
            console.log(e.type, e.action)
        }, "crop.cropper": function (e) {
            console.log(e.type, e.x, e.y, e.width, e.height, e.rotate, e.scaleX, e.scaleY)
        }, "zoom.cropper": function (e) {
            console.log(e.type, e.ratio)
        }
    }).cropper(d), $.isFunction(document.createElement("canvas").getContext) || $('button[data-method="getCroppedCanvas"]').prop("disabled", !0), void 0 === document.createElement("cropper").style.transition && ($('button[data-method="rotate"]').prop("disabled", !0), $('button[data-method="scale"]').prop("disabled", !0)), void 0 === o[0].download && o.addClass("disabled"), $(".docs-toggles").on("change", "input", function () {
        var e, t, a = $(this), n = a.attr("name"), o = a.prop("type");
        i.data("cropper") && ("checkbox" === o ? (d[n] = a.prop("checked"), e = i.cropper("getCropBoxData"), t = i.cropper("getCanvasData"), d.built = function () {
            i.cropper("setCropBoxData", e), i.cropper("setCanvasData", t)
        }) : "radio" === o && (d[n] = a.val()), i.cropper("destroy").cropper(d))
    }), $(".docs-buttons").on("click", "[data-method]", function () {
        var e, t, a = $(this), n = a.data();
        if (!a.prop("disabled") && !a.hasClass("disabled") && i.data("cropper") && n.method) {
            if (void 0 !== (n = $.extend({}, n)).target && (e = $(n.target), void 0 === n.option)) try {
                n.option = JSON.parse(e.val())
            } catch (e) {
                console.log(e.message)
            }
            switch (t = i.cropper(n.method, n.option, n.secondOption), n.method) {
                case"scaleX":
                case"scaleY":
                    $(this).data("option", -n.option);
                    break;
                case"getCroppedCanvas":
                    t && ($("#getCroppedCanvasModal").modal().find(".modal-body").html(t), o.hasClass("disabled") || o.attr("href", t.toDataURL()))
            }
            if ($.isPlainObject(t) && e) try {
                e.val(JSON.stringify(t))
            } catch (e) {
                console.log(e.message)
            }
        }
    }), $(document.body).on("keydown", function (e) {
        if (i.data("cropper") && !(300 < this.scrollTop)) switch (e.which) {
            case 37:
                e.preventDefault(), i.cropper("move", -1, 0);
                break;
            case 38:
                e.preventDefault(), i.cropper("move", 0, -1);
                break;
            case 39:
                e.preventDefault(), i.cropper("move", 1, 0);
                break;
            case 40:
                e.preventDefault(), i.cropper("move", 0, 1)
        }
    }), p = $("#inputImage"), (u = window.URL || window.webkitURL) ? p.change(function () {
        var e = this.files;
        i.data("cropper") && e && e.length && (e = e[0], /^image\/\w+$/.test(e.type) ? (g = u.createObjectURL(e), i.one("built.cropper", function () {
            u.revokeObjectURL(g)
        }).cropper("reset").cropper("replace", g), p.val("")) : window.alert("Please choose an image file."))
    }) : p.prop("disabled", !0).parent().addClass("disabled"))
}

function init_knob() {
    var e, t, a, n, o, i;
    void 0 !== $.fn.knob && (console.log("init_knob"), $(".knob").knob({
        change: function (e) {
        }, release: function (e) {
            console.log("release : " + e)
        }, cancel: function () {
            console.log("cancel : ", this)
        }, draw: function () {
            if ("tron" == this.$.data("skin")) {
                this.cursorExt = .3;
                var e, t = this.arc(this.cv);
                return this.g.lineWidth = this.lineWidth, this.o.displayPrevious && (e = this.arc(this.v), this.g.beginPath(), this.g.strokeStyle = this.pColor, this.g.arc(this.xy, this.xy, this.radius - this.lineWidth, e.s, e.e, e.d), this.g.stroke()), this.g.beginPath(), this.g.strokeStyle = this.o.fgColor, this.g.arc(this.xy, this.xy, this.radius - this.lineWidth, t.s, t.e, t.d), this.g.stroke(), this.g.lineWidth = 2, this.g.beginPath(), this.g.strokeStyle = this.o.fgColor, this.g.arc(this.xy, this.xy, this.radius - this.lineWidth + 1 + 2 * this.lineWidth / 3, 0, 2 * Math.PI, !1), this.g.stroke(), !1
            }
        }
    }), n = a = t = 0, o = $("div.idir"), i = $("div.ival"), $("input.infinite").knob({
        min: 0,
        max: 20,
        stopper: !1,
        change: function () {
            e > this.cv ? t ? (n--, o.show().html("-").fadeOut(), i.html(n), t = 0) : (t = 1, a = 0) : e < this.cv && (a ? (n++, o.show().html("+").fadeOut(), i.html(n), a = 0) : (a = 1, t = 0)), e = this.cv
        }
    }))
}

function init_InputMask() {
    void 0 !== $.fn.inputmask && ($(":input").inputmask())
}

function init_ColorPicker() {
    void 0 !== $.fn.colorpicker && ($(".demo1").colorpicker(), $(".demo2").colorpicker(), $("#demo_forceformat").colorpicker({
        format: "rgba",
        horizontal: !0
    }), $("#demo_forceformat3").colorpicker({format: "rgba"}), $(".demo-auto").colorpicker())
}

function init_IonRangeSlider() {
    void 0 !== $.fn.ionRangeSlider && ($("#range_27").ionRangeSlider({
        type: "double",
        min: 1e6,
        max: 2e6,
        grid: !0,
        force_edges: !0
    }), $("#range").ionRangeSlider({
        hide_min_max: !0,
        keyboard: !0,
        min: 0,
        max: 5e3,
        from: 1e3,
        to: 4e3,
        type: "double",
        step: 1,
        prefix: "$",
        grid: !0
    }), $("#range_25").ionRangeSlider({
        type: "double",
        min: 1e6,
        max: 2e6,
        grid: !0
    }), $("#range_26").ionRangeSlider({
        type: "double",
        min: 0,
        max: 1e4,
        step: 500,
        grid: !0,
        grid_snap: !0
    }), $("#range_31").ionRangeSlider({
        type: "double",
        min: 0,
        max: 100,
        from: 30,
        to: 70,
        from_fixed: !0
    }), $(".range_min_max").ionRangeSlider({
        type: "double",
        min: 0,
        max: 100,
        from: 30,
        to: 70,
        max_interval: 50
    }), $(".range_time24").ionRangeSlider({
        min: +moment().subtract(12, "hours").format("X"),
        max: +moment().format("X"),
        from: +moment().subtract(6, "hours").format("X"),
        grid: !0,
        force_edges: !0,
        prettify: function (e) {
            return moment(e, "X").format("Do MMMM, HH:mm")
        }
    }))
}

function init_daterangepicker() {
    var e, t;
    void 0 !== $.fn.daterangepicker && (e = function (e, t, a) {
        console.log(e.toISOString(), t.toISOString(), a), $("#reportrange span").html(e.format("MMMM D, YYYY") + " - " + t.format("MMMM D, YYYY"))
    }, t = {
        startDate: moment().subtract(29, "days"),
        endDate: moment(),
        minDate: "01/01/2012",
        maxDate: "12/31/2015",
        dateLimit: {days: 60},
        showDropdowns: !0,
        showWeekNumbers: !0,
        timePicker: !1,
        timePickerIncrement: 1,
        timePicker12Hour: !0,
        ranges: {
            Today: [moment(), moment()],
            Yesterday: [moment().subtract(1, "days"), moment().subtract(1, "days")],
            "Last 7 Days": [moment().subtract(6, "days"), moment()],
            "Last 30 Days": [moment().subtract(29, "days"), moment()],
            "This Month": [moment().startOf("month"), moment().endOf("month")],
            "Last Month": [moment().subtract(1, "month").startOf("month"), moment().subtract(1, "month").endOf("month")]
        },
        opens: "left",
        buttonClasses: ["btn btn-default"],
        applyClass: "btn-small btn-primary",
        cancelClass: "btn-small",
        format: "MM/DD/YYYY",
        separator: " to ",
        locale: {
            applyLabel: "Submit",
            cancelLabel: "Clear",
            fromLabel: "From",
            toLabel: "To",
            customRangeLabel: "Custom",
            daysOfWeek: ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"],
            monthNames: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
            firstDay: 1
        }
    }, $("#reportrange span").html(moment().subtract(29, "days").format("MMMM D, YYYY") + " - " + moment().format("MMMM D, YYYY")), $("#reportrange").daterangepicker(t, e), $("#reportrange").on("show.daterangepicker", function () {
        console.log("show event fired")
    }), $("#reportrange").on("hide.daterangepicker", function () {
        console.log("hide event fired")
    }), $("#reportrange").on("apply.daterangepicker", function (e, t) {
        console.log("apply event fired, start/end dates are " + t.startDate.format("MMMM D, YYYY") + " to " + t.endDate.format("MMMM D, YYYY"))
    }), $("#reportrange").on("cancel.daterangepicker", function (e, t) {
        console.log("cancel event fired")
    }), $("#options1").click(function () {
        $("#reportrange").data("daterangepicker").setOptions(t, e)
    }), $("#options2").click(function () {
        $("#reportrange").data("daterangepicker").setOptions(optionSet2, e)
    }), $("#destroy").click(function () {
        $("#reportrange").data("daterangepicker").remove()
    }))
}

function init_daterangepicker_right() {
    var e, t;
    void 0 !== $.fn.daterangepicker && (e = function (e, t, a) {
        console.log(e.toISOString(), t.toISOString(), a), $("#reportrange_right span").html(e.format("MMMM D, YYYY") + " - " + t.format("MMMM D, YYYY"))
    }, t = {
        startDate: moment().subtract(29, "days"),
        endDate: moment(),
        minDate: "01/01/2012",
        maxDate: "12/31/2020",
        dateLimit: {days: 60},
        showDropdowns: !0,
        showWeekNumbers: !0,
        timePicker: !1,
        timePickerIncrement: 1,
        timePicker12Hour: !0,
        ranges: {
            Today: [moment(), moment()],
            Yesterday: [moment().subtract(1, "days"), moment().subtract(1, "days")],
            "Last 7 Days": [moment().subtract(6, "days"), moment()],
            "Last 30 Days": [moment().subtract(29, "days"), moment()],
            "This Month": [moment().startOf("month"), moment().endOf("month")],
            "Last Month": [moment().subtract(1, "month").startOf("month"), moment().subtract(1, "month").endOf("month")]
        },
        opens: "right",
        buttonClasses: ["btn btn-default"],
        applyClass: "btn-small btn-primary",
        cancelClass: "btn-small",
        format: "MM/DD/YYYY",
        separator: " to ",
        locale: {
            applyLabel: "Submit",
            cancelLabel: "Clear",
            fromLabel: "From",
            toLabel: "To",
            customRangeLabel: "Custom",
            daysOfWeek: ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"],
            monthNames: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
            firstDay: 1
        }
    }, $("#reportrange_right span").html(moment().subtract(29, "days").format("MMMM D, YYYY") + " - " + moment().format("MMMM D, YYYY")), $("#reportrange_right").daterangepicker(t, e), $("#reportrange_right").on("show.daterangepicker", function () {
        console.log("show event fired")
    }), $("#reportrange_right").on("hide.daterangepicker", function () {
        console.log("hide event fired")
    }), $("#reportrange_right").on("apply.daterangepicker", function (e, t) {
        console.log("apply event fired, start/end dates are " + t.startDate.format("MMMM D, YYYY") + " to " + t.endDate.format("MMMM D, YYYY"))
    }), $("#reportrange_right").on("cancel.daterangepicker", function (e, t) {
        console.log("cancel event fired")
    }), $("#options1").click(function () {
        $("#reportrange_right").data("daterangepicker").setOptions(t, e)
    }), $("#options2").click(function () {
        $("#reportrange_right").data("daterangepicker").setOptions(optionSet2, e)
    }), $("#destroy").click(function () {
        $("#reportrange_right").data("daterangepicker").remove()
    }))
}

function init_daterangepicker_single_call() {
    void 0 !== $.fn.daterangepicker && ($("#single_cal1").daterangepicker({
        singleDatePicker: !0,
        singleClasses: "picker_1",
        locale: {format: "YYYY.MM.DD"}
    }, function (e, t, a) {
        console.log(e.toISOString(), t.toISOString(), a)
    }), $("#single_cal2").daterangepicker({
        singleDatePicker: !0,
        singleClasses: "picker_2",
        locale: {format: "YYYY.MM.DD"}
    }, function (e, t, a) {
        console.log(e.toISOString(), t.toISOString(), a)
    }), $("#single_cal3").daterangepicker({
        singleDatePicker: !0,
        singleClasses: "picker_3",
        locale: {format: "YYYY.MM.DD"}
    }, function (e, t, a) {
        console.log(e.toISOString(), t.toISOString(), a)
    }), $("#single_cal4").daterangepicker({
        singleDatePicker: !0,
        singleClasses: "picker_4",
        locale: {format: "YYYY.MM.DD"}
    }, function (e, t, a) {
        console.log(e.toISOString(), t.toISOString(), a)
    }))
}

function init_daterangepicker_reservation() {
    void 0 !== $.fn.daterangepicker && ($("#reservation").daterangepicker({locale: {format: "YYYY.MM.DD"}}, function (e, t, a) {
        console.log(e.toISOString(), t.toISOString(), a)
    }), $("#reservation-time").daterangepicker({
        timePicker: !0,
        timePickerIncrement: 30,
        locale: {format: "MM.DD h:mm A"}
    }))
}

function init_SmartWizard() {
    void 0 !== $.fn.smartWizard && ($("#wizard").smartWizard(), $("#wizard_verticle").smartWizard({transitionEffect: "slide"}), $(".buttonNext").addClass("btn btn-success"), $(".buttonPrevious").addClass("btn btn-primary"), $(".buttonFinish").addClass("btn btn-default"))
}

function init_validator() {
    "undefined" != typeof validator && (console.log("init_validator"), validator.message.date = "not a real date", $("form").on("blur", "input[required], input.optional, select.required", validator.checkField).on("change", "select.required", validator.checkField).on("keypress", "input[required][pattern]", validator.keypress), $(".multi.required").on("keyup blur", "input", function () {
        validator.checkField.apply($(this).siblings().last()[0])
    }), $("form").submit(function (e) {
        e.preventDefault();
        e = !0;
        return (e = !validator.checkAll($(this)) ? !1 : e) && this.submit(), !1
    }))
}

function init_PNotify() {
    "undefined" != typeof PNotify && console.log("init_PNotify")
}

function init_CustomNotification() {
    var a, t;
    "undefined" != typeof CustomTabs && (console.log("init_CustomTabs"), a = 10, TabbedNotification = function (e) {
        var t = "<div id='ntf" + a + "' class='text alert-" + e.type + "' style='display:none'><h2><i class='fa fa-bell'></i> " + e.title + "</h2><div class='close'><a href='javascript:;' class='notification_close'><i class='fa fa-close'></i></a></div><p>" + e.text + "</p></div>";
        document.getElementById("custom_notifications") ? ($("#custom_notifications ul.notifications").append("<li><a id='ntlink" + a + "' class='alert-" + e.type + "' href='#ntf" + a + "'><i class='fa fa-bell animated shake'></i></a></li>"), $("#custom_notifications #notif-group").append(t), a++, CustomTabs(e)) : alert("doesnt exists")
    }, (CustomTabs = function (e) {
        $(".tabbed_notifications > div").hide(), $(".tabbed_notifications > div:first-of-type").show(), $("#custom_notifications").removeClass("dsp_none"), $(".notifications a").click(function (e) {
            e.preventDefault();
            var t = $(this), a = "#" + t.parents(".notifications").data("tabbed_notifications"),
                n = t.closest("li").siblings().children("a"), e = t.attr("href");
            n.removeClass("active"), t.addClass("active"), $(a).children("div").hide(), $(e).show()
        })
    })(), t = idname = "", $(document).on("click", ".notification_close", function (e) {
        idname = $(this).parent().parent().attr("id"), t = idname.substr(-2), $("#ntf" + t).remove(), $("#ntlink" + t).parent().remove(), $(".notifications a").first().addClass("active"), $("#notif-group div").first().css("display", "block")
    }))
}

function init_compose() {
    void 0 !== $.fn.slideToggle && ($("#compose, .compose-close").click(function () {
        $(".compose").slideToggle()
    }))
}

function init_calendar() {
    var e, t, a, n, o;
    void 0 !== $.fn.fullCalendar && (console.log("init_calendar"), e = (a = new Date).getDate(), t = a.getMonth(), a = a.getFullYear(), o = $("#calendar").fullCalendar({
        header: {left: "prev,next today", center: "title", right: "month,agendaWeek,agendaDay,listMonth"},
        selectable: !0,
        selectHelper: !0,
        select: function (e, t, a) {
            $("#fc_create").click(), n = e, ended = t, $(".antosubmit").on("click", function () {
                var e = $("#title").val();
                return t && (ended = t), $("#event_type").val(), e && o.fullCalendar("renderEvent", {
                    title: e,
                    start: n,
                    end: t,
                    allDay: a
                }, !0), $("#title").val(""), o.fullCalendar("unselect"), $(".antoclose").click(), !1
            })
        },
        eventClick: function (e, t, a) {
            $("#fc_edit").click(), $("#title2").val(e.title), $("#event_type").val(), $(".antosubmit2").on("click", function () {
                e.title = $("#title2").val(), o.fullCalendar("updateEvent", e), $(".antoclose2").click()
            }), o.fullCalendar("unselect")
        },
        editable: !0,
        events: [{title: "All Day Event", start: new Date(a, t, 1)}, {
            title: "Long Event",
            start: new Date(a, t, e - 5),
            end: new Date(a, t, e - 2)
        }, {title: "Meeting", start: new Date(a, t, e, 10, 30), allDay: !1}, {
            title: "Lunch",
            start: new Date(a, t, e + 14, 12, 0),
            end: new Date(a, t, e, 14, 0),
            allDay: !1
        }, {
            title: "Birthday Party",
            start: new Date(a, t, e + 1, 19, 0),
            end: new Date(a, t, e + 1, 22, 30),
            allDay: !1
        }, {title: "Click for Google", start: new Date(a, t, 28), end: new Date(a, t, 29), url: "http://google.com/"}]
    }))
}

function init_DataTables() {
    var e, t;
    void 0 !== $.fn.DataTable && (e = {
        decimal: "",
        emptyTable: "데이터가 없습니다.",
        info: "_START_ - _END_ (총 _TOTAL_ 개)",
        infoEmpty: "0명",
        infoFiltered: "(전체 _MAX_ 명 중 검색결과)",
        infoPostFix: "",
        thousands: ",",
        lengthMenu: "_MENU_ 개씩 보기",
        loadingRecords: "로딩중...",
        processing: "처리중...",
        search: "검색 : ",
        zeroRecords: "검색된 데이터가 없습니다.",
        paginate: {first: "첫 페이지", last: "마지막 페이지", next: "다음", previous: "이전"},
        aria: {sortAscending: " :  오름차순 정렬", sortDescending: " :  내림차순 정렬"}
    }, TableManageButtons = function () {
        "use strict";
        return {
            init: function () {
                $("#datatable-buttons").length && $("#datatable-buttons").DataTable({
                    dom: "Blfrtip",
                    buttons: [{extend: "copy", className: "btn-sm"}, {
                        extend: "csv",
                        className: "btn-sm"
                    }, {extend: "excel", className: "btn-sm"}, {
                        extend: "pdfHtml5",
                        className: "btn-sm"
                    }, {extend: "print", className: "btn-sm"}],
                    responsive: !0
                })
            }
        }
    }(), $(".datatable_default").dataTable({
        searching: !1,
        language: e,
        ordering: !1
    }), $("#datatable-keytable").DataTable({keys: !0}), $("#datatable-responsive").DataTable({}), $("#datatable-scroller").DataTable({
        ajax: "js/datatables/json/scroller-demo.json",
        deferRender: !0,
        scrollY: 380,
        scrollCollapse: !0,
        scroller: !0
    }), $("#datatable-fixed-header").DataTable({fixedHeader: !0}), (t = $("#datatable-checkbox")).dataTable({
        order: [[1, "asc"]],
        columnDefs: [{orderable: !1, targets: [0]}],
        searching: !1,
        ordering: !1,
        language: e
    }), t.on("draw.dt", function () {
        $("checkbox input").iCheck({})
    }), $(".btn_add").on("click", function () {
        $(this).closest(".x_content").find(".table").find("tbody").append('<tr> <th><input type="checkbox" class="flat" name="table_records"></th> <th><input type="text"></th> <th><input type="text"></th> <th><input type="text"></th></tr>'), $("tbody input.flat").iCheck({
            checkboxClass: "icheckbox_flat-purple",
            radioClass: "iradio_flat-purple"
        })
    }), $(".btn_remove").on("click", function () {
        $(this).closest(".x_content").find(".table tbody .flat").each(function (e) {
            $(this).prop("checked") && $(this).closest("tr").remove()
        })
    }), TableManageButtons.init())
}

function initDragula() {
    dragula([document.getElementById("drakeLeft"), document.getElementById("drakeRight")]).on("drop", function (e, t, a, n) {
        var o = $("#drakeRight p").text(), i = /\(Integer\)|\(String\)|\(Date\)|\(Double\)/gi;
        i.test(o);
        i = (i = o.replace(i, ".")).slice(0, -1);
        $(".drake_result").html(i)
    })
}

$.fn.popover.Constructor.prototype.leave = function (e) {
    var t, a,
        n = e instanceof this.constructor ? e : $(e.currentTarget)[this.type](this.getDelegateOptions()).data("bs." + this.type);
    originalLeave.call(this, e), e.currentTarget && (t = $(e.currentTarget).siblings(".popover"), a = n.timeout, t.one("mouseenter", function () {
        clearTimeout(a), t.one("mouseleave", function () {
            $.fn.popover.Constructor.prototype.leave.call(n, n)
        })
    }))
}, $("body").popover({
    selector: "[data-popover]",
    trigger: "click hover",
    delay: {show: 50, hide: 400}
}), $(".modal").on("show.bs.modal", function (e) {
    console.log(e), $(this).find(".datatable_default").DataTable().draw()
}), $(document).ready(function () {
    init_sparklines(), init_flot_chart(), init_sidebar(), init_wysiwyg(), init_InputMask(), init_JQVmap(), init_cropper(), init_knob(), init_IonRangeSlider(), init_ColorPicker(), init_TagsInput(), init_parsley(), init_daterangepicker(), init_daterangepicker_right(), init_daterangepicker_single_call(), init_daterangepicker_reservation(), init_SmartWizard(), init_skycons(), init_select2(), init_validator(), init_DataTables(), init_gauge(), init_PNotify(), init_starrr(), init_calendar(), init_compose(), init_CustomNotification(), init_autosize(), init_autocomplete(), initDragula()
}), function (t) {
    jQuery.fn[t] = function (e) {
        return e ? this.bind("resize", (a = e, function () {
            var e = this, t = arguments;
            i ? clearTimeout(i) : o && a.apply(e, t), i = setTimeout(function () {
                o || a.apply(e, t), i = null
            }, n || 100)
        })) : this.trigger(t);
        var a, n, o, i
    }
}((jQuery, "smartresize"));
//# sourceMappingURL=custom.js.map
