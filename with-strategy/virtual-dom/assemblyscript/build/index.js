var _a, _b, _c, _d, _e, _f, _g;
import { VElement } from './lib/models/element.js';
import { patch, renderVElement } from './lib/patch.js';
import { buildData, buildData2, buildData3, updateData, updateData2 } from "../build/main.js";
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
    const dummyRowElements = [
        { id: 1, label: 'test' },
        { id: 2, label: 'test2' },
        { id: 3, label: 'test3' },
    ];
    const dummyRowElements2 = [
        new RowElement2(1, 'test'),
        new RowElement2(2, 'test2'),
        new RowElement2(3, 'test3'),
    ];
    const buildData1 = buildData(5, 1);
    const buildDataTest = buildData2(5, 1);
    const buildDataTest2 = buildData3(5, 1);
    const updateData1 = updateData(dummyRowElements, 2);
    const updateDataTest = updateData2(dummyRowElements, 2);
    const updateDataTest2 = updateData(dummyRowElements2, 2);
    console.log(buildData1);
    console.log(buildDataTest);
    console.log(buildDataTest2);
    console.log(updateData1);
    console.log(updateDataTest);
    console.log(updateDataTest2);
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
class RowElement2 {
    constructor(id, label) {
        this.id = id;
        this.label = label;
    }
}
let vtree = new VElement('tbody', new Map([['id', 'body']]), []);
const root = renderVElement(vtree);
(_g = document.querySelector('table')) === null || _g === void 0 ? void 0 : _g.appendChild(root);
