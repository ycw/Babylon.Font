<<<<<<< HEAD
var compile_wa=function(t){var r={};function n(e){if(r[e])return r[e].exports;var o=r[e]={i:e,l:!1,exports:{}};return t[e].call(o.exports,o,o.exports,n),o.l=!0,o.exports}return n.m=t,n.c=r,n.d=function(t,r,e){n.o(t,r)||Object.defineProperty(t,r,{enumerable:!0,get:e})},n.r=function(t){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},n.t=function(t,r){if(1&r&&(t=n(t)),8&r)return t;if(4&r&&"object"==typeof t&&t&&t.__esModule)return t;var e=Object.create(null);if(n.r(e),Object.defineProperty(e,"default",{enumerable:!0,value:t}),2&r&&"string"!=typeof t)for(var o in t)n.d(e,o,function(r){return t[r]}.bind(null,o));return e},n.n=function(t){var r=t&&t.__esModule?function(){return t.default}:function(){return t};return n.d(r,"a",r),r},n.o=function(t,r){return Object.prototype.hasOwnProperty.call(t,r)},n.p="",n(n.s=1)}([function(t,r,n){"use strict";const e=-8,o=-4,i=0,a=1,u=1,c=2,l=5,f=1024,s=2048,y=8192,b=0,p=4,g=8,d=12,_=12,A=16,w="undefined"!=typeof BigUint64Array,h=Symbol(),m=1024;function v(t,r){const n=new Uint32Array(t),e=new Uint16Array(t);var i=n[r+o>>>2]>>>1,a=r>>>1;if(i<=m)return String.fromCharCode.apply(String,e.subarray(a,a+i));const u=[];do{const t=e[a+m-1],r=t>=55296&&t<56320?m-1:m;u.push(String.fromCharCode.apply(String,e.subarray(a,a+=r))),i-=r}while(i>m);return u.join("")+String.fromCharCode.apply(String,e.subarray(a,a+i))}function U(t){const r={};function n(t,r){return t?v(t.buffer,r):"<yet unknown>"}const e=t.env=t.env||{};return e.abort=e.abort||function(t,o,i,a){const u=r.memory||e.memory;throw Error("abort: "+n(u,t)+" at "+n(u,o)+":"+i+":"+a)},e.trace=e.trace||function(t,o){const i=r.memory||e.memory;console.log("trace: "+n(i,t)+(o?" ":"")+Array.prototype.slice.call(arguments,2,2+o).join(", "))},t.Math=t.Math||Math,t.Date=t.Date||Date,r}function F(t,r){const n=r.exports,h=n.memory,m=n.table,U=n.__alloc,F=n.__retain,O=n.__rtti_base||-1;function S(t){const r=new Uint32Array(h.buffer);if((t>>>=0)>=r[O>>>2])throw Error("invalid id: "+t);return r[(O+4>>>2)+2*t]}function x(t){const r=new Uint32Array(h.buffer);if((t>>>=0)>=r[O>>>2])throw Error("invalid id: "+t);return r[(O+4>>>2)+2*t+1]}function P(t){return 31-Math.clz32(t>>>l&31)}function I(t,r,n){const e=h.buffer;if(n)switch(t){case 2:return new Float32Array(e);case 3:return new Float64Array(e)}else switch(t){case 0:return new(r?Int8Array:Uint8Array)(e);case 1:return new(r?Int16Array:Uint16Array)(e);case 2:return new(r?Int32Array:Uint32Array)(e);case 3:return new(r?BigInt64Array:BigUint64Array)(e)}throw Error("unsupported align: "+t)}function C(t){const r=new Uint32Array(h.buffer),n=r[t+e>>>2],i=S(n);if(!(i&u))throw Error("not an array: "+n);const a=P(i);var l=r[t+p>>>2];const y=i&c?r[t+_>>>2]:r[l+o>>>2]>>>a;return I(a,i&f,i&s).subarray(l>>>=a,l+y)}function M(t,r,n){const e=h.buffer,i=new Uint32Array(e),a=i[n+p>>>2];return new t(e,a,i[a+o>>>2]>>>r)}return t.__allocString=function(t){const r=t.length,n=U(r<<1,a),e=new Uint16Array(h.buffer);for(var o=0,i=n>>>1;o<r;++o)e[i+o]=t.charCodeAt(o);return n},t.__getString=function(t){const r=h.buffer;if(new Uint32Array(r)[t+e>>>2]!==a)throw Error("not a string: "+t);return v(r,t)},t.__allocArray=function(t,r){const n=S(t);if(!(n&(u|c)))throw Error("not an array: "+t+" @ "+n);const e=P(n),o=r.length,a=U(o<<e,i),l=U(n&c?A:d,t),w=new Uint32Array(h.buffer);w[l+b>>>2]=F(a),w[l+p>>>2]=a,w[l+g>>>2]=o<<e,n&c&&(w[l+_>>>2]=o);const m=I(e,n&f,n&s);if(n&y)for(let t=0;t<o;++t)m[(a>>>e)+t]=F(r[t]);else m.set(r,a>>>e);return l},t.__getArrayView=C,t.__getArray=function(t){const r=C(t),n=r.length,e=new Array(n);for(let t=0;t<n;t++)e[t]=r[t];return e},t.__getArrayBuffer=function(t){const r=h.buffer,n=new Uint32Array(r)[t+o>>>2];return r.slice(t,t+n)},t.__getInt8Array=M.bind(null,Int8Array,0),t.__getUint8Array=M.bind(null,Uint8Array,0),t.__getUint8ClampedArray=M.bind(null,Uint8ClampedArray,0),t.__getInt16Array=M.bind(null,Int16Array,1),t.__getUint16Array=M.bind(null,Uint16Array,1),t.__getInt32Array=M.bind(null,Int32Array,2),t.__getUint32Array=M.bind(null,Uint32Array,2),w&&(t.__getInt64Array=M.bind(null,BigInt64Array,3),t.__getUint64Array=M.bind(null,BigUint64Array,3)),t.__getFloat32Array=M.bind(null,Float32Array,2),t.__getFloat64Array=M.bind(null,Float64Array,3),t.__instanceof=function(t,r){const n=new Uint32Array(h.buffer);var o=n[t+e>>>2];if(o<=n[O>>>2])do{if(o==r)return!0}while(o=x(o));return!1},t.memory=t.memory||h,t.table=t.table||m,j(n,t)}function O(t,r){var n=(...n)=>(r(n.length),t(...n));return n.original=t,n}function S(t,r){return F(U(r||(r={})),new WebAssembly.Instance(t,r))}function j(t,r){var n=r?Object.create(r):{},e=t.__setargc||function(){};function o(t,r){return Object.prototype.hasOwnProperty.call(t,r)}for(let r in t){if(!o(t,r))continue;let i=t[r],a=r.split("."),u=n;for(;a.length>1;){let t=a.shift();o(u,t)||(u[t]={}),u=u[t]}let c=a[0],l=c.indexOf("#");if(l>=0){let n=c.substring(0,l),a=u[n];if(void 0===a||!a.prototype){let t=function(...r){return t.wrap(t.prototype.constructor(0,...r))};t.prototype={valueOf:function(){return this[h]}},t.wrap=function(r){return Object.create(t.prototype,{[h]:{value:r,writable:!1}})},a&&Object.getOwnPropertyNames(a).forEach(r=>Object.defineProperty(t,r,Object.getOwnPropertyDescriptor(a,r))),u[n]=t}if(c=c.substring(l+1),u=u[n].prototype,/^(get|set):/.test(c)){if(!o(u,c=c.substring(4))){let n=t[r.replace("set:","get:")],e=t[r.replace("get:","set:")];Object.defineProperty(u,c,{get:function(){return n(this[h])},set:function(t){e(this[h],t)},enumerable:!0})}}else"constructor"===c?u[c]=O(i,e):Object.defineProperty(u,c,{value:function(...t){return e(t.length),i(this[h],...t)}})}else/^(get|set):/.test(c)?o(u,c=c.substring(4))||Object.defineProperty(u,c,{get:t[r.replace("set:","get:")],set:t[r.replace("get:","set:")],enumerable:!0}):u[c]="function"==typeof i?O(i,e):i}return n}r.instantiate=S,r.instantiateBuffer=function(t,r){return S(new WebAssembly.Module(t),r)},r.instantiateStreaming=async function(t,r){return F(U(r||(r={})),(await WebAssembly.instantiateStreaming(t,r)).instance)},r.demangle=j},function(t,r,n){"use strict";n.r(r),n.d(r,"init",(function(){return i}));var e=n(0),o=function(t,r,n,e){return new(n||(n=Promise))((function(o,i){function a(t){try{c(e.next(t))}catch(t){i(t)}}function u(t){try{c(e.throw(t))}catch(t){i(t)}}function c(t){var r;t.done?o(t.value):(r=t.value,r instanceof n?r:new n((function(t){t(r)}))).then(a,u)}c((e=e.apply(t,r||[])).next())}))};function i(){return o(this,void 0,void 0,(function*(){const t=yield e.instantiateStreaming(fetch("./optimized.wasm"),{});return function(r,n,e=0,o=0){const i=function(t,r){const n=t.memory.buffer,e=new DataView(n);let o=0,i=0,a=0;for(const t of r)e.setUint8(o,t.type.codePointAt(0)),o+=1,"M"!=t.type&&"L"!=t.type?"Q"!=t.type?"C"!=t.type||(e.setFloat64(o,i,!0),o+=8,e.setFloat64(o,a,!0),o+=8,e.setFloat64(o,t.x1,!0),o+=8,e.setFloat64(o,t.y1,!0),o+=8,e.setFloat64(o,t.x2,!0),o+=8,e.setFloat64(o,t.y2,!0),o+=8,e.setFloat64(o,t.x,!0),o+=8,e.setFloat64(o,t.y,!0),o+=8,i=t.x,a=t.y):(e.setFloat64(o,i,!0),o+=8,e.setFloat64(o,a,!0),o+=8,e.setFloat64(o,t.x1,!0),o+=8,e.setFloat64(o,t.y1,!0),o+=8,e.setFloat64(o,t.x,!0),o+=8,e.setFloat64(o,t.y,!0),o+=8,i=t.x,a=t.y):(e.setFloat64(o,t.x,!0),o+=8,e.setFloat64(o,t.y,!0),o+=8,i=t.x,a=t.y);return o}(t,r),a=t.compile(i,n,e,o);return function(t,r){const n=new Set;for(const e of t.__getArray(r)){const r={fill:void 0,holes:new Set};for(const n of t.__getArray(e)){let e;void 0===r.fill?e=r.fill=[]:r.holes.add(e=[]);for(const r of t.__getArray(n))e.push(t.__getArray(r))}n.add(r)}return n}(t,a)}}))}}]);
=======
var compile_wa=function(t){var r={};function n(e){if(r[e])return r[e].exports;var o=r[e]={i:e,l:!1,exports:{}};return t[e].call(o.exports,o,o.exports,n),o.l=!0,o.exports}return n.m=t,n.c=r,n.d=function(t,r,e){n.o(t,r)||Object.defineProperty(t,r,{enumerable:!0,get:e})},n.r=function(t){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},n.t=function(t,r){if(1&r&&(t=n(t)),8&r)return t;if(4&r&&"object"==typeof t&&t&&t.__esModule)return t;var e=Object.create(null);if(n.r(e),Object.defineProperty(e,"default",{enumerable:!0,value:t}),2&r&&"string"!=typeof t)for(var o in t)n.d(e,o,function(r){return t[r]}.bind(null,o));return e},n.n=function(t){var r=t&&t.__esModule?function(){return t.default}:function(){return t};return n.d(r,"a",r),r},n.o=function(t,r){return Object.prototype.hasOwnProperty.call(t,r)},n.p="",n(n.s=1)}([function(t,r,n){"use strict";const e=-8,o=-4,i=0,a=1,u=1,c=2,l=5,f=1024,s=2048,y=8192,b=0,p=4,g=8,d=12,_=12,A=16,w="undefined"!=typeof BigUint64Array,h=Symbol(),m=1024;function v(t,r){const n=new Uint32Array(t),e=new Uint16Array(t);var i=n[r+o>>>2]>>>1,a=r>>>1;if(i<=m)return String.fromCharCode.apply(String,e.subarray(a,a+i));const u=[];do{const t=e[a+m-1],r=t>=55296&&t<56320?m-1:m;u.push(String.fromCharCode.apply(String,e.subarray(a,a+=r))),i-=r}while(i>m);return u.join("")+String.fromCharCode.apply(String,e.subarray(a,a+i))}function U(t){const r={};function n(t,r){return t?v(t.buffer,r):"<yet unknown>"}const e=t.env=t.env||{};return e.abort=e.abort||function(t,o,i,a){const u=r.memory||e.memory;throw Error("abort: "+n(u,t)+" at "+n(u,o)+":"+i+":"+a)},e.trace=e.trace||function(t,o){const i=r.memory||e.memory;console.log("trace: "+n(i,t)+(o?" ":"")+Array.prototype.slice.call(arguments,2,2+o).join(", "))},t.Math=t.Math||Math,t.Date=t.Date||Date,r}function F(t,r){const n=r.exports,h=n.memory,m=n.table,U=n.__alloc,F=n.__retain,O=n.__rtti_base||-1;function S(t){const r=new Uint32Array(h.buffer);if((t>>>=0)>=r[O>>>2])throw Error("invalid id: "+t);return r[(O+4>>>2)+2*t]}function x(t){const r=new Uint32Array(h.buffer);if((t>>>=0)>=r[O>>>2])throw Error("invalid id: "+t);return r[(O+4>>>2)+2*t+1]}function P(t){return 31-Math.clz32(t>>>l&31)}function I(t,r,n){const e=h.buffer;if(n)switch(t){case 2:return new Float32Array(e);case 3:return new Float64Array(e)}else switch(t){case 0:return new(r?Int8Array:Uint8Array)(e);case 1:return new(r?Int16Array:Uint16Array)(e);case 2:return new(r?Int32Array:Uint32Array)(e);case 3:return new(r?BigInt64Array:BigUint64Array)(e)}throw Error("unsupported align: "+t)}function C(t){const r=new Uint32Array(h.buffer),n=r[t+e>>>2],i=S(n);if(!(i&u))throw Error("not an array: "+n);const a=P(i);var l=r[t+p>>>2];const y=i&c?r[t+_>>>2]:r[l+o>>>2]>>>a;return I(a,i&f,i&s).subarray(l>>>=a,l+y)}function M(t,r,n){const e=h.buffer,i=new Uint32Array(e),a=i[n+p>>>2];return new t(e,a,i[a+o>>>2]>>>r)}return t.__allocString=function(t){const r=t.length,n=U(r<<1,a),e=new Uint16Array(h.buffer);for(var o=0,i=n>>>1;o<r;++o)e[i+o]=t.charCodeAt(o);return n},t.__getString=function(t){const r=h.buffer;if(new Uint32Array(r)[t+e>>>2]!==a)throw Error("not a string: "+t);return v(r,t)},t.__allocArray=function(t,r){const n=S(t);if(!(n&(u|c)))throw Error("not an array: "+t+" @ "+n);const e=P(n),o=r.length,a=U(o<<e,i),l=U(n&c?A:d,t),w=new Uint32Array(h.buffer);w[l+b>>>2]=F(a),w[l+p>>>2]=a,w[l+g>>>2]=o<<e,n&c&&(w[l+_>>>2]=o);const m=I(e,n&f,n&s);if(n&y)for(let t=0;t<o;++t)m[(a>>>e)+t]=F(r[t]);else m.set(r,a>>>e);return l},t.__getArrayView=C,t.__getArray=function(t){const r=C(t),n=r.length,e=new Array(n);for(let t=0;t<n;t++)e[t]=r[t];return e},t.__getArrayBuffer=function(t){const r=h.buffer,n=new Uint32Array(r)[t+o>>>2];return r.slice(t,t+n)},t.__getInt8Array=M.bind(null,Int8Array,0),t.__getUint8Array=M.bind(null,Uint8Array,0),t.__getUint8ClampedArray=M.bind(null,Uint8ClampedArray,0),t.__getInt16Array=M.bind(null,Int16Array,1),t.__getUint16Array=M.bind(null,Uint16Array,1),t.__getInt32Array=M.bind(null,Int32Array,2),t.__getUint32Array=M.bind(null,Uint32Array,2),w&&(t.__getInt64Array=M.bind(null,BigInt64Array,3),t.__getUint64Array=M.bind(null,BigUint64Array,3)),t.__getFloat32Array=M.bind(null,Float32Array,2),t.__getFloat64Array=M.bind(null,Float64Array,3),t.__instanceof=function(t,r){const n=new Uint32Array(h.buffer);var o=n[t+e>>>2];if(o<=n[O>>>2])do{if(o==r)return!0}while(o=x(o));return!1},t.memory=t.memory||h,t.table=t.table||m,j(n,t)}function O(t,r){var n=(...n)=>(r(n.length),t(...n));return n.original=t,n}function S(t,r){return F(U(r||(r={})),new WebAssembly.Instance(t,r))}function j(t,r){var n=r?Object.create(r):{},e=t.__setargc||function(){};function o(t,r){return Object.prototype.hasOwnProperty.call(t,r)}for(let r in t){if(!o(t,r))continue;let i=t[r],a=r.split("."),u=n;for(;a.length>1;){let t=a.shift();o(u,t)||(u[t]={}),u=u[t]}let c=a[0],l=c.indexOf("#");if(l>=0){let n=c.substring(0,l),a=u[n];if(void 0===a||!a.prototype){let t=function(...r){return t.wrap(t.prototype.constructor(0,...r))};t.prototype={valueOf:function(){return this[h]}},t.wrap=function(r){return Object.create(t.prototype,{[h]:{value:r,writable:!1}})},a&&Object.getOwnPropertyNames(a).forEach(r=>Object.defineProperty(t,r,Object.getOwnPropertyDescriptor(a,r))),u[n]=t}if(c=c.substring(l+1),u=u[n].prototype,/^(get|set):/.test(c)){if(!o(u,c=c.substring(4))){let n=t[r.replace("set:","get:")],e=t[r.replace("get:","set:")];Object.defineProperty(u,c,{get:function(){return n(this[h])},set:function(t){e(this[h],t)},enumerable:!0})}}else"constructor"===c?u[c]=O(i,e):Object.defineProperty(u,c,{value:function(...t){return e(t.length),i(this[h],...t)}})}else/^(get|set):/.test(c)?o(u,c=c.substring(4))||Object.defineProperty(u,c,{get:t[r.replace("set:","get:")],set:t[r.replace("get:","set:")],enumerable:!0}):u[c]="function"==typeof i?O(i,e):i}return n}r.instantiate=S,r.instantiateBuffer=function(t,r){return S(new WebAssembly.Module(t),r)},r.instantiateStreaming=async function(t,r){return F(U(r||(r={})),(await WebAssembly.instantiateStreaming(t,r)).instance)},r.demangle=j},function(t,r,n){"use strict";n.r(r),n.d(r,"init",(function(){return i}));var e=n(0),o=function(t,r,n,e){return new(n||(n=Promise))((function(o,i){function a(t){try{c(e.next(t))}catch(t){i(t)}}function u(t){try{c(e.throw(t))}catch(t){i(t)}}function c(t){var r;t.done?o(t.value):(r=t.value,r instanceof n?r:new n((function(t){t(r)}))).then(a,u)}c((e=e.apply(t,r||[])).next())}))};function i(){return o(this,void 0,void 0,(function*(){const t=yield e.instantiateStreaming(fetch("./optimized.wasm"),{});return function(r,n,e=0,o=0){const i=function(t,r){const n=t.memory.buffer,e=new DataView(n);let o=0,i=0,a=0;for(const t of r)e.setUint8(o,t.type.codePointAt(0)),o+=1,"M"!=t.type&&"L"!=t.type?"Q"!=t.type?"C"!=t.type||(e.setFloat64(o,i,!0),o+=8,e.setFloat64(o,a,!0),o+=8,e.setFloat64(o,t.x1,!0),o+=8,e.setFloat64(o,t.y1,!0),o+=8,e.setFloat64(o,t.x2,!0),o+=8,e.setFloat64(o,t.y2,!0),o+=8,e.setFloat64(o,t.x,!0),o+=8,e.setFloat64(o,t.y,!0),o+=8,i=t.x,a=t.y):(e.setFloat64(o,i,!0),o+=8,e.setFloat64(o,a,!0),o+=8,e.setFloat64(o,t.x1,!0),o+=8,e.setFloat64(o,t.y1,!0),o+=8,e.setFloat64(o,t.x,!0),o+=8,e.setFloat64(o,t.y,!0),o+=8,i=t.x,a=t.y):(e.setFloat64(o,t.x,!0),o+=8,e.setFloat64(o,t.y,!0),o+=8,i=t.x,a=t.y);return o}(t,r),a=t.compile(i,n,e,o);return function(t,r){const n=new Set;for(const e of t.__getArray(r)){const r={fill:void 0,holes:new Set};n.add(r);for(const n of t.__getArray(e)){let e;void 0===r.fill?e=r.fill=[]:r.holes.add(e=[]);for(const r of t.__getArray(n))e.push(t.__getArray(r))}}return n}(t,a)}}))}}]);
>>>>>>> 90799ae860bcc56a87bf05cbc96c435a648a5080
