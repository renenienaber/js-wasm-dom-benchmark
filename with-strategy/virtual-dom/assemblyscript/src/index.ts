import {VElement} from './lib/models/element'
import { diff } from './lib/diff'
import {patch, renderVElement} from './lib/patch'



// add event-listener for clicking buttons
document.getElementById('run')?.addEventListener("click", () => doBenchmark(run), false);
document.getElementById('runLots')?.addEventListener("click", () => doBenchmark(runLots), false);
document.getElementById('add')?.addEventListener("click", () => doBenchmark(add), false);
document.getElementById('update')?.addEventListener("click", () => doBenchmark(update), false);
document.getElementById('clearRows')?.addEventListener("click", () => doBenchmark(clearRows), false);
document.getElementById('swapRows')?.addEventListener("click", () => doBenchmark(swapRows), false);


// benchmarking

function _displayBenchmark(ms: number): void {
    const span = document.querySelector('#benchmark') as Element;
    span.textContent = `Benchmark Result: ${ms}ms`;
}

function doBenchmark(fn: () => void): void {
    const t0 = performance.now();

    fn();

    const t1 = performance.now();
    _displayBenchmark(t1-t0);
}


// click handler

function mutateAndRerender(fn: () => void): void {
    const oldTree = vtree;
    fn();
    _renderVTree(oldTree, vtree);
}

function run(): void {
    mutateAndRerender(() => {
        _removeAllRows();
        _appendRows(buildData());
    });

}

function runLots(): void {
    mutateAndRerender(() => {
        _removeAllRows();
        _appendRows(buildData(10000));
    });

}

function add(): void {
    mutateAndRerender(() => {
        _appendRows(buildData(1000, _getTableRowCount()+1));
    });

}

function update(): void {
    mutateAndRerender(() => {
        const updatedData = updateData(_getTableRows());

        _removeAllRows();
        _appendRows(updatedData);
    });

}

function clearRows(): void {
    mutateAndRerender(() => {
        _removeAllRows();
    });

}

function swapRows(): void {
    mutateAndRerender(() => {
        const updatedData = updateDataForSwap(_getTableRows());

        _removeAllRows();
        _appendRows(updatedData);
    });

}


// setup

interface RowElement {
    id: number;
    label: string;
}

let vtree: VElement = new VElement('tbody', new Map<string, string>([['id', 'body']]), []);
const root: HTMLElement = renderVElement(vtree);
document.querySelector('table')?.appendChild(root);

// apply changes to Real DOM
function _renderVTree(oldTree: VElement, newTree: VElement): void {
    const patches = diff(oldTree, newTree);
    patch(root, patches);
}