// click handler

import {EmptyVElement, TextVElement, VElement} from "./lib/models/element";
import {Patch} from "./lib/models/patch.model";
import {diff} from "./lib/diff";

function mutateAndGetDiff(vElement: VElement, fn: () => void): Patch[][] {
    vtree = vElement;
    const oldTree = vtree;
    fn();
    return diff(oldTree, vtree);
}

export function doRun(vtree: VElement): Patch[][] {
    const test = new VElement(vtree.tagName, vtree.props, vtree.children);

    return mutateAndGetDiff(test, () => {
        _removeAllRows();
        _appendRows(buildData());
    });
}

export function doRunLots(vtree: VElement): Patch[][] {
    return mutateAndGetDiff(vtree, () => {
        _removeAllRows();
        _appendRows(buildData(10000));
    });

}

export function doAdd(vtree: VElement): Patch[][] {
    return mutateAndGetDiff(vtree, () => {
        _appendRows(buildData(1000, _getTableRowCount()+1));
    });

}

export function doUpdate(vtree: VElement): Patch[][] {
    return mutateAndGetDiff(vtree, () => {
        const updatedData = updateData(_getTableRows());

        _removeAllRows();
        _appendRows(updatedData);
    });

}

export function doClearRows(vtree: VElement): Patch[][] {
    return mutateAndGetDiff(vtree, () => {
        _removeAllRows();
    });

}

export function doSwapRows(vtree: VElement): Patch[][] {
    return mutateAndGetDiff(vtree, () => {
        const updatedData = updateDataForSwap(_getTableRows());

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

// TODO: testing - using opaque pointers?
class RowElement2 {
    id: i32;
    label: string;

    constructor(id: i32, label: string) {
        this.id = id;
        this.label = label;
    }
}

let vtree: VElement = new EmptyVElement();


// RowElement functions

export function buildData(count: i32 = 1000, firstId: i32 = 1): RowElement[] {
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

// TODO: testing - for class instead of 'interface'
export function buildData2(count: i32 = 1000, firstId: i32 = 1): RowElement2[] {
    const adjectives: string[] = ["pretty", "large", "big", "small", "tall", "short", "long", "handsome", "plain", "quaint", "clean", "elegant", "easy", "angry", "crazy", "helpful", "mushy", "odd", "unsightly", "adorable", "important", "inexpensive", "cheap", "expensive", "fancy"];
    const colours: string[] = ["red", "yellow", "blue", "green", "pink", "brown", "purple", "brown", "white", "black", "orange"];
    const nouns: string[] = ["table", "chair", "house", "bbq", "desk", "car", "pony", "cookie", "sandwich", "burger", "pizza", "mouse", "keyboard"];
    const data: RowElement2[] = new Array<RowElement2>(count);
    for (let i: i32 = 0; i < count; i++) {
        data[i] = new RowElement2(firstId+i, adjectives[_random(adjectives.length)] + " " + colours[_random(colours.length)] + " " + nouns[_random(nouns.length)]);;
    }
    return data;
}

// TODO: testing - process as class, return as 'interface'
export function buildData3(count: i32 = 1000, firstId: i32 = 1): RowElement[] {
    const adjectives: string[] = ["pretty", "large", "big", "small", "tall", "short", "long", "handsome", "plain", "quaint", "clean", "elegant", "easy", "angry", "crazy", "helpful", "mushy", "odd", "unsightly", "adorable", "important", "inexpensive", "cheap", "expensive", "fancy"];
    const colours: string[] = ["red", "yellow", "blue", "green", "pink", "brown", "purple", "brown", "white", "black", "orange"];
    const nouns: string[] = ["table", "chair", "house", "bbq", "desk", "car", "pony", "cookie", "sandwich", "burger", "pizza", "mouse", "keyboard"];
    const data: RowElement2[] = new Array<RowElement2>(count);
    for (let i: i32 = 0; i < count; i++) {
        data[i] = new RowElement2(firstId+i, adjectives[_random(adjectives.length)] + " " + colours[_random(colours.length)] + " " + nouns[_random(nouns.length)]);;
    }

    const returnData: RowElement[] = new Array<RowElement>(count);
    for (let i: i32 = 0; i < count; i++) {
        returnData[i] = {
            id: data[i].id,
            label: data[i].label
        };
    }
    return returnData;
}

export function updateData(rowElements: RowElement[], mod: i32 = 10): RowElement[] {
    const updatedElements: RowElement[] = rowElements;
    for (let i: i32 = 0; i < updatedElements.length; i+=mod) {
        updatedElements[i].label += ' !!!';
    }
    return updatedElements;
}

// TODO: testing - for class instead of 'interface'
export function updateData2(rowElements: RowElement[], mod: i32 = 10): RowElement2[] {
    const updatedElements: RowElement2[] = [];
    for (let i: i32 = 0; i < rowElements.length; i+=mod) {
        const rowEl: RowElement = rowElements[i];
        updatedElements[i] = new RowElement2(rowEl.id, rowEl.label);
    }
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
    const lenVTreeChildren: i32 = vtree.children.length;
    const lenRowElements: i32 = rowElements.length;

    const rows: VElement[] = new Array<VElement>(lenVTreeChildren + lenRowElements);

    for(let i: i32 = 0; i < lenVTreeChildren; i++) {
        const val: VElement = vtree.children[i];
        rows[i] = val;
    }

    for(let i: i32 = 0; i < lenRowElements; i++) {
        const tr: VElement = _createRow(rowElements[i]);
        rows[lenVTreeChildren + i + 1] = tr;
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