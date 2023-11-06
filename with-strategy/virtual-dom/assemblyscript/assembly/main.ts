


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

export function run(vtree: VElement): Patch[][] {
    return mutateAndGetDiff(vtree, () => {
        _removeAllRows();
        _appendRows(buildData());
    });
}

export function runLots(vtree: VElement): Patch[][] {
    return mutateAndGetDiff(vtree, () => {
        _removeAllRows();
        _appendRows(buildData(10000));
    });

}

export function add(vtree: VElement): Patch[][] {
    return mutateAndGetDiff(vtree, () => {
        _appendRows(buildData(1000, _getTableRowCount()+1));
    });

}

export function update(vtree: VElement): Patch[][] {
    return mutateAndGetDiff(vtree, () => {
        const updatedData = updateData(_getTableRows());

        _removeAllRows();
        _appendRows(updatedData);
    });

}

export function clearRows(vtree: VElement): Patch[][] {
    return mutateAndGetDiff(vtree, () => {
        _removeAllRows();
    });

}

export function swapRows(vtree: VElement): Patch[][] {
    return mutateAndGetDiff(vtree, () => {
        const updatedData = updateDataForSwap(_getTableRows());

        _removeAllRows();
        _appendRows(updatedData);
    });

}


// setup

class RowElement {
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
        const newRowElement: RowElement = new RowElement(firstId+i, adjectives[_random(adjectives.length)] + " " + colours[_random(colours.length)] + " " + nouns[_random(nouns.length)]);
        data[i] = newRowElement;
    }
    return data;
}

export function updateData(rowElements: RowElement[], mod: i32 = 10): RowElement[] {
    const updatedElements = rowElements;
    for (let i=0; i < updatedElements.length; i+=mod) {
        updatedElements[i].label += ' !!!';
    }
    return updatedElements;
}

export function updateDataForSwap(rowElements: RowElement[]): RowElement[] {
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
        const newRowElement: RowElement = new RowElement(<i32>parseInt(td1.children[0].text), a2.children[0].text)
        rowElements[i] = (newRowElement);
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