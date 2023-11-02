"use strict";
var _a, _b, _c, _d, _e, _f;
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
    const updatedData = updateDataForSwap(_getTableRows());
    _removeAllRows();
    _appendRows(updatedData);
}
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
    const tbody = document.querySelector('#tbody');
    return tbody.children.length;
}
function _getTableRows() {
    const tbody = document.querySelector('#tbody');
    const rowElements = [];
    for (let i = 0; i < tbody.children.length; i++) {
        const tr = tbody.children[i];
        const td1 = tr.firstChild;
        const a2 = td1.nextSibling.firstChild;
        rowElements.push({ id: parseInt(td1.textContent), label: a2.textContent });
    }
    return rowElements;
}
function _createRow(data) {
    const tr = document.createElement("tr");
    tr.innerHTML = "<td></td><td><a></a></td>";
    const td1 = tr.firstChild;
    const a2 = td1.nextSibling.firstChild;
    td1.textContent = data.id.toString();
    a2.textContent = data.label;
    return tr;
}
function _appendRows(rowElements) {
    const tbody = document.querySelector('#tbody');
    for (let i = 0; i < rowElements.length; i++) {
        const tr = _createRow(rowElements[i]);
        tbody.appendChild(tr);
    }
}
function _removeAllRows() {
    const tbody = document.querySelector('#tbody');
    tbody.textContent = "";
}
