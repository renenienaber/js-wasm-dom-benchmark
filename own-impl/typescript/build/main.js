"use strict";
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
    for (let el of rowElements) {
        const tr = _createRow(el);
        tbody.appendChild(tr);
    }
}
function _removeAllRows() {
    const tbody = document.querySelector('#tbody');
    tbody.textContent = "";
}
