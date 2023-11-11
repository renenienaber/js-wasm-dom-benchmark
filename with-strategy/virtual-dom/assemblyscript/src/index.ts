import {VElement} from './lib/models/v-element.model'
import {patch, renderVElement} from './lib/patch'
import {Patch} from "./lib/models/patch.model";
import { doRun } from "../build/main.js"
import {CopiedVElement} from "./lib/models/v-element.copied.model";
import {toCopiedVElement} from "./lib/mappers/v-element.mapper";
import {CopiedPatch} from "./lib/models/patch.copied.model";
import {toPatch} from "./lib/mappers/patch.mapper";



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

function getDiffAndRerender(fn: (oldTree: CopiedVElement) => any): void {
    const visibleTree: CopiedVElement = toCopiedVElement(vtree);
    const result: CopiedPatch[][] = fn(visibleTree);
    const mappedResult: Patch[][] = result.map(el => {
        return el.map(el => toPatch(el))
    });

    // apply changes to Real DOM
    // patch(root, patches);
    console.log(mappedResult);
}

function run(): void {
    const visibleTree = toCopiedVElement(vtree);
    const result: CopiedPatch[][] = doRun(visibleTree) as CopiedPatch[][];
    const mappedResult: Patch[][] = result.map(el => {
        return el.map(el => toPatch(el))
    });

    // apply changes to Real DOM
    patch(root, mappedResult);
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