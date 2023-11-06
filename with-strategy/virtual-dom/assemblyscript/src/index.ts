import {VElement} from './lib/models/element'
import {patch, renderVElement} from './lib/patch'
import {Patch} from "./lib/models/patch.model";
import { buildData, buildData2, buildData3, updateData, updateData2 } from "../build/main"



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

function getDiffAndRerender(fn: (oldTree: VElement) => Patch[][]): void {
    const patches = fn(vtree);

    // apply changes to Real DOM
    patch(root, patches);
}

function run(): void {
    // getDiffAndRerender(() => {
    //     return doRun(vtree);
    // })

    const dummyRowElements: RowElement[] = [
        {id: 1, label: 'test'},
        {id: 2, label: 'test2'},
        {id: 3, label: 'test3'},
    ];
    const dummyRowElements2: RowElement2[] = [
        new RowElement2(1, 'test'),
        new RowElement2(2, 'test2'),
        new RowElement2(3, 'test3'),
    ];

    const buildData1 = buildData(5, 1); // good
    const buildDataTest = buildData2(5, 1); // pointers
    const buildDataTest2 = buildData3(5, 1); // good
    const updateData1 = updateData(dummyRowElements, 2); // good
    const updateDataTest = updateData2(dummyRowElements, 2); // pointers
    const updateDataTest2 = updateData(dummyRowElements2, 2); // good
    console.log(buildData1);
    console.log(buildDataTest);
    console.log(buildDataTest2);
    console.log(updateData1);
    console.log(updateDataTest);
    console.log(updateDataTest2);
}

function runLots(): void {
    // getDiffAndRerender(() => {
    //     return doRunLots(vtree);
    // })
}

function add(): void {
    // getDiffAndRerender(() => {
    //     return doAdd(vtree);
    // })
}

function update(): void {
    // getDiffAndRerender(() => {
    //     return doUpdate(vtree);
    // })
}

function clearRows(): void {
    // getDiffAndRerender(() => {
    //     return doClearRows(vtree);
    // })
}

function swapRows(): void {
    // getDiffAndRerender(() => {
    //     return doSwapRows(vtree);
    // });
}


// setup

interface RowElement {
    id: number;
    label: string;
}

// TODO: testing - class instead of interface (check interop with AS)
class RowElement2 {
    id: number;
    label: string;

    constructor(id: number, label: string) {
        this.id = id;
        this.label = label;
    }
}

let vtree: VElement = new VElement('tbody', new Map<string, string>([['id', 'body']]), []);
const root: HTMLElement = renderVElement(vtree);
document.querySelector('table')?.appendChild(root);