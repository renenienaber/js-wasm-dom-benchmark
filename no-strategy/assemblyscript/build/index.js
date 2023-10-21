var _a, _b, _c, _d, _e, _f;
import { buildData, updateData, updateDataForSwap } from "./main.js";
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
    for (let el of rowElements) {
        const tr = _createRow(el);
        tbody.appendChild(tr);
    }
}
function _removeAllRows() {
    const tbody = document.querySelector('#tbody');
    tbody.textContent = "";
}
function _displayBenchmark(ms) {
    const span = document.querySelector('#benchmark');
    span.textContent = `Benchmark Result: ${ms}ms`;
}
