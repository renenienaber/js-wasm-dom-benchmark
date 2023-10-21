
import {buildData, updateData, updateDataForSwap} from "../build/release";

// add event-listener for clicking buttons
document.getElementById('run')?.addEventListener("click", () => doBenchmark(run), false);
document.getElementById('runLots')?.addEventListener("click", () => doBenchmark(runLots), false);
document.getElementById('add')?.addEventListener("click", () => doBenchmark(add), false);
document.getElementById('update')?.addEventListener("click", () => doBenchmark(update), false);
document.getElementById('clearRows')?.addEventListener("click", () => doBenchmark(clearRows), false);
document.getElementById('swapRows')?.addEventListener("click", () => doBenchmark(swapRows), false);


// click handler

function doBenchmark(fn: () => void): void {
    const t0 = performance.now();

    fn();

    const t1 = performance.now();
    _displayBenchmark(t1-t0);
}

function run(): void {
    _removeAllRows();
    _appendRows(buildData());
}

function runLots(): void {
    _removeAllRows();
    _appendRows(buildData(10000));
}

function add(): void {
    _appendRows(buildData(1000, _getTableRowCount()+1));
}

function update(): void {
    const updatedData = updateData(_getTableRows());

    _removeAllRows();
    _appendRows(updatedData);
}

function clearRows(): void {
    _removeAllRows();
}

function swapRows(): void {
    const table = _getTableRows();
    const updatedData = updateDataForSwap(table);

    _removeAllRows();
    _appendRows(updatedData);
}

// setup

interface RowElement {
    id: number;
    label: string;
}

// functions using browser apis

function _getTableRowCount(): number {
    const tbody: Element = document.querySelector('#tbody') as Element;
    return tbody.children.length;
}

function _getTableRows(): RowElement[] {
    const tbody: Element = document.querySelector('#tbody') as Element;
    const rowElements: RowElement[] = [];

    for (let i = 0; i < tbody.children.length; i++) {
        const tr: Element = tbody.children[i];
        const td1: ChildNode = tr.firstChild as ChildNode;
        const a2: ChildNode = (td1.nextSibling as ChildNode).firstChild as ChildNode;
        rowElements.push({id: parseInt(td1.textContent as string), label: a2.textContent as string});
    }
    return rowElements;
}

function _createRow(data: RowElement): Node {
    const tr: HTMLTableRowElement = document.createElement("tr");
    tr.innerHTML = "<td></td><td><a></a></td>";
    const td1: ChildNode = tr.firstChild as ChildNode;
    const a2: ChildNode = (td1.nextSibling as ChildNode).firstChild as ChildNode;

    td1.textContent = data.id.toString();
    a2.textContent = data.label;

    return tr;
}

function _appendRows(rowElements: RowElement[]): void {
    const tbody: Element = document.querySelector('#tbody') as Element;
    for(let el of rowElements) {
        const tr = _createRow(el);
        tbody.appendChild(tr);
    }
}

function _removeAllRows(): void {
    const tbody: Element = document.querySelector('#tbody') as Element;
    tbody.textContent = "";
}

// benchmarking
function _displayBenchmark(ms: number): void {
    const span = document.querySelector('#benchmark') as Element;
    span.textContent = `Benchmark Result: ${ms}ms`;
}