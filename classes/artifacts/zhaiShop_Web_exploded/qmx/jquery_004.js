(function(e, t) {
    var i = e(t);
    e.fn.lazyload = function(n) {
        var o = this;
        var r;
        var f = {
            threshold: 0,
            failure_limit: 0,
            event: "scroll",
            effect: "show",
            container: t,
            data_attribute: "original",
            skip_invisible: true,
            appear: null,
            load: null
        };
        function l() {
            var t = 0;
            o.each(function() {
                var i = e(this);
                if (f.skip_invisible && !i.is(":visible")) {
                    return
                }
                if (e.abovethetop(this, f) || e.leftofbegin(this, f)) {} else if (!e.belowthefold(this, f) && !e.rightoffold(this, f)) {
                    i.trigger("appear")
                } else {
                    if (++t > f.failure_limit) {
                        return false
                    }
                }
            })
        }
        if (n) {
            if (undefined !== n.failurelimit) {
                n.failure_limit = n.failurelimit;
                delete n.failurelimit
            }
            if (undefined !== n.effectspeed) {
                n.effect_speed = n.effectspeed;
                delete n.effectspeed
            }
            e.extend(f, n)
        }
        o = e(o).filter("[data-" + f.data_attribute + "]");
        r = f.container === undefined || f.container === t ? i: e(f.container);
        if (0 === f.event.indexOf("scroll")) {
            r.bind(f.event,
            function(e) {
                return l()
            })
        }
        this.each(function() {
            var t = this;
            var i = e(t);
            t.loaded = false;
            i.one("appear",
            function() {
                if (!this.loaded) {
                    if (f.appear) {
                        var n = o.length;
                        f.appear.call(t, n, f)
                    }
                    e("<img />").bind("load",
                    function() {
                        i.hide().attr("src", i.data(f.data_attribute))[f.effect](f.effect_speed);
                        t.loaded = true;
                        var n = e.grep(o,
                        function(e) {
                            return ! e.loaded
                        });
                        o = e(n);
                        if (f.load) {
                            var r = o.length;
                            f.load.call(t, r, f)
                        }
                    }).attr("src", i.data(f.data_attribute))
                }
            });
            if (0 !== f.event.indexOf("scroll")) {
                i.bind(f.event,
                function(e) {
                    if (!t.loaded) {
                        i.trigger("appear")
                    }
                })
            }
        });
        i.bind("resize",
        function(e) {
            l()
        });
        l();
        return this
    };
    e.belowthefold = function(n, o) {
        var r;
        if (o.container === undefined || o.container === t) {
            r = i.height() + i.scrollTop()
        } else {
            r = e(o.container).offset().top + e(o.container).height()
        }
        return r <= e(n).offset().top - o.threshold
    };
    e.rightoffold = function(n, o) {
        var r;
        if (o.container === undefined || o.container === t) {
            r = i.width() + i.scrollLeft()
        } else {
            r = e(o.container).offset().left + e(o.container).width()
        }
        return r <= e(n).offset().left - o.threshold
    };
    e.abovethetop = function(n, o) {
        var r;
        if (o.container === undefined || o.container === t) {
            r = i.scrollTop()
        } else {
            r = e(o.container).offset().top
        }
        return r >= e(n).offset().top + o.threshold + e(n).height()
    };
    e.leftofbegin = function(n, o) {
        var r;
        if (o.container === undefined || o.container === t) {
            r = i.scrollLeft()
        } else {
            r = e(o.container).offset().left
        }
        return r >= e(n).offset().left + o.threshold + e(n).width()
    };
    e.inviewport = function(t, i) {
        return ! e.rightofscreen(t, i) && !e.leftofscreen(t, i) && !e.belowthefold(t, i) && !e.abovethetop(t, i)
    };
    e.extend(e.expr[":"], {
        "below-the-fold": function(t) {
            return e.belowthefold(t, {
                threshold: 0
            })
        },
        "above-the-top": function(t) {
            return ! e.belowthefold(t, {
                threshold: 0
            })
        },
        "right-of-screen": function(t) {
            return e.rightoffold(t, {
                threshold: 0
            })
        },
        "left-of-screen": function(t) {
            return ! e.rightoffold(t, {
                threshold: 0
            })
        },
        "in-viewport": function(t) {
            return ! e.inviewport(t, {
                threshold: 0
            })
        },
        "above-the-fold": function(t) {
            return ! e.belowthefold(t, {
                threshold: 0
            })
        },
        "right-of-fold": function(t) {
            return e.rightoffold(t, {
                threshold: 0
            })
        },
        "left-of-fold": function(t) {
            return ! e.rightoffold(t, {
                threshold: 0
            })
        }
    });
    e.imgloading = {
        loading: function() {
            e("img.lazy").lazyload({
                skip_invisible: false,
                effect: "fadeIn",
                failure_limit: 20,
                threshold: 2e3,
                load: function() {
                    e(this).removeClass("lazy");
                    e(this).parent("a").removeAttr("style");
                    if (e(this).hasClass("square")) {
                        if (e(this).height() != e(this).width()) {
                            e(this).height(e(this).width())
                        } else {
                            e(this).removeClass("square")
                        }
                    }
                }
            })
        }
    }
})(jQuery, window);