import {
    EmptyVElement,
    TextVElement,
    VElement
} from "./lib/models/v-element.model";
import {diff} from "./lib/diff";
import {CopiedVElement} from "./lib/models/v-element.copied.model";
import {toCopiedVElement, toVElement} from "./lib/mappers/v-element.mapper";
import {CopiedPatch} from "./lib/models/patch.copied.model";
import {toCopiedPatches} from "./lib/mappers/patch.mapper";
import {Patch} from "./lib/models/patch.model";



// click handler
function mutateAndGetDiff(copiedVElement: CopiedVElement, fn: () => void): DiffResult {
    const mappedVElement: VElement = toVElement(copiedVElement);
    vtree = mappedVElement;
    const oldTree = vtree;

    fn();

    const patches: (Patch[] | null)[] = diff(oldTree, vtree);
    const mappedNewTree: CopiedVElement = toCopiedVElement(vtree);
    const mappedPatches: (CopiedPatch[] | null)[] = toCopiedPatches(patches);
    return {
        newTree: mappedNewTree,
        patches: mappedPatches
    };
}

export function doRun(copiedVElement: CopiedVElement): DiffResult {
    const diff: DiffResult = mutateAndGetDiff(copiedVElement, () => {
        _removeAllRows();
        const data: RowElement[] = buildData();
        _appendRows(data);
    });

    return diff;
}

export function doRunLots(copiedVElement: CopiedVElement): DiffResult {
    return mutateAndGetDiff(copiedVElement, () => {
        _removeAllRows();
        const data: RowElement[] = buildData(10000);
        _appendRows(data);
    });

}

export function doAdd(copiedVElement: CopiedVElement): DiffResult {
    return mutateAndGetDiff(copiedVElement, () => {
        const firstId: i32 = _getTableRowCount()+1;
        const data: RowElement[] = buildData(1000, firstId);
        _appendRows(data);
    });

}

export function doUpdate(copiedVElement: CopiedVElement): DiffResult {
    return mutateAndGetDiff(copiedVElement, () => {
        const tableRows: RowElement[] = _getTableRows();
        const updatedData = updateData(tableRows);

        _removeAllRows();
        _appendRows(updatedData);
    });

}

export function doClearRows(copiedVElement: CopiedVElement): DiffResult {
    return mutateAndGetDiff(copiedVElement, () => {
        _removeAllRows();
    });

}

export function doSwapRows(copiedVElement: CopiedVElement): DiffResult {
    return mutateAndGetDiff(copiedVElement, () => {
        const tableRows: RowElement[] = _getTableRows();
        const updatedData = updateDataForSwap(tableRows);

        _removeAllRows();
        _appendRows(updatedData);
    });
}


// setup

class RowElement {
    // @ts-ignore
    id: i32;
    // @ts-ignore
    label: string;
}

class DiffResult {
    // @ts-ignore
    newTree: CopiedVElement;
    // @ts-ignore
    patches: (CopiedPatch[] | null)[];
}

let vtree: VElement = new EmptyVElement();


// RowElement functions

function buildData(count: i32 = 1000, firstId: i32 = 1): RowElement[] {
    const adjectives: string[] = ["pretty", "large", "big", "small", "tall", "short", "long", "handsome", "plain", "quaint", "clean", "elegant", "easy", "angry", "crazy", "helpful", "mushy", "odd", "unsightly", "adorable", "important", "inexpensive", "cheap", "expensive", "fancy"];
    const colours: string[] = ["red", "yellow", "blue", "green", "pink", "brown", "purple", "brown", "white", "black", "orange"];
    const nouns: string[] = ["table", "chair", "house", "bbq", "desk", "car", "pony", "cookie", "sandwich", "burger", "pizza", "mouse", "keyboard"];
    const data: RowElement[] = new Array<RowElement>(count);
    for (let i: i32 = 0; i < count; i++) {
        data[i] = {
            id: firstId+i,
            label: adjectives[_random(adjectives.length)] + " " + colours[_random(colours.length)] + " " + nouns[_random(nouns.length)]
        };
    }
    return data;
}

function updateData(rowElements: RowElement[], mod: i32 = 10): RowElement[] {
    const updatedElements: RowElement[] = rowElements;
    for (let i: i32 = 0; i < updatedElements.length; i+=mod) {
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


// functions using built-in APIs

function _random(max: i32): i32 {
    return <i32>Math.round(Math.random()*1000)%max;
}


// interaction with Virtual DOM (using lib)

function _getTableRowCount(): i32 {
    return vtree.children.length;
}

function _getTableRows(): RowElement[] {
    const rowElements: RowElement[] = new Array<RowElement>(vtree.children.length);

    for (let i: i32 = 0; i < vtree.children.length; i++) {
        const tr: VElement = vtree.children[i] as VElement;
        const td1: VElement = tr.children[0] as VElement;
        const a2: VElement = (((vtree.children[i] as VElement).children[1] as VElement).children[0] as VElement) as VElement;
        rowElements[i] = {
            id: <i32>parseInt(td1.children[0].text),
            label: a2.children[0].text
        };
    }
    return rowElements;
}

function _createRow(data: RowElement): VElement {
    return new VElement('tr', new Map<string, string>(), [
        new VElement('td', new Map<string, string>(), [
            new TextVElement(data.id.toString())
        ]),
        new VElement('td', new Map<string, string>(), [
            new VElement('a', new Map<string, string>(), [
                new TextVElement(data.label)
            ])
        ])
    ]);
}


// mutating functions

function _appendRows(rowElements: RowElement[]): void {
    const vTreeChildren: VElement[] = vtree.children;

    const lenVTreeChildren: i32 = vTreeChildren.length;
    const lenRowElements: i32 = rowElements.length;

    const rows: VElement[] = [];

    for(let i: i32 = 0; i < lenVTreeChildren; i++) {
        const val: VElement = vTreeChildren[i];
        rows.push(val);
    }

    for(let i: i32 = 0; i < lenRowElements; i++) {
        const el: RowElement = rowElements[i];
        const tr: VElement = _createRow(el);
        rows.push(tr);
    }

    const newMap: Map<string, string> = new Map<string, string>();
    newMap.set('id', 'tbody');
    vtree = new VElement('tbody', newMap, rows);
}

function _removeAllRows(): void {
    const newMap: Map<string, string> = new Map<string, string>();
    newMap.set('id', 'tbody');
    vtree = new VElement('tbody', newMap, []);
}