var _a, _b, _c, _d, _e, _f, _g;
import { Element as VElement } from './lib/element.js';
import { diff } from './lib/diff.js';
import { patch } from './lib/patch.js';
(_a = document.getElementById('run')) === null || _a === void 0 ? void 0 : _a.addEventListener("click", () => doBenchmark(run), false);
(_b = document.getElementById('runLots')) === null || _b === void 0 ? void 0 : _b.addEventListener("click", () => doBenchmark(runLots), false);
(_c = document.getElementById('add')) === null || _c === void 0 ? void 0 : _c.addEventListener("click", () => doBenchmark(add), false);
(_d = document.getElementById('update')) === null || _d === void 0 ? void 0 : _d.addEventListener("click", () => doBenchmark(update), false);
(_e = document.getElementById('clearRows')) === null || _e === void 0 ? void 0 : _e.addEventListener("click", () => doBenchmark(clearRows), false);
(_f = document.getElementById('swapRows')) === null || _f === void 0 ? void 0 : _f.addEventListener("click", () => doBenchmark(swapRows), false);
function doBenchmark(fn) {
    const t0 = performance.now();
    fn();
    const t1 = performance.now();
    _displayBenchmark(t1 - t0);
}
function run() {
    _removeAllRows();
    _appendRows(buildData());
}
function runLots() {
    _removeAllRows();
    _appendRows(buildData(10000));
}
function add() {
    _appendRows(buildData(1000, _getTableRowCount() + 1));
}
function update() {
    const updatedData = updateData(_getTableRows());
    _removeAllRows();
    _appendRows(updatedData);
}
function clearRows() {
    _removeAllRows();
}
function swapRows() {
    const table = _getTableRows();
    const updatedData = updateDataForSwap(table);
    _removeAllRows();
    _appendRows(updatedData);
}
let vtree = new VElement('tbody', { 'id': 'tbody' }, []);
const root = vtree.render();
(_g = document.querySelector('table')) === null || _g === void 0 ? void 0 : _g.appendChild(root);
function buildData(count = 1000, firstId = 1) {
    const adjectives = ["pretty", "large", "big", "small", "tall", "short", "long", "handsome", "plain", "quaint", "clean", "elegant", "easy", "angry", "crazy", "helpful", "mushy", "odd", "unsightly", "adorable", "important", "inexpensive", "cheap", "expensive", "fancy"];
    const colours = ["red", "yellow", "blue", "green", "pink", "brown", "purple", "brown", "white", "black", "orange"];
    const nouns = ["table", "chair", "house", "bbq", "desk", "car", "pony", "cookie", "sandwich", "burger", "pizza", "mouse", "keyboard"];
    const data = [];
    for (let i = 0; i < count; i++)
        data.push({ id: firstId + i, label: adjectives[_random(adjectives.length)] + " " + colours[_random(colours.length)] + " " + nouns[_random(nouns.length)] });
    return data;
}
function updateData(rowElements, mod = 10) {
    const updatedElements = rowElements;
    for (let i = 0; i < updatedElements.length; i += mod) {
        updatedElements[i].label += ' !!!';
    }
    return updatedElements;
}
function updateDataForSwap(rowElements) {
    const length = rowElements.length;
    if (length < 2) {
        return rowElements;
    }
    const a = rowElements[1];
    rowElements[1] = rowElements[length - 2];
    rowElements[length - 2] = a;
    return rowElements;
}
function _random(max) {
    return Math.round(Math.random() * 1000) % max;
}
function _getTableRowCount() {
    return vtree.children.length;
}
function _getTableRows() {
    const rowElements = [];
    for (let i = 0; i < vtree.children.length; i++) {
        const tr = vtree.children[i];
        const td1 = tr.children[0];
        const a2 = vtree.children[i].children[1].children[0];
        rowElements.push({ id: parseInt(td1.children[0]), label: a2.children[0] });
    }
    return rowElements;
}
function _createRow(data) {
    return new VElement('tr', {}, [
        new VElement('td', [data.id.toString()], []),
        new VElement('td', {}, [
            new VElement('a', [data.label], [])
        ])
    ]);
}
function _renderVTree(newTree) {
    const patches = diff(vtree, newTree);
    patch(root, patches);
    vtree = newTree;
}
function _appendRows(rowElements) {
    const rows = [...vtree.children];
    for (let i = 0; i < rowElements.length; i++) {
        const tr = _createRow(rowElements[i]);
        rows.push(tr);
    }
    const newTree = new VElement('tbody', { 'id': 'tbody' }, rows);
    _renderVTree(newTree);
}
function _removeAllRows() {
    const newTree = new VElement('tbody', { 'id': 'tbody' }, []);
    _renderVTree(newTree);
}
function _displayBenchmark(ms) {
    const span = document.querySelector('#benchmark');
    span.textContent = `Benchmark Result: ${ms}ms`;
}
