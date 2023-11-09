import {EmptyVElement, TextVElement, VElement} from "./lib/models/element";
import {Patch} from "./lib/models/patch.model";
import {diff} from "./lib/diff";



// click handler
class VisibleElement {
    // @ts-ignore
    tagName: string;
    // @ts-ignore
    // props: PropsType; // TODO: make props visible
    // @ts-ignore
    children: VisibleElement[];
    // @ts-ignore
    count: i32;
    // @ts-ignore
    text: string;
    // @ts-ignore
    empty: boolean;
}

function _toVElement(visibleElement: VisibleElement): VElement  {
    const velement: VElement = new EmptyVElement();
    velement.tagName = visibleElement.tagName;
    // velement.props = visibleElement.props; // TODO: make props visible

    const children: VisibleElement[] = visibleElement.children;
    const lenChildren: i32 = children.length;
    const newChildren: VElement[] = new Array<VElement>(lenChildren);
    for (let i: i32 = 0; i < lenChildren; i++) {
        const child: VisibleElement = children[i];
        const childVElement: VElement = _toVElement(child);
        newChildren[i] = childVElement;
    }
    velement.children = newChildren;

    velement.count = visibleElement.count;
    velement.text = visibleElement.text;
    velement.empty = visibleElement.empty;

    return velement;
}

function _toVisibleElement(vElement: VElement): VisibleElement {
    const visibleElement: VisibleElement = {
        tagName: vElement.tagName,
        // props: vElement.props, // TODO: make props visible
        children: [],
        count: vElement.count,
        text: vElement.text,
        empty: vElement.empty
    };

    const children: VElement[] = vElement.children;
    const lenChildren: i32 = children.length;
    const newChildren: VisibleElement[] = new Array<VisibleElement>(lenChildren);
    for (let i: i32 = 0; i < lenChildren; i++) {
        const child: VElement = children[i];
        const childVElement: VisibleElement = _toVisibleElement(child);
        newChildren[i] = childVElement;
    }
    visibleElement.children = newChildren;

    return visibleElement;
}


function mutateAndGetDiff(vElement: VElement, fn: () => void): Patch[][] {
    vtree = vElement;
    const oldTree = vtree;

    fn();

    const patches = diff(oldTree, vtree);
    return patches;
}

// export function test(visibleElement: VisibleElement): VisibleElement {
//     const velement: VElement = _toVElement(visibleElement);
//     velement.text = 'dies ist ein test';
//
//     const result = _toVisibleElement(velement);
//     return result;
// }

export function doRun(visibleElement: VisibleElement): Patch[][] {
    const velement: VElement = _toVElement(visibleElement);

    const diff = mutateAndGetDiff(velement, () => {
        _removeAllRows();
        const data: RowElement[] = buildData();
        _appendRows(data);
    });

    return diff;
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
    // const vTreeChildren: VElement[] = vtree.children;

    // const lenVTreeChildren: i32 = vTreeChildren.length;
    const lenRowElements: i32 = rowElements.length;
    // const fullLen: i32 = lenVTreeChildren + lenRowElements;

    const rows: VElement[] = new Array<VElement>(lenRowElements);
    // const rows: VElement[] = new Array<VElement>(fullLen);

    // for(let i: i32 = 0; i < lenVTreeChildren; i++) {
    //     const val: VElement = vTreeChildren[i];
    //     rows[i] = val;
    // }

    for(let i: i32 = 0; i < lenRowElements; i++) {
        const el: RowElement = rowElements[i];
        const tr: VElement = _createRow(el);
        // const index: i32 = lenVTreeChildren + i + 1;
        // rows[index] = tr;
        rows[i] = tr;
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