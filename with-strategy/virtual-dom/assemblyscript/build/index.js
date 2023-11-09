var _a, _b, _c, _d, _e, _f, _g;
import { toVisibleVElement, VElement } from './lib/models/element.js';
import { patch, renderVElement } from './lib/patch.js';
import { doRun } from "../build/main.js";
(_a = document.getElementById('run')) === null || _a === void 0 ? void 0 : _a.addEventListener("click", () => doBenchmark(run), false);
(_b = document.getElementById('runLots')) === null || _b === void 0 ? void 0 : _b.addEventListener("click", () => doBenchmark(runLots), false);
(_c = document.getElementById('add')) === null || _c === void 0 ? void 0 : _c.addEventListener("click", () => doBenchmark(add), false);
(_d = document.getElementById('update')) === null || _d === void 0 ? void 0 : _d.addEventListener("click", () => doBenchmark(update), false);
(_e = document.getElementById('clearRows')) === null || _e === void 0 ? void 0 : _e.addEventListener("click", () => doBenchmark(clearRows), false);
(_f = document.getElementById('swapRows')) === null || _f === void 0 ? void 0 : _f.addEventListener("click", () => doBenchmark(swapRows), false);
function _displayBenchmark(ms) {
    const span = document.querySelector('#benchmark');
    span.textContent = `Benchmark Result: ${ms}ms`;
}
function doBenchmark(fn) {
    const t0 = performance.now();
    fn();
    const t1 = performance.now();
    _displayBenchmark(t1 - t0);
}
function getDiffAndRerender(fn) {
    const patches = fn(vtree);
    patch(root, patches);
}
function run() {
    const visibleVTree = toVisibleVElement(vtree);
    const result = doRun(visibleVTree);
    console.log(result);
}
function runLots() {
}
function add() {
}
function update() {
}
function clearRows() {
}
function swapRows() {
}
let vtree = new VElement('tbody', new Map([['id', 'body']]), []);
const root = renderVElement(vtree);
(_g = document.querySelector('table')) === null || _g === void 0 ? void 0 : _g.appendChild(root);
