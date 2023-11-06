


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

interface RowElement {
    id: number;
    label: string;
}

let vtree = new EmptyVElement();


// RowElement functions

export function buildData(count: number = 1000, firstId: number = 1): RowElement[] {
    const adjectives: string[] = ["pretty", "large", "big", "small", "tall", "short", "long", "handsome", "plain", "quaint", "clean", "elegant", "easy", "angry", "crazy", "helpful", "mushy", "odd", "unsightly", "adorable", "important", "inexpensive", "cheap", "expensive", "fancy"];
    const colours: string[] = ["red", "yellow", "blue", "green", "pink", "brown", "purple", "brown", "white", "black", "orange"];
    const nouns: string[] = ["table", "chair", "house", "bbq", "desk", "car", "pony", "cookie", "sandwich", "burger", "pizza", "mouse", "keyboard"];
    const data: RowElement[] = [];
    for (let i = 0; i < count; i++)
        data.push({id: firstId+i, label: adjectives[_random(adjectives.length)] + " " + colours[_random(colours.length)] + " " + nouns[_random(nouns.length)] });
    return data;
}

export function updateData(rowElements: RowElement[], mod: number = 10): RowElement[] {
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
        rowElements.push({id: parseInt(td1.children[0].text), label: a2.children[0].text});
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
    const rows: VElement[] = [...vtree.children] as VElement[];
    for(let i = 0; i < rowElements.length; i++) {
        const tr = _createRow(rowElements[i]);
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