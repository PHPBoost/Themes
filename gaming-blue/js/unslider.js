!(function (jQuery) {
    return jQuery
        ? ((jQuery.Unslider = function (t, n) {
              var e = this;
              return (
                  (e._ = "unslider"),
                  (e.defaults = {
                      autoplay: !0,
                      delay: 9e3,
                      speed: 750,
                      easing: "swing",
                      keys: { prev: 37, next: 39 },
                      nav: !0,
                      arrows: { prev: '<a class="' + e._ + '-arrow unslider-prev"><i class="fa fa-chevron-left" aria-hidden="true"></i></a>', next: '<a class="' + e._ + '-arrow unslider-next"><i class="fa fa-chevron-right" aria-hidden="true"></i></a>' },
                      animation: "horizontal",
                      selectors: { container: "ul:first", slides: "li" },
                      animateHeight: !1,
                      activeClass: e._ + "-active",
                      swipe: !0,
                      swipeThreshold: 0.2,
                  }),
                  (e.jQuerycontext = t),
                  (e.options = {}),
                  (e.jQueryparent = null),
                  (e.jQuerycontainer = null),
                  (e.jQueryslides = null),
                  (e.jQuerynav = null),
                  (e.jQueryarrows = []),
                  (e.total = 0),
                  (e.current = 0),
                  (e.prefix = e._ + "-"),
                  (e.eventSuffix = "." + e.prefix + ~~(2e3 * Math.random())),
                  (e.interval = null),
                  (e.init = function (t) {
                      return (
                          (e.options = jQuery.extend({}, e.defaults, t)),
                          (e.jQuerycontainer = e.jQuerycontext.find(e.options.selectors.container).addClass(e.prefix + "wrap")),
                          (e.jQueryslides = e.jQuerycontainer.children(e.options.selectors.slides)),
                          e.setup(),
                          jQuery.each(["nav", "arrows", "keys", "infinite"], function (t, n) {
                              e.options[n] && e["init" + jQuery._ucfirst(n)]();
                          }),
                          jQuery.event.special.swipe && e.options.swipe && e.initSwipe(),
                          e.options.autoplay && e.start(),
                          e.calculateSlides(),
                          e.jQuerycontext.trigger(e._ + ".ready"),
                          e.animate(e.options.index || e.current, "init")
                      );
                  }),
                  (e.setup = function () {
                      e.jQuerycontext.addClass(e.prefix + e.options.animation).wrap('<div class="' + e._ + '" />'), (e.jQueryparent = e.jQuerycontext.parent("." + e._));
                      var t = e.jQuerycontext.css("position");
                      "static" === t && e.jQuerycontext.css("position", "relative"), e.jQuerycontext.css("overflow", "hidden");
                  }),
                  (e.calculateSlides = function () {
                      if (((e.total = e.jQueryslides.length), "fade" !== e.options.animation)) {
                          var t = "width";
                          "vertical" === e.options.animation && (t = "height"), e.jQuerycontainer.css(t, 100 * e.total + "%").addClass(e.prefix + "carousel"), e.jQueryslides.css(t, 100 / e.total + "%");
                      }
                  }),
                  (e.start = function () {
                      return (
                          (e.interval = setTimeout(function () {
                              e.next();
                          }, e.options.delay)),
                          e
                      );
                  }),
                  (e.stop = function () {
                      return clearTimeout(e.interval), e;
                  }),
                  (e.initNav = function () {
                      var t = jQuery('<nav class="' + e.prefix + 'nav"><ol /></nav>');
                      e.jQueryslides.each(function (n) {
                          var i = this.getAttribute("data-nav") || n + 1;
                          jQuery.isFunction(e.options.nav) && (i = e.options.nav.call(e.jQueryslides.eq(n), n, i)), t.children("ol").append('<li data-slide="' + n + '">' + i + "</li>");
                      }),
                          (e.jQuerynav = t.insertAfter(e.jQuerycontext)),
                          e.jQuerynav.find("li").on("click" + e.eventSuffix, function () {
                              var t = jQuery(this).addClass(e.options.activeClass);
                              t.siblings().removeClass(e.options.activeClass), e.animate(t.attr("data-slide"));
                          });
                  }),
                  (e.initArrows = function () {
                      e.options.arrows === !0 && (e.options.arrows = e.defaults.arrows),
                          jQuery.each(e.options.arrows, function (t, n) {
                              e.jQueryarrows.push(
                                  jQuery(n)
                                      .insertAfter(e.jQuerycontext)
                                      .on("click" + e.eventSuffix, e[t])
                              );
                          });
                  }),
                  (e.initKeys = function () {
                      e.options.keys === !0 && (e.options.keys = e.defaults.keys),
                          jQuery(document).on("keyup" + e.eventSuffix, function (t) {
                              jQuery.each(e.options.keys, function (n, i) {
                                  t.which === i && jQuery.isFunction(e[n]) && e[n].call(e);
                              });
                          });
                  }),
                  (e.initSwipe = function () {
                      var t = e.jQueryslides.width();
                      "fade" !== e.options.animation &&
                          e.jQuerycontainer.on({
                              movestart: function (t) {
                                  return (t.distX > t.distY && t.distX < -t.distY) || (t.distX < t.distY && t.distX > -t.distY) ? !!t.preventDefault() : void e.jQuerycontainer.css("position", "relative");
                              },
                              move: function (n) {
                                  e.jQuerycontainer.css("left", -(100 * e.current) + (100 * n.distX) / t + "%");
                              },
                              moveend: function (n) {
                                  Math.abs(n.distX) / t > e.options.swipeThreshold ? e[n.distX < 0 ? "unslider-next" : "unslider-prev"]() : e.jQuerycontainer.animate({ left: -(100 * e.current) + "%" }, e.options.speed / 2);
                              },
                          });
                  }),
                  (e.initInfinite = function () {
                      var t = ["first", "last"];
                      jQuery.each(t, function (n, i) {
                          e.jQueryslides.push.apply(
                              e.jQueryslides,
                              e.jQueryslides
                                  .filter(':not(".' + e._ + '-clone")')
                                  [i]()
                                  .clone()
                                  .addClass(e._ + "-clone")
                                  ["insert" + (0 === n ? "After" : "Before")](e.jQueryslides[t[~~!n]]())
                          );
                      });
                  }),
                  (e.destroyArrows = function () {
                      jQuery.each(e.jQueryarrows, function (t, n) {
                          n.remove();
                      });
                  }),
                  (e.destroySwipe = function () {
                      e.jQuerycontainer.off("movestart move moveend");
                  }),
                  (e.destroyKeys = function () {
                      jQuery(document).off("keyup" + e.eventSuffix);
                  }),
                  (e.setIndex = function (t) {
                      return (
                          0 > t && (t = e.total - 1),
                          (e.current = Math.min(Math.max(0, t), e.total - 1)),
                          e.options.nav && e.jQuerynav.find('[data-slide="' + e.current + '"]')._active(e.options.activeClass),
                          e.jQueryslides.eq(e.current)._active(e.options.activeClass),
                          e
                      );
                  }),
                  (e.animate = function (t, n) {
                      if (("first" === t && (t = 0), "last" === t && (t = e.total), isNaN(t))) return e;
                      e.options.autoplay && e.stop().start(), e.setIndex(t), e.jQuerycontext.trigger(e._ + ".change", [t, e.jQueryslides.eq(t)]);
                      var i = "animate" + jQuery._ucfirst(e.options.animation);
                      return jQuery.isFunction(e[i]) && e[i](e.current, n), e;
                  }),
                  (e.next = function () {
                      var t = e.current + 1;
                      return t >= e.total && (t = 0), e.animate(t, "unslider-next");
                  }),
                  (e.prev = function () {
                      return e.animate(e.current - 1, "unslider-prev");
                  }),
                  (e.animateHorizontal = function (t) {
                      var n = "left";
                      return "rtl" === e.jQuerycontext.attr("dir") && (n = "right"), e.options.infinite && e.jQuerycontainer.css("margin-" + n, "-100%"), e.slide(n, t);
                  }),
                  (e.animateVertical = function (t) {
                      return (e.options.animateHeight = !0), e.options.infinite && e.jQuerycontainer.css("margin-top", -e.jQueryslides.outerHeight()), e.slide("top", t);
                  }),
                  (e.slide = function (t, n) {
                      if ((e.options.animateHeight && e._move(e.jQuerycontext, { height: e.jQueryslides.eq(n).outerHeight() }, !1), e.options.infinite)) {
                          var i;
                          n === e.total - 1 && ((i = e.total - 3), (n = -1)),
                              n === e.total - 2 && ((i = 0), (n = e.total - 2)),
                              "number" == typeof i &&
                                  (e.setIndex(i),
                                  e.jQuerycontext.on(e._ + ".moved", function () {
                                      e.current === i && e.jQuerycontainer.css(t, -(100 * i) + "%").off(e._ + ".moved");
                                  }));
                      }
                      var o = {};
                      return (o[t] = -(100 * n) + "%"), e._move(e.jQuerycontainer, o);
                  }),
                  (e.animateFade = function (t) {
                      var n = e.jQueryslides.eq(t).addClass(e.options.activeClass);
                      e._move(n.siblings().removeClass(e.options.activeClass), { opacity: 0 }), e._move(n, { opacity: 1 }, !1);
                  }),
                  (e._move = function (t, n, i, o) {
                      return (
                          i !== !1 &&
                              (i = function () {
                                  e.jQuerycontext.trigger(e._ + ".moved");
                              }),
                          t._move(n, o || e.options.speed, e.options.easing, i)
                      );
                  }),
                  e.init(n)
              );
          }),
          (jQuery.fn._active = function (t) {
              return this.addClass(t).siblings().removeClass(t);
          }),
          (jQuery._ucfirst = function (t) {
              return (t + "").toLowerCase().replace(/^./, function (t) {
                  return t.toUpperCase();
              });
          }),
          (jQuery.fn._move = function () {
              return this.stop(!0, !0), jQuery.fn[jQuery.fn.velocity ? "velocity" : "animate"].apply(this, arguments);
          }),
          void (jQuery.fn.unslider = function (t) {
              return this.each(function () {
                  var n = jQuery(this);
                  if ("string" == typeof t && n.data("unslider")) {
                      t = t.split(":");
                      var e = n.data("unslider")[t[0]];
                      if (jQuery.isFunction(e)) return e.apply(n, t[1] ? t[1].split(",") : null);
                  }
                  return n.data("unslider", new jQuery.Unslider(n, t));
              });
          }))
        : console.warn("Unslider needs jQuery");
})(window.jQuery);
