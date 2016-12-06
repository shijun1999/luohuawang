<!DOCTYPE html>
<html prefix="og: http://ogp.me/ns#" xmlns:fb="http://ogp.me/ns/fb#">
<head>
    <meta charset="utf-8">
    <script type="text/javascript">window.NREUM || (NREUM = {});
    NREUM.info = {
        "beacon": "bam.nr-data.net",
        "errorBeacon": "bam.nr-data.net",
        "licenseKey": "0f5fa33b45",
        "applicationID": "993290",
        "transactionName": "JldYQUoKWFRXEBcTQwpIU0dMHBtLVwNKAFkASxlbXRI=",
        "queueTime": 0,
        "applicationTime": 146,
        "agent": ""
    }</script>
    <script type="text/javascript">(window.NREUM || (NREUM = {})).loader_config = {xpid: "VgYAUFVaGwoJV1NbBw=="};
    window.NREUM || (NREUM = {}), __nr_require = function (t, e, n) {
        function r(n) {
            if (!e[n]) {
                var o = e[n] = {exports: {}};
                t[n][0].call(o.exports, function (e) {
                    var o = t[n][1][e];
                    return r(o || e)
                }, o, o.exports)
            }
            return e[n].exports
        }

        if ("function" == typeof __nr_require)return __nr_require;
        for (var o = 0; o < n.length; o++)r(n[o]);
        return r
    }({
        1: [function (t, e, n) {
            function r(t) {
                try {
                    c.console && console.log(t)
                } catch (e) {
                }
            }

            var o, i = t("ee"), a = t(15), c = {};
            try {
                o = localStorage.getItem("__nr_flags").split(","), console && "function" == typeof console.log && (c.console = !0, o.indexOf("dev") !== -1 && (c.dev = !0), o.indexOf("nr_dev") !== -1 && (c.nrDev = !0))
            } catch (s) {
            }
            c.nrDev && i.on("internal-error", function (t) {
                r(t.stack)
            }), c.dev && i.on("fn-err", function (t, e, n) {
                r(n.stack)
            }), c.dev && (r("NR AGENT IN DEVELOPMENT MODE"), r("flags: " + a(c, function (t, e) {
                        return t
                    }).join(", ")))
        }, {}], 2: [function (t, e, n) {
            function r(t, e, n, r, o) {
                try {
                    d ? d -= 1 : i("err", [o || new UncaughtException(t, e, n)])
                } catch (c) {
                    try {
                        i("ierr", [c, (new Date).getTime(), !0])
                    } catch (s) {
                    }
                }
                return "function" == typeof f && f.apply(this, a(arguments))
            }

            function UncaughtException(t, e, n) {
                this.message = t || "Uncaught error with no additional information", this.sourceURL = e, this.line = n
            }

            function o(t) {
                i("err", [t, (new Date).getTime()])
            }

            var i = t("handle"), a = t(16), c = t("ee"), s = t("loader"), f = window.onerror, u = !1, d = 0;
            s.features.err = !0, t(1), window.onerror = r;
            try {
                throw new Error
            } catch (l) {
                "stack" in l && (t(8), t(7), "addEventListener" in window && t(5), s.xhrWrappable && t(9), u = !0)
            }
            c.on("fn-start", function (t, e, n) {
                u && (d += 1)
            }), c.on("fn-err", function (t, e, n) {
                u && (this.thrown = !0, o(n))
            }), c.on("fn-end", function () {
                u && !this.thrown && d > 0 && (d -= 1)
            }), c.on("internal-error", function (t) {
                i("ierr", [t, (new Date).getTime(), !0])
            })
        }, {}], 3: [function (t, e, n) {
            t("loader").features.ins = !0
        }, {}], 4: [function (t, e, n) {
            function r(t) {
            }

            if (window.performance && window.performance.timing && window.performance.getEntriesByType) {
                var o = t("ee"), i = t("handle"), a = t(8), c = t(7), s = "learResourceTimings", f = "addEventListener", u = "resourcetimingbufferfull", d = "bstResource", l = "resource", p = "-start", h = "-end", m = "fn" + p, w = "fn" + h, v = "bstTimer", y = "pushState";
                t("loader").features.stn = !0, t(6);
                var g = NREUM.o.EV;
                o.on(m, function (t, e) {
                    var n = t[0];
                    n instanceof g && (this.bstStart = Date.now())
                }), o.on(w, function (t, e) {
                    var n = t[0];
                    n instanceof g && i("bst", [n, e, this.bstStart, Date.now()])
                }), a.on(m, function (t, e, n) {
                    this.bstStart = Date.now(), this.bstType = n
                }), a.on(w, function (t, e) {
                    i(v, [e, this.bstStart, Date.now(), this.bstType])
                }), c.on(m, function () {
                    this.bstStart = Date.now()
                }), c.on(w, function (t, e) {
                    i(v, [e, this.bstStart, Date.now(), "requestAnimationFrame"])
                }), o.on(y + p, function (t) {
                    this.time = Date.now(), this.startPath = location.pathname + location.hash
                }), o.on(y + h, function (t) {
                    i("bstHist", [location.pathname + location.hash, this.startPath, this.time])
                }), f in window.performance && (window.performance["c" + s] ? window.performance[f](u, function (t) {
                    i(d, [window.performance.getEntriesByType(l)]), window.performance["c" + s]()
                }, !1) : window.performance[f]("webkit" + u, function (t) {
                    i(d, [window.performance.getEntriesByType(l)]), window.performance["webkitC" + s]()
                }, !1)), document[f]("scroll", r, !1), document[f]("keypress", r, !1), document[f]("click", r, !1)
            }
        }, {}], 5: [function (t, e, n) {
            function r(t) {
                for (var e = t; e && !e.hasOwnProperty(u);)e = Object.getPrototypeOf(e);
                e && o(e)
            }

            function o(t) {
                c.inPlace(t, [u, d], "-", i)
            }

            function i(t, e) {
                return t[1]
            }

            var a = t("ee").get("events"), c = t(17)(a, !0), s = t("gos"), f = XMLHttpRequest, u = "addEventListener", d = "removeEventListener";
            e.exports = a, "getPrototypeOf" in Object ? (r(document), r(window), r(f.prototype)) : f.prototype.hasOwnProperty(u) && (o(window), o(f.prototype)), a.on(u + "-start", function (t, e) {
                var n = t[1], r = s(n, "nr@wrapped", function () {
                    function t() {
                        if ("function" == typeof n.handleEvent)return n.handleEvent.apply(n, arguments)
                    }

                    var e = {object: t, "function": n}[typeof n];
                    return e ? c(e, "fn-", null, e.name || "anonymous") : n
                });
                this.wrapped = t[1] = r
            }), a.on(d + "-start", function (t) {
                t[1] = this.wrapped || t[1]
            })
        }, {}], 6: [function (t, e, n) {
            var r = t("ee").get("history"), o = t(17)(r);
            e.exports = r, o.inPlace(window.history, ["pushState", "replaceState"], "-")
        }, {}], 7: [function (t, e, n) {
            var r = t("ee").get("raf"), o = t(17)(r), i = "equestAnimationFrame";
            e.exports = r, o.inPlace(window, ["r" + i, "mozR" + i, "webkitR" + i, "msR" + i], "raf-"), r.on("raf-start", function (t) {
                t[0] = o(t[0], "fn-")
            })
        }, {}], 8: [function (t, e, n) {
            function r(t, e, n) {
                t[0] = a(t[0], "fn-", null, n)
            }

            function o(t, e, n) {
                this.method = n, this.timerDuration = "number" == typeof t[1] ? t[1] : 0, t[0] = a(t[0], "fn-", this, n)
            }

            var i = t("ee").get("timer"), a = t(17)(i), c = "setTimeout", s = "setInterval", f = "clearTimeout", u = "-start", d = "-";
            e.exports = i, a.inPlace(window, [c, "setImmediate"], c + d), a.inPlace(window, [s], s + d), a.inPlace(window, [f, "clearImmediate"], f + d), i.on(s + u, r), i.on(c + u, o)
        }, {}], 9: [function (t, e, n) {
            function r(t, e) {
                d.inPlace(e, ["onreadystatechange"], "fn-", c)
            }

            function o() {
                var t = this, e = u.context(t);
                t.readyState > 3 && !e.resolved && (e.resolved = !0, u.emit("xhr-resolved", [], t)), d.inPlace(t, w, "fn-", c)
            }

            function i(t) {
                v.push(t), h && (g = -g, b.data = g)
            }

            function a() {
                for (var t = 0; t < v.length; t++)r([], v[t]);
                v.length && (v = [])
            }

            function c(t, e) {
                return e
            }

            function s(t, e) {
                for (var n in t)e[n] = t[n];
                return e
            }

            t(5);
            var f = t("ee"), u = f.get("xhr"), d = t(17)(u), l = NREUM.o, p = l.XHR, h = l.MO, m = "readystatechange", w = ["onload", "onerror", "onabort", "onloadstart", "onloadend", "onprogress", "ontimeout"], v = [];
            e.exports = u;
            var y = window.XMLHttpRequest = function (t) {
                var e = new p(t);
                try {
                    u.emit("new-xhr", [e], e), e.addEventListener(m, o, !1)
                } catch (n) {
                    try {
                        u.emit("internal-error", [n])
                    } catch (r) {
                    }
                }
                return e
            };
            if (s(p, y), y.prototype = p.prototype, d.inPlace(y.prototype, ["open", "send"], "-xhr-", c), u.on("send-xhr-start", function (t, e) {
                        r(t, e), i(e)
                    }), u.on("open-xhr-start", r), h) {
                var g = 1, b = document.createTextNode(g);
                new h(a).observe(b, {characterData: !0})
            } else f.on("fn-end", function (t) {
                t[0] && t[0].type === m || a()
            })
        }, {}], 10: [function (t, e, n) {
            function r(t) {
                var e = this.params, n = this.metrics;
                if (!this.ended) {
                    this.ended = !0;
                    for (var r = 0; r < d; r++)t.removeEventListener(u[r], this.listener, !1);
                    if (!e.aborted) {
                        if (n.duration = (new Date).getTime() - this.startTime, 4 === t.readyState) {
                            e.status = t.status;
                            var i = o(t, this.lastSize);
                            if (i && (n.rxSize = i), this.sameOrigin) {
                                var a = t.getResponseHeader("X-NewRelic-App-Data");
                                a && (e.cat = a.split(", ").pop())
                            }
                        } else e.status = 0;
                        n.cbTime = this.cbTime, f.emit("xhr-done", [t], t), c("xhr", [e, n, this.startTime])
                    }
                }
            }

            function o(t, e) {
                var n = t.responseType;
                if ("json" === n && null !== e)return e;
                var r = "arraybuffer" === n || "blob" === n || "json" === n ? t.response : t.responseText;
                return h(r)
            }

            function i(t, e) {
                var n = s(e), r = t.params;
                r.host = n.hostname + ":" + n.port, r.pathname = n.pathname, t.sameOrigin = n.sameOrigin
            }

            var a = t("loader");
            if (a.xhrWrappable) {
                var c = t("handle"), s = t(11), f = t("ee"), u = ["load", "error", "abort", "timeout"], d = u.length, l = t("id"), p = t(14), h = t(13), m = window.XMLHttpRequest;
                a.features.xhr = !0, t(9), f.on("new-xhr", function (t) {
                    var e = this;
                    e.totalCbs = 0, e.called = 0, e.cbTime = 0, e.end = r, e.ended = !1, e.xhrGuids = {}, e.lastSize = null, p && (p > 34 || p < 10) || window.opera || t.addEventListener("progress", function (t) {
                        e.lastSize = t.loaded
                    }, !1)
                }), f.on("open-xhr-start", function (t) {
                    this.params = {method: t[0]}, i(this, t[1]), this.metrics = {}
                }), f.on("open-xhr-end", function (t, e) {
                    "loader_config" in NREUM && "xpid" in NREUM.loader_config && this.sameOrigin && e.setRequestHeader("X-NewRelic-ID", NREUM.loader_config.xpid)
                }), f.on("send-xhr-start", function (t, e) {
                    var n = this.metrics, r = t[0], o = this;
                    if (n && r) {
                        var i = h(r);
                        i && (n.txSize = i)
                    }
                    this.startTime = (new Date).getTime(), this.listener = function (t) {
                        try {
                            "abort" === t.type && (o.params.aborted = !0), ("load" !== t.type || o.called === o.totalCbs && (o.onloadCalled || "function" != typeof e.onload)) && o.end(e)
                        } catch (n) {
                            try {
                                f.emit("internal-error", [n])
                            } catch (r) {
                            }
                        }
                    };
                    for (var a = 0; a < d; a++)e.addEventListener(u[a], this.listener, !1)
                }), f.on("xhr-cb-time", function (t, e, n) {
                    this.cbTime += t, e ? this.onloadCalled = !0 : this.called += 1, this.called !== this.totalCbs || !this.onloadCalled && "function" == typeof n.onload || this.end(n)
                }), f.on("xhr-load-added", function (t, e) {
                    var n = "" + l(t) + !!e;
                    this.xhrGuids && !this.xhrGuids[n] && (this.xhrGuids[n] = !0, this.totalCbs += 1)
                }), f.on("xhr-load-removed", function (t, e) {
                    var n = "" + l(t) + !!e;
                    this.xhrGuids && this.xhrGuids[n] && (delete this.xhrGuids[n], this.totalCbs -= 1)
                }), f.on("addEventListener-end", function (t, e) {
                    e instanceof m && "load" === t[0] && f.emit("xhr-load-added", [t[1], t[2]], e)
                }), f.on("removeEventListener-end", function (t, e) {
                    e instanceof m && "load" === t[0] && f.emit("xhr-load-removed", [t[1], t[2]], e)
                }), f.on("fn-start", function (t, e, n) {
                    e instanceof m && ("onload" === n && (this.onload = !0), ("load" === (t[0] && t[0].type) || this.onload) && (this.xhrCbStart = (new Date).getTime()))
                }), f.on("fn-end", function (t, e) {
                    this.xhrCbStart && f.emit("xhr-cb-time", [(new Date).getTime() - this.xhrCbStart, this.onload, e], e)
                })
            }
        }, {}], 11: [function (t, e, n) {
            e.exports = function (t) {
                var e = document.createElement("a"), n = window.location, r = {};
                e.href = t, r.port = e.port;
                var o = e.href.split("://");
                !r.port && o[1] && (r.port = o[1].split("/")[0].split("@").pop().split(":")[1]), r.port && "0" !== r.port || (r.port = "https" === o[0] ? "443" : "80"), r.hostname = e.hostname || n.hostname, r.pathname = e.pathname, r.protocol = o[0], "/" !== r.pathname.charAt(0) && (r.pathname = "/" + r.pathname);
                var i = !e.protocol || ":" === e.protocol || e.protocol === n.protocol, a = e.hostname === document.domain && e.port === n.port;
                return r.sameOrigin = i && (!e.hostname || a), r
            }
        }, {}], 12: [function (t, e, n) {
            function r() {
            }

            function o(t, e, n) {
                return function () {
                    return i(t, [(new Date).getTime()].concat(c(arguments)), e ? null : this, n), e ? void 0 : this
                }
            }

            var i = t("handle"), a = t(15), c = t(16), s = t("ee").get("tracer"), f = NREUM;
            "undefined" == typeof window.newrelic && (newrelic = f);
            var u = ["setPageViewName", "setCustomAttribute", "setErrorHandler", "finished", "addToTrace", "inlineHit"], d = "api-", l = d + "ixn-";
            a(u, function (t, e) {
                f[e] = o(d + e, !0, "api")
            }), f.addPageAction = o(d + "addPageAction", !0), f.setCurrentRouteName = o(d + "routeName", !0), e.exports = newrelic, f.interaction = function () {
                return (new r).get()
            };
            var p = r.prototype = {
                createTracer: function (t, e) {
                    var n = {}, r = this, o = "function" == typeof e;
                    return i(l + "tracer", [Date.now(), t, n], r), function () {
                        if (s.emit((o ? "" : "no-") + "fn-start", [Date.now(), r, o], n), o)try {
                            return e.apply(this, arguments)
                        } finally {
                            s.emit("fn-end", [Date.now()], n)
                        }
                    }
                }
            };
            a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","), function (t, e) {
                p[e] = o(l + e)
            }), newrelic.noticeError = function (t) {
                "string" == typeof t && (t = new Error(t)), i("err", [t, (new Date).getTime()])
            }
        }, {}], 13: [function (t, e, n) {
            e.exports = function (t) {
                if ("string" == typeof t && t.length)return t.length;
                if ("object" == typeof t) {
                    if ("undefined" != typeof ArrayBuffer && t instanceof ArrayBuffer && t.byteLength)return t.byteLength;
                    if ("undefined" != typeof Blob && t instanceof Blob && t.size)return t.size;
                    if (!("undefined" != typeof FormData && t instanceof FormData))try {
                        return JSON.stringify(t).length
                    } catch (e) {
                        return
                    }
                }
            }
        }, {}], 14: [function (t, e, n) {
            var r = 0, o = navigator.userAgent.match(/Firefox[\/\s](\d+\.\d+)/);
            o && (r = +o[1]), e.exports = r
        }, {}], 15: [function (t, e, n) {
            function r(t, e) {
                var n = [], r = "", i = 0;
                for (r in t)o.call(t, r) && (n[i] = e(r, t[r]), i += 1);
                return n
            }

            var o = Object.prototype.hasOwnProperty;
            e.exports = r
        }, {}], 16: [function (t, e, n) {
            function r(t, e, n) {
                e || (e = 0), "undefined" == typeof n && (n = t ? t.length : 0);
                for (var r = -1, o = n - e || 0, i = Array(o < 0 ? 0 : o); ++r < o;)i[r] = t[e + r];
                return i
            }

            e.exports = r
        }, {}], 17: [function (t, e, n) {
            function r(t) {
                return !(t && t instanceof Function && t.apply && !t[a])
            }

            var o = t("ee"), i = t(16), a = "nr@original", c = Object.prototype.hasOwnProperty, s = !1;
            e.exports = function (t, e) {
                function n(t, e, n, o) {
                    function nrWrapper() {
                        var r, a, c, s;
                        try {
                            a = this, r = i(arguments), c = "function" == typeof n ? n(r, a) : n || {}
                        } catch (f) {
                            l([f, "", [r, a, o], c])
                        }
                        u(e + "start", [r, a, o], c);
                        try {
                            return s = t.apply(a, r)
                        } catch (d) {
                            throw u(e + "err", [r, a, d], c), d
                        } finally {
                            u(e + "end", [r, a, s], c)
                        }
                    }

                    return r(t) ? t : (e || (e = ""), nrWrapper[a] = t, d(t, nrWrapper), nrWrapper)
                }

                function f(t, e, o, i) {
                    o || (o = "");
                    var a, c, s, f = "-" === o.charAt(0);
                    for (s = 0; s < e.length; s++)c = e[s], a = t[c], r(a) || (t[c] = n(a, f ? c + o : o, i, c))
                }

                function u(n, r, o) {
                    if (!s || e) {
                        var i = s;
                        s = !0;
                        try {
                            t.emit(n, r, o)
                        } catch (a) {
                            l([a, n, r, o])
                        }
                        s = i
                    }
                }

                function d(t, e) {
                    if (Object.defineProperty && Object.keys)try {
                        var n = Object.keys(t);
                        return n.forEach(function (n) {
                            Object.defineProperty(e, n, {
                                get: function () {
                                    return t[n]
                                }, set: function (e) {
                                    return t[n] = e, e
                                }
                            })
                        }), e
                    } catch (r) {
                        l([r])
                    }
                    for (var o in t)c.call(t, o) && (e[o] = t[o]);
                    return e
                }

                function l(e) {
                    try {
                        t.emit("internal-error", e)
                    } catch (n) {
                    }
                }

                return t || (t = o), n.inPlace = f, n.flag = a, n
            }
        }, {}], ee: [function (t, e, n) {
            function r() {
            }

            function o(t) {
                function e(t) {
                    return t && t instanceof r ? t : t ? s(t, c, i) : i()
                }

                function n(n, r, o) {
                    if (!l.aborted) {
                        t && t(n, r, o);
                        for (var i = e(o), a = h(n), c = a.length, s = 0; s < c; s++)a[s].apply(i, r);
                        var f = u[y[n]];
                        return f && f.push([g, n, r, i]), i
                    }
                }

                function p(t, e) {
                    v[t] = h(t).concat(e)
                }

                function h(t) {
                    return v[t] || []
                }

                function m(t) {
                    return d[t] = d[t] || o(n)
                }

                function w(t, e) {
                    f(t, function (t, n) {
                        e = e || "feature", y[n] = e, e in u || (u[e] = [])
                    })
                }

                var v = {}, y = {}, g = {
                    on: p,
                    emit: n,
                    get: m,
                    listeners: h,
                    context: e,
                    buffer: w,
                    abort: a,
                    aborted: !1
                };
                return g
            }

            function i() {
                return new r
            }

            function a() {
                (u.api || u.feature) && (l.aborted = !0, u = l.backlog = {})
            }

            var c = "nr@context", s = t("gos"), f = t(15), u = {}, d = {}, l = e.exports = o();
            l.backlog = u
        }, {}], gos: [function (t, e, n) {
            function r(t, e, n) {
                if (o.call(t, e))return t[e];
                var r = n();
                if (Object.defineProperty && Object.keys)try {
                    return Object.defineProperty(t, e, {value: r, writable: !0, enumerable: !1}), r
                } catch (i) {
                }
                return t[e] = r, r
            }

            var o = Object.prototype.hasOwnProperty;
            e.exports = r
        }, {}], handle: [function (t, e, n) {
            function r(t, e, n, r) {
                o.buffer([t], r), o.emit(t, e, n)
            }

            var o = t("ee").get("handle");
            e.exports = r, r.ee = o
        }, {}], id: [function (t, e, n) {
            function r(t) {
                var e = typeof t;
                return !t || "object" !== e && "function" !== e ? -1 : t === window ? 0 : a(t, i, function () {
                    return o++
                })
            }

            var o = 1, i = "nr@id", a = t("gos");
            e.exports = r
        }, {}], loader: [function (t, e, n) {
            function r() {
                if (!b++) {
                    var t = g.info = NREUM.info, e = d.getElementsByTagName("script")[0];
                    if (setTimeout(f.abort, 3e4), !(t && t.licenseKey && t.applicationID && e))return f.abort();
                    s(v, function (e, n) {
                        t[e] || (t[e] = n)
                    }), c("mark", ["onload", a()], null, "api");
                    var n = d.createElement("script");
                    n.src = "https://" + t.agent, e.parentNode.insertBefore(n, e)
                }
            }

            function o() {
                "complete" === d.readyState && i()
            }

            function i() {
                c("mark", ["domContent", a()], null, "api")
            }

            function a() {
                return (new Date).getTime()
            }

            var c = t("handle"), s = t(15), f = t("ee"), u = window, d = u.document, l = "addEventListener", p = "attachEvent", h = u.XMLHttpRequest, m = h && h.prototype;
            NREUM.o = {
                ST: setTimeout,
                CT: clearTimeout,
                XHR: h,
                REQ: u.Request,
                EV: u.Event,
                PR: u.Promise,
                MO: u.MutationObserver
            }, t(12);
            var w = "" + location, v = {
                beacon: "bam.nr-data.net",
                errorBeacon: "bam.nr-data.net",
                agent: "js-agent.newrelic.com/nr-998.min.js"
            }, y = h && m && m[l] && !/CriOS/.test(navigator.userAgent), g = e.exports = {
                offset: a(),
                origin: w,
                features: {},
                xhrWrappable: y
            };
            d[l] ? (d[l]("DOMContentLoaded", i, !1), u[l]("load", r, !1)) : (d[p]("onreadystatechange", o), u[p]("onload", r)), c("mark", ["firstbyte", a()], null, "api");
            var b = 0
        }, {}]
    }, {}, ["loader", 2, 10, 4, 3]);</script>
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <meta content="Find new homes, condos and houses for sale in Greater Vancouver. REW.ca provides the latest real estate listings in BC, home buying tips and market news."
          name="description"/>
    <meta content="website" property="og:type"/>
    <meta content="REW.ca" property="og:site_name"/>
    <meta content="Homes for Sale & MLS® Listings, Real Estate Market News" property="og:title"/>
    <meta content="Find new homes, condos and houses for sale in Greater Vancouver. REW.ca provides the latest real estate listings in BC, home buying tips and market news."
          property="og:description"/>
    <meta content="http://www.rew.ca/" property="og:url"/>
    <meta content="http://d3ljd161w9lywl.cloudfront.net/assets/logo-c8f1f1f785eee90e34948a68825f9cf0.png"
          property="og:image"/>

    <link href="http://www.rew.ca/" rel="canonical"/>

    <title>
        Homes for Sale & MLS® Listings, Real Estate Market News
        |
        REW.ca
    </title>
    <!-- For third-generation iPad with high-resolution Retina display: -->
    <link href="http://d3ljd161w9lywl.cloudfront.net/assets/icons/apple-touch/icon-144x144-precomposed-1955fdc2240b6568d96cb50f54fae5ca.png"
          rel="apple-touch-icon-precomposed" sizes="144x144">
    <!-- For iPhone with high-resolution Retina display: -->
    <link href="http://d3ljd161w9lywl.cloudfront.net/assets/icons/apple-touch/icon-114x114-precomposed-53f36cfbde9dab220ef607c03663d8dd.png"
          rel="apple-touch-icon-precomposed" sizes="114x114">
    <!-- For first- and second-generation iPad: -->
    <link href="http://d3ljd161w9lywl.cloudfront.net/assets/icons/apple-touch/icon-72x72-precomposed-353b68a8868365a63a320ed59b3ecb10.png"
          rel="apple-touch-icon-precomposed" sizes="72x72">
    <!-- For non-Retina iPhone, iPod Touch, and Android 2.1+ devices: -->
    <link href="http://d3ljd161w9lywl.cloudfront.net/assets/icons/apple-touch/icon-57x57-precomposed-5cfc8916a5387a75d9897393a5d6cce6.png"
          rel="apple-touch-icon-precomposed">

    <link href="http://d3ljd161w9lywl.cloudfront.net/assets/vendor-e0a93183322a8c6434b267db1b894f32.css" media="all"
          rel="stylesheet"/>
    <link href="http://d3ljd161w9lywl.cloudfront.net/assets/application-93596443c3575f40b7e61d02391afbb3.css"
          media="all" rel="stylesheet"/>
    <meta content="authenticity_token" name="csrf-param"/>
    <meta content="EfJdxMWkPKBFZ4UgGu5m7YNI7Ct7ruUmy0uIgNOgSHQ=" name="csrf-token"/>
    <!--[if lt IE 9]>
    <script src="http://d3ljd161w9lywl.cloudfront.net/assets/html5shiv-3c30013eb279a2882a02b23f2db2ef23.js"></script>
    <![endif]-->
    <script>
        var tcvars = {
            publication: "REW",
            site: "REW"
        };
        tcvars['section'] = 'homepage';


        // Google Publisher Tags
        var googletag = googletag || {};
        googletag.cmd = googletag.cmd || [];
        (function () {
            var gads = document.createElement('script');
            gads.async = true;
            gads.type = 'text/javascript';
            var useSSL = 'https:' == document.location.protocol;
            gads.src = (useSSL ? 'https:' : 'http:') +
                    '//www.googletagservices.com/tag/js/gpt.js';
            var node = document.getElementsByTagName('script')[0];
            node.parentNode.insertBefore(gads, node);
        })();

        googletag.cmd.push(function () {

            googletag.pubads().setTargeting('publisher', 'REW');
            googletag.pubads().setTargeting('site', 'REW');
            googletag.pubads().setTargeting('is_page', 'rew_Home');
            googletag.pubads().setTargeting('section', 'homepage');

            googletag.pubads().enableSingleRequest();
            googletag.enableServices();
        });
    </script>


</head>
<body class="">
<!--[if lt IE 10]>
<link href="http://d3ljd161w9lywl.cloudfront.net/assets/browserupgrade-44cb623022d4c53bd9ed72d321213fcb.css"
      media="screen" rel="stylesheet"/>
<div class="browserupgrade">
    <div class="browserupgrade-inner">
        <header class="browserupgrade-header">It appears you're using an unsupported browser</header>
        <div class="browserupgrade-content">
            <div class="browserupgrade-blurb">To access REW, please upgrade to one of the browsers below</div>
            <table>
                <tbody>
                <tr>
                    <td>Upgrade Internet Explorer for Free!</td>
                    <td class="browserupgrade-link"><a href="http://windows.microsoft.com/ie">Install</a></td>
                </tr>
                <tr>
                    <td>Install Google Chrome for Free!</td>
                    <td class="browserupgrade-link"><a href="http://www.google.com/chrome">Install</a></td>
                </tr>
                <tr>
                    <td>Install Mozilla Firefox for Free!</td>
                    <td class="browserupgrade-link"><a href="http://www.firefox.com">Install</a></td>
                </tr>
                <tr>
                    <td>Install Safari for Free!</td>
                    <td class="browserupgrade-link"><a href="http://www.apple.com/safari">Install</a></td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<![endif]-->

<!-- https://developers.google.com/tag-manager/devguide?hl=en#adding-data-layer-variables-to-a-page -->
<script>
    dataLayer = [];

</script>
<!-- Google Tag Manager -->
<noscript>
    <iframe src="//www.googletagmanager.com/ns.html?id=GTM-X9BN"
            height="0" width="0" style="display:none;visibility:hidden"></iframe>
</noscript>
<script>(function (w, d, s, l, i) {
    w[l] = w[l] || [];
    w[l].push({
        'gtm.start': new Date().getTime(), event: 'gtm.js'
    });
    var f = d.getElementsByTagName(s)[0],
            j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
    j.async = true;
    j.src =
            '//www.googletagmanager.com/gtm.js?id=' + i + dl;
    f.parentNode.insertBefore(j, f);
})(window, document, 'script', 'dataLayer', 'GTM-X9BN');</script>
<!-- End Google Tag Manager -->


<div class="offcanvas leftnav">
    <ul class="list-unstyled">
        <li><a class="is-active" href="/">Homes for Sale</a></li>
        <li><a class="" href="/open-houses">Open Houses</a></li>
        <li><a class="" href="/developments">Developments</a></li>
        <li><a class="" href="/buildings">Buildings</a></li>
        <li><a class="" href="/agents">Agents</a></li>
        <li><a class="" href="/news">News</a></li>

    </ul>
    <div class="leftnav-divider">Account</div>
    <ul class="banner-nav list-unstyled">
        <li class="banner-nav-login_list_item-signup"><a class="banner-signup-link" href="/users/sign_up">Sign Up</a>
        </li>
        <li class="banner-nav-login_list_item-login">Log In</li>

    </ul>
</div>
<nav class="navbar navbar--rew navbar--rew">
    <div class="container">
        <div class="navbar-header">
            <button class="navbar-toggle" data-offcanvas="mainmenu" data-target=".leftnav" type="button">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/" title="REW.ca">REW.ca</a>
        </div>
        <div class="navbar-items visible-md visible-lg">
            <ul class="nav navbar-nav navbar--rew-nav">
                <li><a class="is-active" href="/">Homes for Sale</a></li>
                <li><a class="" href="/open-houses">Open Houses</a></li>
                <li><a class="" href="/developments">Developments</a></li>
                <li><a class="" href="/buildings">Buildings</a></li>
                <li><a class="" href="/agents">Agents</a></li>
                <li><a class="" href="/news">News</a></li>

            </ul>
            <ul class="nav navbar-nav navbar-right navbar--rew-nav navbar--rew-navaccount banner-nav">
                <li class="banner-nav-login_list_item-signup"><div class="banner-signup-link">Sign
                    Up1</div></li>
                <li class="banner-nav-login_list_item-login">Log In</li>

            </ul>
        </div>
    </div>
</nav>


<div class="modal modal--rew fade registrationform modalform" id="loginForm">
    <div class="modal-dialog">
        <div class="modal-content">
            <header class="registrationform-header modal-header">
                <button class="close" data-dismiss="modal" type="button">&times;</button>
                <h3>Sign Up</h3>
            </header>
            <div class="modal-body">
                <div class="container-fluid">
                    <div class="registrationform-tabs" data-title="Log In">
                        <p class="registrationmodal-instructions">Create a FREE account to save searches and track your
                            favourite homes. Already have an account? Click the Log In tab.</p>
                        <ul class="nav nav-tabs">
                            <li class="active">
                                <a data-blurb="Create a FREE account to save searches and track your favourite homes. Already have an account? Click the Log In tab."
                                   data-toggle="tab" href="#sign_up">Sign Up</a>
                            </li>
                            <li>
                                <a data-blurb="Log in to save your searches and track your favourite homes! No account yet? Click the Sign Up tab. It’s FREE!"
                                   data-toggle="tab" href="#login">Log In</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="sign_up">
                                <form accept-charset="UTF-8" action="/users"
                                      class="simple_form registrationform-body registrationform-modalbody"
                                      id="navbar_sign_up" method="post">
                                    <div style="display:none"><input name="utf8" type="hidden" value="&#x2713;"/><input
                                            name="authenticity_token" type="hidden"
                                            value="1vwEcgH+JxwferpMEQOrt/l/CkZjTlZeL74x68V/O5c="/></div>
                                    <div class="registrationform-errors alert alert-danger hide"></div>
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-6">
                                            <div class="form-group form-group-md string required user_first_name registrationform-nameinputwrapper">
                                                <div class="controls"><input aria-required="true" autofocus="autofocus"
                                                                             class="string required input-block-level registrationform-input form-control"
                                                                             id="user_first_name"
                                                                             name="user[first_name]" placeholder="Name"
                                                                             required="required" type="text"/></div>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-sm-6">
                                            <div class="form-group form-group-md email required user_email registrationform-emailinputwrapper">
                                                <div class="controls"><input aria-required="true"
                                                                             class="string email required input-block-level registrationform-input registrationform-last_column_input form-control"
                                                                             id="user_email" name="user[email]"
                                                                             placeholder="Email" required="required"
                                                                             type="email"/></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-6">
                                            <div class="form-group form-group-md password optional user_password registrationform-passwordinputwrapper">
                                                <div class="controls"><input
                                                        class="password optional input-block-level registrationform-input form-control"
                                                        id="user_password" name="user[password]" placeholder="Password"
                                                        type="password"/></div>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-sm-6">
                                            <div class="form-group form-group-md password optional user_password_confirmation registrationform-passwordinputwrapper">
                                                <div class="controls"><input
                                                        class="password optional input-block-level registrationform-input registrationform-last_column_input form-control"
                                                        id="user_password_confirmation"
                                                        name="user[password_confirmation]"
                                                        placeholder="Confirm Password" type="password"/></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-5">
                                            <input class="btn btn-primary registrationform-submit btn-block"
                                                   name="commit" type="submit" value="Sign Up"/>
                                        </div>
                                        <div class="col-xs-12 col-sm-6 col-sm-offset-1">
                                            <div class="checkbox">
                                                <label>
                                                    <input name="user[email_opt_in]" type="hidden" value="0"/><input
                                                        class="registrationform-checkbox" id="user_email_opt_in"
                                                        name="user[email_opt_in]" type="checkbox" value="1"/>
                                                    Allow REW.ca to send you email offers and updates.
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <footer>
                                        By sending this form you agree to <a href="/news/rew-ca-terms-of-use"
                                                                             target="_blank">REW Terms of Use</a> and <a
                                            href="/news/privacy" target="_blank">Privacy Policy</a>
                                    </footer>
                                    <input autocomplete="form-for-ij4ClvR5wq" class="ij4ClvR5wq" id="ij4ClvR5wq"
                                           name="ij4ClvR5wq" type="text"/><input autocomplete="form-for-email"
                                                                                 class="ij4ClvR5wq" id="email"
                                                                                 name="email" type="text"/><input
                                        autocomplete="form-for-message" class="ij4ClvR5wq" id="message" name="message"
                                        type="text"/><input data-ij4ClvR5wq="true" id="email" name="email" type="text"/>
                                </form>

                            </div>
                            <div class="tab-pane" id="login">
                                <form accept-charset="UTF-8" action="/users/sign_in"
                                      class="simple_form registrationform-body registrationform-modalbody"
                                      id="navbar_login" method="post">
                                    <div style="display:none"><input name="utf8" type="hidden" value="&#x2713;"/><input
                                            name="authenticity_token" type="hidden"
                                            value="1vwEcgH+JxwferpMEQOrt/l/CkZjTlZeL74x68V/O5c="/></div>
                                    <div class="registrationform-errors hide alert alert-danger"></div>
                                    <div class="form-group form-group-md email optional user_email registrationform-emailinputwrapper">
                                        <div class="controls"><input autofocus="autofocus"
                                                                     class="string email optional input-block-level registrationform-input form-control"
                                                                     id="user_email" name="user[email]"
                                                                     placeholder="Email" type="email"/></div>
                                    </div>
                                    <div class="form-group form-group-md password optional user_password registrationform-passwordinputwrapper">
                                        <div class="controls"><input
                                                class="password optional input-block-level registrationform-input form-control"
                                                id="user_password" name="user[password]" placeholder="Password"
                                                type="password"/></div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-5">
                                            <input class="btn btn-primary registrationform-submit" name="commit"
                                                   type="submit" value="Log In"/>
                                        </div>
                                        <div class="col-xs-12 col-sm-6 col-sm-offset-1">
                                            <div class="checkbox">
                                                <label class="registrationform-checkbox">
                                                    <input name="user[remember_me]" type="hidden" value="0"/><input
                                                        class="registrationform-checkbox" id="user_remember_me"
                                                        name="user[remember_me]" type="checkbox" value="1"/>
                                                    Stay logged in
                                                </label>
                                                <a class="registrationform-toggle" data-target="#password" href="#">Can&#39;t
                                                    access your account?</a>
                                            </div>
                                        </div>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                    <div class="hide" data-title="Forgot Your Password" id="password">
                        <form accept-charset="UTF-8" action="/users/password"
                              class="simple_form registrationform-body registrationform-modalbody" id="navbar_password"
                              method="post">
                            <div style="display:none"><input name="utf8" type="hidden" value="&#x2713;"/><input
                                    name="authenticity_token" type="hidden"
                                    value="1vwEcgH+JxwferpMEQOrt/l/CkZjTlZeL74x68V/O5c="/></div>
                            <p class="registrationform-instructions">Enter the email address you registered with and
                                your password will be sent to you.</p>
                            <div class="registrationform-errors alert alert-danger hide" data-error="email">Email
                                Address not found
                            </div>
                            <div class="registrationform-errors alert alert-danger hide" data-error="state">The user
                                associated to this email address is no longer active. Contact <a
                                        href="mailto:support@rew.ca">support@rew.ca</a></div>
                            <div class="registrationform-success alert alert-success hide">You will receive an email
                                with instructions about how to reset your password in a few minutes.
                            </div>
                            <div class="form-group form-group-md email optional user_email registrationform-emailinputwrapper">
                                <div class="controls"><input autofocus="autofocus"
                                                             class="string email optional input-block-level registrationform-input form-control"
                                                             id="user_email" name="user[email]" placeholder="Email"
                                                             type="email"/></div>
                            </div>
                            <input class="btn btn-primary registrationform-submit" name="commit" type="submit"
                                   value="Send Password"/>
                            <div class="text-center"><a class="registrationform-toggle"
                                                        data-target=".registrationform-tabs" href="#">Back to log in
                                page</a></div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<section class="maincontent">

    <div class="maincontent-notifications">
        <section class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-10 col-sm-offset-1" data-notifications-bar>
                </div>
            </div>
        </section>
    </div>
    <section class="pageblock pageblock--header backgroundfill backgroundfill--skyline-5 hero">
        <div class="container">
            <section>
                <header>
                    <h1 class="hero-title text-center">Find <strong>Homes for Sale</strong></h1>
                </header>
                <div data-header-notifications></div>
                <div class="row">
                    <div class="col-xs-12 col-lg-10 col-lg-offset-1">
                        <form accept-charset="UTF-8" action="/properties/search"
                              class="simple_form form--search form--searchproperty" data-remote="true"
                              id="new_property_search" method="post">
                            <div style="display:none"><input name="utf8" type="hidden" value="&#x2713;"/></div>
                            <input id="property_search_initial_search_method"
                                   name="property_search[initial_search_method]" type="hidden" value="single_field"/>
                            <input id="autocomplete_type" name="autocomplete[type]" type="hidden"/>
                            <input id="autocomplete_id" name="autocomplete[id]" type="hidden"/>
                            <input id="autocomplete_value" name="autocomplete[value]" type="hidden"/>

                            <div class="row">
                                <div class="col-xs-12 col-md-9">
                                    <div class="form-group form-group-md string optional property_search_query">
                                        <div class="controls"><input class="string optional input-lg form-control"
                                                                     id="property_search_query"
                                                                     name="property_search[query]"
                                                                     placeholder="Location, Listing ID, Address, Postal Code, Building Name"
                                                                     type="text"/></div>
                                    </div>
                                    <div class="inputsuggestions hidden">
                                        <header>Examples</header>
                                        <dl class="list-unstyled">
                                            <dt class="grayed">Street</dt>
                                            <dd class="grayed">&quot;Granville Street&quot;</dd>
                                            <dt>Sub Area/Neighbourhood</dt>
                                            <dd>&quot;Kitsilano&quot;</dd>
                                            <dt class="grayed">City</dt>
                                            <dd class="grayed">&quot;Langley&quot;</dd>
                                            <dt>Postal Code</dt>
                                            <dd>&quot;V5M&quot;, &quot;V5M 1Z5&quot; or &quot;V5M1Z7&quot;</dd>
                                            <dt class="grayed">Listing ID Number</dt>
                                            <dd class="grayed">V234532</dd>
                                            <dt>Agent</dt>
                                            <dd>&quot;Jane Smith&quot;</dd>
                                            <dt class="grayed">Development</dt>
                                            <dd class="grayed">&quot;Windwood&quot;</dd>
                                        </dl>
                                    </div>
                                    <div class="row hidden-xs">
                                        <div class="col-xs-6 col-sm-3 form-group">
                                            <div class="searchfilter">
                                                <div class="form-group form-group-md select optional property_search_list_price_from">
                                                    <div class="controls"><select
                                                            class="select optional selectpicker bootstrap-select--white show-tick show-menu-arrow input-small hidden form-control"
                                                            data-container="" data-size="7" data-width="100%"
                                                            id="property_search_list_price_from"
                                                            name="property_search[list_price_from]">
                                                        <option value="">Any Min Price</option>
                                                        <option value="200000">$200,000</option>
                                                        <option value="250000">$250,000</option>
                                                        <option value="300000">$300,000</option>
                                                        <option value="350000">$350,000</option>
                                                        <option value="400000">$400,000</option>
                                                        <option value="450000">$450,000</option>
                                                        <option value="500000">$500,000</option>
                                                        <option value="550000">$550,000</option>
                                                        <option value="600000">$600,000</option>
                                                        <option value="650000">$650,000</option>
                                                        <option value="700000">$700,000</option>
                                                        <option value="750000">$750,000</option>
                                                        <option value="800000">$800,000</option>
                                                        <option value="850000">$850,000</option>
                                                        <option value="900000">$900,000</option>
                                                        <option value="950000">$950,000</option>
                                                        <option value="1000000">$1,000,000</option>
                                                        <option value="1100000">$1,100,000</option>
                                                        <option value="1200000">$1,200,000</option>
                                                        <option value="1300000">$1,300,000</option>
                                                        <option value="1500000">$1,500,000</option>
                                                        <option value="1750000">$1,750,000</option>
                                                        <option value="2000000">$2,000,000</option>
                                                        <option value="2500000">$2,500,000</option>
                                                        <option value="3000000">$3,000,000</option>
                                                        <option value="4000000">$4,000,000</option>
                                                        <option value="5000000">$5,000,000</option>
                                                    </select></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-6 col-sm-3 form-group">
                                            <div class="searchfilter">
                                                <div class="form-group form-group-md select optional property_search_list_price_to">
                                                    <div class="controls"><select
                                                            class="select optional selectpicker bootstrap-select--white show-tick show-menu-arrow input-small hidden form-control"
                                                            data-container="" data-size="7" data-width="100%"
                                                            id="property_search_list_price_to"
                                                            name="property_search[list_price_to]">
                                                        <option value="">Any Max Price</option>
                                                        <option value="200000">$200,000</option>
                                                        <option value="250000">$250,000</option>
                                                        <option value="300000">$300,000</option>
                                                        <option value="350000">$350,000</option>
                                                        <option value="400000">$400,000</option>
                                                        <option value="450000">$450,000</option>
                                                        <option value="500000">$500,000</option>
                                                        <option value="550000">$550,000</option>
                                                        <option value="600000">$600,000</option>
                                                        <option value="650000">$650,000</option>
                                                        <option value="700000">$700,000</option>
                                                        <option value="750000">$750,000</option>
                                                        <option value="800000">$800,000</option>
                                                        <option value="850000">$850,000</option>
                                                        <option value="900000">$900,000</option>
                                                        <option value="950000">$950,000</option>
                                                        <option value="1000000">$1,000,000</option>
                                                        <option value="1100000">$1,100,000</option>
                                                        <option value="1200000">$1,200,000</option>
                                                        <option value="1300000">$1,300,000</option>
                                                        <option value="1500000">$1,500,000</option>
                                                        <option value="1750000">$1,750,000</option>
                                                        <option value="2000000">$2,000,000</option>
                                                        <option value="2500000">$2,500,000</option>
                                                        <option value="3000000">$3,000,000</option>
                                                        <option value="4000000">$4,000,000</option>
                                                        <option value="5000000">$5,000,000</option>
                                                    </select></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="clearfix visible-xs-block"></div>
                                        <div class="col-xs-6 col-sm-3 form-group">
                                            <div class="searchfilter">
                                                <div class="form-group form-group-md select optional property_search_num_bedrooms">
                                                    <div class="controls"><select
                                                            class="select optional selectpicker bootstrap-select--white show-tick show-menu-arrow input-small hidden form-control"
                                                            data-container="" data-width="100%"
                                                            id="property_search_num_bedrooms"
                                                            name="property_search[num_bedrooms]">
                                                        <option value="0+">Any beds</option>
                                                        <option value="0">Studio</option>
                                                        <option value="1">1+ beds</option>
                                                        <option value="2">2+ beds</option>
                                                        <option value="3">3+ beds</option>
                                                        <option value="4">4+ beds</option>
                                                        <option value="5">5+ beds</option>
                                                    </select></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-6 col-sm-3 form-group">
                                            <div class="searchfilter">
                                                <div class="form-group form-group-md select optional property_search_num_bathrooms">
                                                    <div class="controls"><select
                                                            class="select optional selectpicker bootstrap-select--white show-tick show-menu-arrow input-small hidden form-control"
                                                            data-container="" data-width="100%"
                                                            id="property_search_num_bathrooms"
                                                            name="property_search[num_bathrooms]">
                                                        <option value="">Any baths</option>
                                                        <option value="1">1+ baths</option>
                                                        <option value="2">2+ baths</option>
                                                        <option value="3">3+ baths</option>
                                                        <option value="4">4+ baths</option>
                                                        <option value="5">5+ baths</option>
                                                    </select></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-3">
                                    <div class="row">
                                        <div class="form--search-button col-xs-12 col-sm-6 col-sm-push-6 col-md-12 col-md-push-0">
                                            <input class="btn btn-default btn btn-primary btn-lg btn-emphasize btn-caps"
                                                   name="commit" type="submit" value="Search"/>
                                        </div>
                                        <div class="form--searchproperty-openhouse col-xs-8 col-xs-offset-2 col-sm-6 col-sm-pull-6 col-sm-offset-0 col-md-12 col-md-pull-0">
                                            <div class="row checkboxtoggle">
                                                <div class="col-xs-8 col-sm-5 col-sm-offset-4 col-md-9 col-md-offset-0 checkboxtoggle-label">
                                                    Open houses only
                                                </div>
                                                <div class="col-xs-4 col-sm-3">
                                                    <div class="pull-right">
                                                        <input name="property_search[only_open_house]" type="hidden"
                                                               value="0"/><input class="hidden" data-toggle="checkbox"
                                                                                 id="property_search_only_open_house"
                                                                                 name="property_search[only_open_house]"
                                                                                 type="checkbox" value="1"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input autocomplete="form-for-ij4ClvR5wq" class="ij4ClvR5wq" id="ij4ClvR5wq"
                                   name="ij4ClvR5wq" type="text"/><input autocomplete="form-for-email"
                                                                         class="ij4ClvR5wq" id="email" name="email"
                                                                         type="text"/><input
                                autocomplete="form-for-message" class="ij4ClvR5wq" id="message" name="message"
                                type="text"/><input data-ij4ClvR5wq="true" id="email" name="email" type="text"/>
                        </form>

                    </div>
                </div>
            </section>

            <div class="divider--text hidden-xs">-or-</div>
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-lg-10 col-lg-offset-1">
                    <div class="row">
                        <div class="col-xs-12 col-sm-4">
                            <a class="homepageblock homepageblock--header" href="/properties/map">
                                <div class="homepageblock-icon"><img alt="Map"
                                                                     src="http://d3ljd161w9lywl.cloudfront.net/assets/icons/homepagesvg/map-fd3bbc173a274752f2c8f5fe9e56bfbc.svg"/>
                                </div>
                                <div class="homepageblock-tag">Search by</div>
                                <div class="homepageblock-title">Map</div>
                            </a>
                        </div>
                        <div class="col-xs-12 col-sm-4">
                            <a class="homepageblock homepageblock--header" href="/sitemap/real-estate">
                                <div class="homepageblock-icon"><img alt="Neighbourhood"
                                                                     src="http://d3ljd161w9lywl.cloudfront.net/assets/icons/homepagesvg/neighbourhood-cb87ce562350be69ece93791bd83e8bd.svg"/>
                                </div>
                                <div class="homepageblock-tag">Search by</div>
                                <div class="homepageblock-title">Neighbourhood</div>
                            </a>
                        </div>
                        <div class="col-xs-12 col-sm-4">
                            <a class="homepageblock homepageblock--header" href="/developments">
                                <div class="homepageblock-icon"><img alt="Newhomes"
                                                                     src="http://d3ljd161w9lywl.cloudfront.net/assets/icons/homepagesvg/newhomes-2d04caf6779361c5eadc6cf7c27401b5.svg"/>
                                </div>
                                <div class="homepageblock-tag">View our</div>
                                <div class="homepageblock-title">New Homes</div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="divider--icon">
        <div class="divider--icon-chevron"></div>
    </div>

    <div class="container pageblock pageblock--content contentsection--homepage">
        <header>
            <h2 class="contentsection--homepage-title">Real Estate Weekly News</h2>
            <hr class="divider--hr">
        </header>
        <div class="row">
            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-12 col-sm-6">
                        <div class="newssection newssection--featured">
                            <article>
                                <header class="hidden-xs">
                                    <a href="http://www.REW.ca/news/market">Market</a>
                                </header>
                                <a class="newssection-body"
                                   href="http://www.rew.ca/news/five-superb-listed-ski-in-ski-out-homes-in-whistler-1.3334226">
                                    <div class="row">
                                        <div class="col-xs-12 col-md-5 newssection-image">
                                            <img alt="Ski in ski out whistler main image" class="img-responsive"
                                                 src="http://images.glaciermedia.ca/polopoly_fs/1.3335846.1480370825!/fileImage/httpImage/image.jpg_gen/derivatives/landscape_300/ski-in-ski-out-whistler-main-image.jpg"/>
                                        </div>
                                        <div class="col-xs-12 col-md-7">
                                            <header>
                                                <div class="newssection-title">Five Superb Listed Ski-In, Ski-Out Homes
                                                    in Whistler
                                                </div>
                                                <div class="newssection-subtitle">
                                                    November 28 2016
                                                    - by
                                                    Vashti Singh
                                                </div>
                                            </header>
                                            <p class="newssection-content">
                                                With Whistler-Blackcomb ski hills opening this past week, we’re dreaming
                                                about ski-in, ski-out properties in the resort. Here are five varied
                                                options

                                            </p>
                                            <div class="newssection-readmorelink">Read more &raquo;</div>
                                        </div>
                                    </div>
                                </a>
                            </article>
                        </div>
                    </div>

                    <div class="col-md-12 col-sm-6 hidden-xs">
                        <div class="newssection newssection--featured">
                            <article>
                                <header class="hidden-xs">
                                    <a href="http://www.REW.ca/news/buying">Buying</a>
                                </header>
                                <a class="newssection-body"
                                   href="http://www.rew.ca/news/five-top-financial-tips-for-new-homeowners-1.2934595">
                                    <div class="row">
                                        <div class="col-xs-12 col-md-5 newssection-image">
                                            <img alt="Money calculator house" class="img-responsive"
                                                 src="http://images.glaciermedia.ca/polopoly_fs/1.2934887.1479511181!/fileImage/httpImage/image.jpg_gen/derivatives/landscape_300/money-calculator-house.jpg"/>
                                        </div>
                                        <div class="col-xs-12 col-md-7">
                                            <header>
                                                <div class="newssection-title">Five Top Financial Tips for New
                                                    Homeowners
                                                </div>
                                                <div class="newssection-subtitle">
                                                    November 21 2016
                                                    - by
                                                    Damien Justus
                                                </div>
                                            </header>
                                            <p class="newssection-content">
                                                If you thought down payment and closing costs were all you'll pay for
                                                when buying your new home, think again. Here's how you can manage your
                                                expenses
                                            </p>
                                            <div class="newssection-readmorelink">Read more &raquo;</div>
                                        </div>
                                    </div>
                                </a>
                            </article>
                        </div>
                    </div>

                    <div class="col-xs-12 visible-xs">
                        <a class="btn btn-primary btn-lg btn-caps btn-emphasize btn-inverse col-xs-12" href="/news">More
                            News</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 hidden-xs">
                <div class="row">
                    <div class="col-sm-6 col-md-12">
                        <div class="newssection">
                            <article>
                                <header>
                                    <a href="http://www.REW.ca/news/selling">Selling</a>
                                </header>
                                <a class="newssection-body"
                                   href="http://www.rew.ca/news/selling-your-home-make-sure-your-agent-is-marketing-it-properly-1.2372979">
                                    <div class="newssection-title">Selling Your Home? Make Sure Your Agent is Marketing
                                        it Properly
                                    </div>
                                    <div class="newssection-readmorelink">Read more &raquo;</div>
                                </a>
                            </article>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-12">
                        <div class="newssection">
                            <article>
                                <header>
                                    <a href="http://www.REW.ca/news/mortgages">Mortgages</a>
                                </header>
                                <a class="newssection-body"
                                   href="http://www.rew.ca/news/many-canadians-could-not-pay-bills-if-mortgage-rates-increase-manulife-survey-1.3320131">
                                    <div class="newssection-title">Many Canadians Could Not Pay Bills if Mortgage Rates
                                        Increase: Manulife Survey
                                    </div>
                                    <div class="newssection-readmorelink">Read more &raquo;</div>
                                </a>
                            </article>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-12">
                        <div class="newssection">
                            <article>
                                <header>
                                    <a href="http://www.REW.ca/news/ideas">Ideas</a>
                                </header>
                                <a class="newssection-body"
                                   href="http://www.rew.ca/news/photo-gallery-whistler-s-priciest-estate-is-a-picture-perfect-16-5m-property-1.3177761">
                                    <div class="newssection-title">Photo Gallery: Whistler’s Priciest Estate is a
                                        Picture-Perfect $16.5m Property
                                    </div>
                                    <div class="newssection-readmorelink">Read more &raquo;</div>
                                </a>
                            </article>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-12">
                        <div class="newssection">
                            <article>
                                <header>
                                    <a href="http://www.REW.ca/news/realtor-resources">Real Estate Agent Resources</a>
                                </header>
                                <a class="newssection-body"
                                   href="http://www.rew.ca/news/three-ways-to-apply-a-modern-mindset-to-real-estate-marketing-1.2732106">
                                    <div class="newssection-title">Three Ways to Apply a Modern Mindset to Real Estate
                                        Marketing
                                    </div>
                                    <div class="newssection-readmorelink">Read more &raquo;</div>
                                </a>
                            </article>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <section class="pageblock pageblock--content backgroundfill backgroundfill--color-charcoal hidden-xs">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-4">
                    <a class="quicklink" href="http://www.westcoastcondominium.ca" target="_blank">
                        <div class="quicklink-icon">
                            <i class="icon-homepageblock-housenew"></i>
                        </div>
                        <div class="quicklink-caption">
                            <div class="quicklink-tag">View Our</div>
                            <div class="quicklink-title">West Coast</div>
                            <div class="quicklink-subtitle">Condominium Magazine</div>
                        </div>
                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a class="quicklink" href="/open-houses">
                        <div class="quicklink-divider"></div>
                        <div class="quicklink-icon">
                            <i class="icon-homepageblock-housepin"></i>
                        </div>
                        <div class="quicklink-caption">
                            <div class="quicklink-tag">View All</div>
                            <div class="quicklink-title">Open Houses</div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4 hidden-sm">
                    <a class="quicklink" href="http://issuu.com/rew1/docs" target="_blank">
                        <div class="quicklink-divider"></div>
                        <div class="quicklink-icon">
                            <i class="icon-homepageblock-page-orange"></i>
                        </div>
                        <div class="quicklink-caption">
                            <div class="quicklink-tag">View Our</div>
                            <div class="quicklink-title">Print Editions</div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>
    <div class="divider--icon hidden-xs hidden-sm">
        <div class="divider--icon-chevron"></div>
    </div>

    <section class="pageblock pageblock--content backgroundfill backgroundfill--color-graylight">
        <header>
            <h2 class="contentsection--homepage-title">Featured New Homes</h2>
            <hr class="divider--hr">
        </header>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <a class="carouselphoto" href="/developments/3199/10-plums-north-vancouver">
                        <div class="carouselphoto-image">
                            <img class="center-block cld-responsive"
                                 data-src="https://res-4.cloudinary.com/grieg/image/upload/c_lfill,w_auto,ar_283:170,f_auto/v1476394323/building-group/6176/images/hbitrlsltvidjeno24oi"/>
                        </div>
                        <div class="carouselphoto-title">
                            10 Plums
                        </div>
                        <div class="carouselphoto-subtitle">
                            North Vancouver
                        </div>
                    </a>

                </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <a class="carouselphoto" href="/developments/3191/989-victoria-victoria">
                        <div class="carouselphoto-image">
                            <img class="center-block cld-responsive"
                                 data-src="https://res-3.cloudinary.com/grieg/image/upload/c_lfill,w_auto,ar_283:170,f_auto/v1472503820/building/images/9745/sfrmchxhvojxyczniup2"/>
                        </div>
                        <div class="carouselphoto-title">
                            989 Victoria
                        </div>
                        <div class="carouselphoto-subtitle">
                            Victoria
                        </div>
                    </a>

                </div>
                <div class="col-md-4 col-sm-6 col-xs-12 hidden-sm">
                    <a class="carouselphoto" href="/developments/3158/compass-north-vancouver">
                        <div class="carouselphoto-image">
                            <img class="center-block cld-responsive"
                                 data-src="https://res-5.cloudinary.com/grieg/image/upload/c_lfill,w_auto,ar_283:170,f_auto/v1474415044/building-group/6134/images/Compass_night_view_FINAL_high_res_20150723_kbi3gr"/>
                        </div>
                        <div class="carouselphoto-title">
                            Compass
                        </div>
                        <div class="carouselphoto-subtitle">
                            North Vancouver
                        </div>
                    </a>

                </div>
            </div>
        </div>
    </section>
    <div class="divider--icon hidden-sm">
        <div class="divider--icon-chevron"></div>
    </div>


</section>

<footer>
    <div class="pageblock pageblock--content backgroundfill backgroundfill--color-offwhite container visible-md visible-lg">
        <div class="contentsection--homepage-title">
            Browse Real Estate
        </div>
        <hr class="divider--hr">
        <div class="row">
            <div class="footerpagecaplist col-xs-3">
                <div class="footerpagecaplist-inner">
                    <div class="footerpagecaplist-title">
                        By City
                    </div>
                    <ul class="list-unstyled footerpagecaplist-list">
                        <li>
                            <a href="/properties/areas/nanaimo-bc">Nanaimo</a>
                        </li>
                        <li>
                            <a href="/properties/areas/langley-bc">Langley</a>
                        </li>
                        <li>
                            <a href="/properties/areas/richmond-bc">Richmond</a>
                        </li>
                        <li>
                            <a href="/properties/areas/squamish-bc">Squamish</a>
                        </li>
                        <li>
                            <a href="/properties/areas/surrey-area-bc">Surrey</a>
                        </li>
                        <li>
                            <a href="/properties/areas/vancouver-bc">Vancouver</a>
                        </li>
                        <li>
                            <a href="/properties/areas/victoria-bc">Victoria</a>
                        </li>
                    </ul>
                    <a href="/sitemap/real-estate">View More &raquo;</a>
                </div>
            </div>
            <div class="footerpagecaplist col-xs-3">
                <div class="footerpagecaplist-inner">
                    <div class="footerpagecaplist-title">
                        By Neighbourhood
                    </div>
                    <ul class="list-unstyled footerpagecaplist-list">
                        <li>
                            <a href="/properties/areas/bear-mountain-langford-bc">Bear Mountain</a>
                        </li>
                        <li>
                            <a href="/properties/areas/collingwood-vancouver-bc">Collingwood</a>
                        </li>
                        <li>
                            <a href="/properties/areas/downtown-victoria-bc">Downtown Victoria</a>
                        </li>
                        <li>
                            <a href="/properties/areas/false-creek-vancouver-bc">False Creek</a>
                        </li>
                        <li>
                            <a href="/properties/areas/kitsilano-vancouver-bc">Kitsilano</a>
                        </li>
                        <li>
                            <a href="/properties/areas/north-nanaimo-nanaimo-bc">North Nanaimo</a>
                        </li>
                        <li>
                            <a href="/properties/areas/yaletown-vancouver-bc">Yaletown</a>
                        </li>
                    </ul>
                    <a href="/sitemap/real-estate">View More &raquo;</a>
                </div>
            </div>
            <div class="footerpagecaplist col-xs-3">
                <div class="footerpagecaplist-inner">
                    <div class="footerpagecaplist-title">
                        Real Estate Agents
                    </div>
                    <ul class="list-unstyled footerpagecaplist-list">
                        <li>
                            <a href="/agents/areas/abbotsford-bc">Abbotsford</a>
                        </li>
                        <li>
                            <a href="/agents/areas/burnaby-bc">Burnaby</a>
                        </li>
                        <li>
                            <a href="/agents/areas/langley-bc">Langley</a>
                        </li>
                        <li>
                            <a href="/agents/areas/vancouver-bc">Vancouver</a>
                        </li>
                        <li>
                            <a href="/agents/areas/victoria-bc">Victoria</a>
                        </li>
                        <li>
                            <a href="/agents/areas/west-vancouver-bc">West Vancouver</a>
                        </li>
                    </ul>
                    <a href="/sitemap/agents">View More &raquo;</a>
                </div>
            </div>
            <div class="footerpagecaplist col-xs-3">
                <div class="footerpagecaplist-inner">
                    <div class="footerpagecaplist-title">
                        Latest Developments
                    </div>
                    <ul class="list-unstyled footerpagecaplist-list">
                        <li>
                            <a href="/developments/3213/dwell24-coquitlam">Dwell24, Coquitlam</a>
                        </li>
                        <li>
                            <a href="/developments/3215/hawthorne-vancouver">Hawthorne, Vancouver</a>
                        </li>
                        <li>
                            <a href="/developments/3216/imperial-burnaby">Imperial, Burnaby</a>
                        </li>
                        <li>
                            <a href="/developments/3212/queens-park-estate-new-westminster">Queens Park Estate, New
                                Westminster</a>
                        </li>
                        <li>
                            <a href="/developments/3214/ruxton-village-maple-ridge">Ruxton Village, Maple Ridge</a>
                        </li>
                        <li>
                            <a href="/developments/3217/the-smithe-vancouver">The Smithe, Vancouver</a>
                        </li>
                        <li>
                            <a href="/developments/3218/the-views-at-shoreline-port-moody">The Views at Shoreline, Port
                                Moody</a>
                        </li>
                    </ul>
                    <a href="/sitemap/developments">View More &raquo;</a>
                </div>
            </div>
        </div>
    </div>

    <div class="pageblock pageblock--footer backgroundfill backgroundfill--color-black footerlinks">
        <div class="container">
            <div class="footerlinks-inner">
                <div class="footerlinks-nav l-rowtocolumns">
                    <div class="l-rowtocolumns-col1">
                        <a href="/contact-us">Contact Us</a>
                        <a href="/about-us">About Us</a>
                        <a href="/advertise">Advertise with Us</a>
                        <a href="/careers">Careers</a>
                    </div>
                    <div class="l-rowtocolumns-col2">
                        <a href="/privacy">Privacy</a>
                        <a href="/terms">Terms of Use</a>
                        <a href="/sitemap">Sitemap</a>
                        <a href="/dashboard/agents">Agent Log In</a>
                    </div>
                </div>
                <div class="footerlinks-social">
                    <ul class="list-unstyled">
                        <li>
                            <a class="socialicon" data-dnt="true" data-lang="en-CA" data-show-count="false"
                               data-show-screen-name="false"
                               href="https://twitter.com/intent/follow?&amp;screen_name=REWca" target="_blank">
                                <i class="icon-twitter"></i>
                            </a>
                        </li>
                        <li>
                            <a class="socialicon" href="http://www.facebook.com/REW.ca" target="_blank">
                                <i class="icon-facebook"></i>
                            </a>
                        </li>
                        <li>
                            <a class="socialicon" href="https://plus.google.com/118105016557980395484" rel="publisher"
                               target="_blank">
                                <i class="icon-google-plus"></i>
                            </a>
                        </li>
                        <li>
                            <a class="socialicon" href="http://www.youtube.com/user/REWdotca" target="_blank">
                                <i class="icon-youtube"></i>
                            </a>
                        </li>
                        <li>
                            <a class="socialicon-invert" href="http://pinterest.com/rewca/" target="_blank">
                                <i class="icon-pinterest"></i>
                            </a>
                        </li>
                        <li>
                            <a class="socialicon" href="http://www.linkedin.com/company/rew-ca" target="_blank">
                                <i class="icon-linkedin"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="row">
                <div class="footernav small">
                    <ul class="list-unstyled">
                        <li>&copy; 2016 Real Estate Weekly (REW.ca)</li>
                        <li>
                            A division of
                            <a href="http://www.glaciermedia.ca">Glacier Media Group</a>
                        </li>
                        <li>All rights reserved.</li>
                    </ul>
                </div>
            </div>

        </div>
    </div>

    <div class="pageblock pageblock--footer backgroundfill backgroundfill--color-charcoal footerblurb visible-md visible-lg">
        <div class="container">
            <div class="row">
                <div class="col-xs-10 col-xs-offset-1">
                    <header>
                        Start Your Real Estate Search with REW.ca
                    </header>
                    <div class="footerblurb-body">
                        <p>
                            REW.ca is your best tool for real estate search. You'll find both
                            <a href="/sitemap/real-estate">MLS&reg; homes</a>
                            and
                            <a href="/developments">new developments</a> for sale. MLS&reg; listing search
                            covers the real estate boards of Greater Vancouver, the Fraser Valley, Chilliwack, Vancouver
                            Island, and Whistler.
                            Sign up for
                            <a href="/users/sign_up">free property alerts</a>
                            and read
                            <a href="/news">BC real estate news</a>.
                        </p>

                        <p>REW.ca is the online arm of the largest real estate market newspaper in the Lower Mainland:
                            Real Estate Weekly.</p>
                        <p>The trademarks MLS&reg;, Multiple Listing Service&reg; and the associated logos are owned by
                            CREA and identify the quality of services provided by real estate professionals who are
                            members of CREA.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

</footer>

<script src="http://d3ljd161w9lywl.cloudfront.net/assets/vendor-e3a7c80d5e183113d19d4098af6a72a0.js"></script>
<script src="http://d3ljd161w9lywl.cloudfront.net/assets/application-d04fa19839a20015581df62d13760981.js"></script>



</body>
</html>
