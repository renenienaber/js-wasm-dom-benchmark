import {Element as VElement} from './lib/element'
import { diff } from './lib/diff'
import { patch } from './lib/patch'



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

let vtree: VElement = new VElement('tbody', {'id': 'tbody'}, []);
const root: HTMLElement = vtree.render();
document.querySelector('table')?.appendChild(root);


// RowElement functions

function buildData(count: number = 1000, firstId: number = 1): RowElement[] {
    const adjectives: string[] = ["pretty", "large", "big", "small", "tall", "short", "long", "handsome", "plain", "quaint", "clean", "elegant", "easy", "angry", "crazy", "helpful", "mushy", "odd", "unsightly", "adorable", "important", "inexpensive", "cheap", "expensive", "fancy"];
    const colours: string[] = ["red", "yellow", "blue", "green", "pink", "brown", "purple", "brown", "white", "black", "orange"];
    const nouns: string[] = ["table", "chair", "house", "bbq", "desk", "car", "pony", "cookie", "sandwich", "burger", "pizza", "mouse", "keyboard"];
    const data: RowElement[] = [];
    for (let i = 0; i < count; i++)
        data.push({id: firstId+i, label: adjectives[_random(adjectives.length)] + " " + colours[_random(colours.length)] + " " + nouns[_random(nouns.length)] });
    return data;
}

function updateData(rowElements: RowElement[], mod: number = 10): RowElement[] {
    const updatedElements = rowElements;
    for (let i=0; i < updatedElements.length; i+=mod) {
        updatedElements[i].label += ' !!!';
    }
    return updatedElements;
}

function updateDataForSwap(rowElements: RowElement[]): RowElement[] {
    const length = rowElements.length;
    if (length < 2) {
        return rowElements;
    }

    const a = rowElements[1];
    rowElements[1] = rowElements[length-2];
    rowElements[length-2] = a;

    return rowElements;
}


// functions using Browser APIs

function _random(max: number): number {
    return Math.round(Math.random()*1000)%max;
}


// interaction with Virtual DOM (using lib)

function _getTableRowCount(): number {
    return vtree.children.length;
}

function _getTableRows(): RowElement[] {
    const rowElements: RowElement[] = [];

    for (let i = 0; i < vtree.children.length; i++) {
        const tr: VElement = vtree.children[i] as VElement;
        const td1: VElement = tr.children[0] as VElement;
        const a2: VElement = (((vtree.children[i] as VElement).children[1] as VElement).children[0] as VElement) as VElement;
        rowElements.push({id: parseInt(td1.children[0] as string), label: a2.children[0] as string});
    }
    return rowElements;
}

function _createRow(data: RowElement): VElement {
    return new VElement('tr', {}, [
        new VElement('td', {}, [data.id.toString()]),
        new VElement('td', {}, [
            new VElement('a', {}, [data.label])
        ])
    ]);
}


// mutating functions

function _appendRows(rowElements: RowElement[]): void {
    const rows: VElement[] = [...vtree.children] as VElement[];
    for(let i = 0; i < rowElements.length; i++) {
        const tr = _createRow(rowElements[i]);
        rows.push(tr);
    }

    vtree = new VElement('tbody', {'id': 'tbody'}, rows);
}

function _removeAllRows(): void {
    vtree = new VElement('tbody', {'id': 'tbody'}, []);
}

// apply changes to Real DOM
function _renderVTree(oldTree: VElement, newTree: VElement) {
    const patches = diff(oldTree, newTree);
    patch(root, patches);
}