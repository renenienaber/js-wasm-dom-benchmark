var _a, _b, _c, _d, _e, _f, _g;
import { VElement } from './lib/models/v-element.model.js';
import { patch, renderVElement } from './lib/patch.js';
import { doRun, doRunLots, doAdd, doUpdate, doClearRows, doSwapRows } from "../build/main.js";
import { toCopiedVElement } from "./lib/mappers/v-element.mapper.js";
import { toPatch } from "./lib/mappers/patch.mapper.js";
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
function _getDiffAndRerender(fn) {
    const mappedTree = toCopiedVElement(vtree);
    const result = fn(mappedTree);
    const mappedResult = result.map(el => {
        return el.map(el => toPatch(el));
    });
    console.log(mappedResult);
    patch(root, mappedResult);
}
function run() {
    _getDiffAndRerender(doRun);
}
function runLots() {
    _getDiffAndRerender(doRunLots);
}
function add() {
    _getDiffAndRerender(doAdd);
}
function update() {
    _getDiffAndRerender(doUpdate);
}
function clearRows() {
    _getDiffAndRerender(doClearRows);
}
function swapRows() {
    _getDiffAndRerender(doSwapRows);
}
let vtree = new VElement('tbody', new Map([['id', 'body']]), []);
const root = renderVElement(vtree);
(_g = document.querySelector('table')) === null || _g === void 0 ? void 0 : _g.appendChild(root);
