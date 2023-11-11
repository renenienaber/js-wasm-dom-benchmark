import {VElement} from './lib/models/v-element.model'
import {patch, renderVElement} from './lib/patch'
import {Patch} from "./lib/models/patch.model";
import { doRun, doRunLots, doAdd, doUpdate, doClearRows, doSwapRows } from "../build/main.js"
import {CopiedVElement} from "./lib/models/v-element.copied.model";
import {toCopiedVElement, toVElement} from "./lib/mappers/v-element.mapper";
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

function _getDiffAndRerender(fn: (copiedVElement: CopiedVElement) => DiffResult): void {
    const mappedTree: CopiedVElement = toCopiedVElement(vtree);
    console.log(mappedTree);
    const result: DiffResult = fn(mappedTree) as DiffResult;
    console.log(result);

    const mappedNewTree: VElement = toVElement(result.newTree);
    const mappedPatches: Patch[][] = [];
    for (let i in result.patches) {
        const val: CopiedPatch[] | null = result.patches[i];
        if(val !== null) {
            mappedPatches[i] = val.map(el => toPatch(el));
        }
    }

    vtree = mappedNewTree;
    // apply changes to Real DOM
    patch(root, mappedPatches);
}

function run(): void {
    _getDiffAndRerender(doRun as () => DiffResult);
}

function runLots(): void {
    _getDiffAndRerender(doRunLots as () => DiffResult);
}

function add(): void {
    _getDiffAndRerender(doAdd as () => DiffResult);
}

function update(): void {
    _getDiffAndRerender(doUpdate as () => DiffResult);
}

function clearRows(): void {
    _getDiffAndRerender(doClearRows as () => DiffResult);
}

function swapRows(): void {
    _getDiffAndRerender(doSwapRows as () => DiffResult);
}


// setup

interface DiffResult {
    newTree: CopiedVElement;
    patches: (CopiedPatch[] | null)[];
}

let vtree: VElement = new VElement('tbody', new Map<string, string>([['id', 'body']]), []);
const root: HTMLElement = renderVElement(vtree);
document.querySelector('table')?.appendChild(root);