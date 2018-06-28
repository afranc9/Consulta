!function (e) {
    e.viewportSize = {},
    e.viewportSize.getHeight = function () {
        return i("Height")
    },
    e.viewportSize.getWidth = function () {
        return i("Width")
    };
    var i = function (i)
    {
        var n, t, o, d = i.toLowerCase(),
            l = e.document,
            r = l.documentElement;
        return void 0 === e["inner" + i] ? n = r["client" + i] : e["inner" + i] != r["client" + i] ? (t = l.createElement("body"),
            t.id = "vpw-test-b", t.style.cssText = "overflow:scroll",
            o = l.createElement("div"),
            o.id = "vpw-test-d",
            o.style.cssText = "position:absolute;top:-1000px",
            o.innerHTML = "<style>@media(" + d + ":" + r["client" + i] + "px){body#vpw-test-b div#vpw-test-d{" + d + ":7px!important}}</style>",
            t.appendChild(o),
            r.insertBefore(t, l.head),
            n = 7 == o["offset" + i] ? r["client" + i] : e["inner" + i], r.removeChild(t)) : n = e["inner" + i],
            n
    }
}
(this),
function (e)
{
    function i() {
        var i = skrollr.init({
            render: function () {
            }
        });
        if (winH = $window.height(),
            winW = $window.width(),
            winH <= 550 && (winH = 550),
            winW >= 768) i.refresh(e(".homeSlide"));
        else {
            var i = skrollr.init();
            i.destroy()
        }
        $slide.height(winH),
        $slideTall.height(2 * winH),
        $slideTall2.height(3 * winH)
    } function n()
    {
        return {
            match: function () {
                i()
            }, unmatch: function () {
                i()
            }
        }
    } $window = e(window),
    $slide = e(".homeSlide"),
    $slideTall = e(".homeSlideTall"),
    $slideTall2 = e(".homeSlideTall2"),
    $body = e("body"),
    $body.imagesLoaded(function () {
        setTimeout(function () {
            i(),
            $body.removeClass("loading").addClass("loaded")
        }, 800)
    }), enquire.register("screen and (min-width : 768px)", n(), !1), e(function () {
        var i = e(".heroe_legend"),
            n = e(".heroina_legend");
        n.hide(), setInterval(function () {
            i.fadeOut(2e3, function () {
                n.fadeIn(2e3, function () {
                    n.fadeOut(2e3, function () {
                        i.fadeIn(2e3)
                    })
                })
            })
        }, 8500)
    })
}(jQuery);