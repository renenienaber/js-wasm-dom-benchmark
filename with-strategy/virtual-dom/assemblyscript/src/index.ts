import {VElement} from './lib/models/element'
import {patch, renderVElement} from './lib/patch'
import {Patch} from "./lib/models/patch.model";
import { doRun } from "../build/main"



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

    // const result = doRun(visibleVTree);
    // console.log(result);
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

let vtree: VElement = new VElement('tbody', new Map<string, string>([['id', 'body']]), []);
const root: HTMLElement = renderVElement(vtree);
document.querySelector('table')?.appendChild(root);