(function(t) {
    function i(i, e) {
        this.$container = i;
        this.options = t.extend({
            startSlide: 0,
            item: ".hiSlider-item",
            isFullScreen: false,
            isFlexible: false,
            isSupportTouch: "__proto__" in {},
            isShowPage: true,
            isShowTitle: false,
            titleAttr: "data-title",
            isShowControls: true,
            isAuto: true,
            intervalTime: 5e3,
            affectTime: 300,
            mode: "move",
            direction: "left",
            onSwipeStart: t.noop,
            onSwipeMove: t.noop,
            minSwipeLength: 30,
            onSwipeCancel: t.noop,
            onSwipeEnd: t.noop,
            onSwipeLeft: t.noop,
            onSwipeRight: t.noop,
            onSwipeTop: t.noop,
            onSwipeBottom: t.noop,
            onInited: t.noop,
            onMoveBefore: t.noop,
            onMoveAfter: t.noop,
            onSelected: t.noop
        },
        e);
        this.init()
    }
    i.prototype = {
        init: function() {
            this.$item = this.$container.find(this.options.item);
            this.size = this.$item.size();
            this.curIndex = this.options.startSlide;
            this.setLayout();
            this.playTimer = null;
            this.options.isAuto && this.autoPlay();
            this.options.isFlexible && t(window).on("resize.hiSlider", t.proxy(this, "resize"));
            this.options.isSupportTouch && this.touch()
        },
        touch: function() {
            var t = this;
            var i = {};
            var e = this.options;
            var o = e.minSwipeLength;
            this.$container.on("touchstart",
            function(t) {
                var o = t.originalEvent.touches[0];
                i.x1 = o.pageX;
                i.y1 = o.pageY;
                e.onSwipeStart.call(this, i)
            }).on("touchmove",
            function(t) {
                var o = t.originalEvent.touches[0];
                i.x2 = o.pageX;
                i.y2 = o.pageY;
                e.onSwipeMove.call(this, i)
            }).on("touchend",
            function(s) {
                if (i.x2 && Math.abs(i.x1 - i.x2) > o || i.y2 && Math.abs(i.y1 - i.y2) > o) {
                    var n = t.swipeDirection(i.x1, i.x2, i.y1, i.y2);
                    e["onSwipe" + n].call(this, i);
                    t.moveTo(n);
                    e.onSwipeEnd.call(this, i)
                } else {
                    e.onSwipeCancel.call(this, i)
                }
                i = {}
            })
        },
        moveTo: function(t) {
            var i = this;
            var e = i.options.direction;
            if (e == "top") {
                if (t == "Bottom") {
                    i[i.options.mode + "Prev"]()
                } else if (t == "Top") {
                    i[i.options.mode]()
                }
            } else if (e == "left") {
                if (t == "Right") {
                    i[i.options.mode + "Prev"]()
                } else if (t == "Left") {
                    i[i.options.mode]()
                }
            }
        },
        swipeDirection: function(t, i, e, o) {
            var s = Math.abs(t - i),
            n = Math.abs(e - o);
            return s >= n ? t - i > 0 ? "Left": "Right": e - o > 0 ? "Top": "Bottom"
        },
        move: function() {
            var t = this,
            i;
            t.options.isAuto && t.autoPlay();
            if (++t.curIndex == t.size) {
                t.curIndex = 0;
                t.$container.css(t.getMove());
                t.curIndex++
            }
            t.setTitle();
            t.setPages();
            i = t.curIndex == t.size - 1 ? 0 : t.curIndex;
            t.options.onMoveBefore.call(t.$container, t.$item, i);
            t.$container.stop(false, true).animate(t.getMove(), t.options.affectTime,
            function() {
                t.options.onMoveAfter.call(this, t.$item, i)
            })
        },
        movePrev: function(t) {
            var i = this;
            if (t != true) {
                if (i.options.mode == "move") {
                    if (i.curIndex == 0) {
                        i.curIndex = i.size - 1;
                        i.$container.css(i.getMove())
                    }
                } else {
                    i.curIndex == 0 && (i.curIndex = i.size)
                }
                i.curIndex--
            }
            i.options.isAuto && i.autoPlay();
            i.setTitle();
            i.setPages();
            i.options.onMoveBefore.call(i.$container, i.$item, i.curIndex);
            i.$container.stop(false, true).animate(i.getMove(), i.options.affectTime,
            function() {
                i.options.onMoveAfter.call(this, i.$item, i.curIndex)
            })
        },
        getMove: function(t) {
            var i = {};
            var e = this.getSize();
            var o = this.options.direction;
            if (o == "top") {
                i.top = -this.curIndex * e.height;
                t && (i.width = e.width)
            } else {
                i.left = -this.curIndex * e.width;
                t && (i.height = e.height)
            }
            return i
        },
        fade: function() {
            var t = this;
            t.options.isAuto && t.autoPlay();
            t.curIndex++;
            t.curIndex > t.size - 1 && (t.curIndex = 0);
            t.setTitle();
            t.setPages();
            t.options.onMoveBefore.call(t.$container, t.$item, t.curIndex);
            t.$item.fadeOut(t.options.affectTime).eq(t.curIndex).fadeIn(t.options.affectTime,
            function() {
                t.options.onMoveAfter.call(this, t.$item, t.curIndex)
            })
        },
        fadePrev: function(t) {
            var i = this;
            if (t != true) {
                if (i.options.mode == "move") {
                    if (i.curIndex == 0) {
                        i.curIndex = i.size - 1;
                        i.$container.css(i.getMove())
                    }
                } else {
                    if (i.curIndex == 0) {
                        i.curIndex = i.size
                    }
                }
                i.curIndex--
            }
            i.options.isAuto && i.autoPlay();
            i.setTitle();
            i.setPages();
            i.options.onMoveBefore.call(i.$container, i.$item, i.curIndex);
            i.$item.fadeOut(i.options.affectTime).eq(i.curIndex).fadeIn(i.options.affectTime,
            function() {
                i.options.onMoveAfter.call(this, i.$item, i.curIndex)
            })
        },
        setPages: function() {
            if (!this.options.isShowPage || !this.$pages) return;
            var i = this.curIndex;
            i == this.size - 1 && this.options.mode == "move" && (i = 0);
            t("a", this.$pages).eq(i).addClass("active").siblings().removeClass("active")
        },
        setTitle: function() {
            if (!this.options.isShowTitle || !this.$title) return;
            var i = this.$item.eq(this.curIndex);
            this.$title.html(t.isFunction(this.options.titleAttr) ? this.options.titleAttr.call(i, this.curIndex) : i.attr(this.options.titleAttr))
        },
        setLayout: function() {
            var i = this.options;
            var e = this.getSetCss();
            this.$item.css(e.item);
            this.$container.css(e.container).wrap('<div class="hiSlider-wrap"/>');
            this.$wrap = this.$container.parent();
            this.$wrap.css(e.wrap);
            if (this.options.isShowTitle) {
                this.$title = t('<div class="hiSlider-title"/>').insertAfter(this.$container);
                this.setTitle()
            }
            if (this.options.isShowPage) {
                this.$pages = t('<div class="hiSlider-pages">' + this.getPages() + "</div>").insertAfter(this.$container);
                this.pagesSwitch()
            }
            if (this.options.isShowControls) {
                this.$prev = t('<a href="javascript:;" class="hiSlider-btn-prev">prev</a>');
                this.$next = t('<a href="javascript:;" class="hiSlider-btn-next">next</a>');
                this.$container.after(this.$prev.add(this.$next));
                this.controlsSwitch()
            }
            if (this.options.mode == "move") {
                this.$container.append(this.$item.eq(0).clone().addClass("item-clone"));
                this.$item = this.$container.find(this.options.item);
                this.size = this.$item.size()
            } else {
                this.setFade()
            }
            this.options.onInited.call(this.$container, this.$item, this.options.startSlide)
        },
        resize: function() {
            var t, i = this;
            clearTimeout(t);
            t = setTimeout(function() {
                i.$wrap.add(i.$item).css(i.getSize(i.options.direction));
                i.$container.css(i.getMove(true))
            },
            300)
        },
        setFade: function() {
            this.$item.hide().eq(this.curIndex).show()
        },
        getSetCss: function() {
            var t = this.getSize(),
            i = {};
            var e = Math.min(this.options.startSlide, this.size);
            if (this.options.mode == "fade") {
                t.position = "absolute";
                i.height = t.height;
                i.width = t.width
            } else {
                if (this.options.direction == "top") {
                    i.height = (this.size + 1) * 100 + "%";
                    i.width = t.width;
                    i.top = -(e * t.height)
                } else {
                    i.height = t.height;
                    i.width = (this.size + 1) * 100 + "%";
                    i.left = -(e * t.width);
                    t.float = "left"
                }
                i.position = "relative"
            }
            return {
                item: t,
                container: i,
                wrap: {
                    overflow: "hidden",
                    position: "relative",
                    width: t.width,
                    height: t.height
                }
            }
        },
        autoPlay: function() {
            var i = this;
            clearTimeout(i.playTimer);
            i.playTimer = setTimeout(t.proxy(i, i.options.mode), i.options.intervalTime)
        },
        controlsSwitch: function() {
            var i = this;
            this.$next.on("click", t.proxy(i, i.options.mode));
            this.$prev.on("click", t.proxy(i, i.options.mode + "Prev"))
        },
        pagesSwitch: function() {
            if (!this.options.isShowPage || !this.$pages) return;
            var i = this;
            t("a", this.$pages).on("click",
            function() {
                i.curIndex = t(this).index();
                i.options.onSelected.call(this, i.curIndex);
                i[i.options.mode + "Prev"](true)
            })
        },
        getPages: function() {
            var i = [];
            var e = this.curIndex;
            t(this.$item).each(function(t) {
                var o = t == e ? 'class="active"': "";
                i.push('<a href="javascript:;" ' + o + ">" + (t + 1) + "</a>")
            });
            return i.join("")
        },
        getSize: function() {
            var i = this.$item.eq(0),
            e;
            if (this.options.isFullScreen) {
                e = {
                    width: t(window).width(),
                    height: t(window).height()
                }
            } else {
                if (this.options.isFlexible) {
                    var i = this.$wrap ? this.$wrap.parent() : this.$container.parent();
                    e = this.options.direction == "top" ? {
                        height: i.height()
                    }: {
                        width: i.width()
                    }
                }
            }
            return e || {
                width: i.width(),
                height: i.height()
            }
        }
    };
    t.fn.hiSlider = function(e) {
        this.each(function() {
            t(this).data("mr.slider", new i(t(this), e))
        });
        return this
    }
})(window.jQuery);