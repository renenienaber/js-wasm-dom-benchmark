// Click Handler

// function run(): void {
//     const t0 = performance.now();
//
//     _removeAllRows();
//     _appendRows(buildData());
//
//     const t1 = performance.now();
//     _displayBenchmark(t1-t0);
// }
//
// function runLots(): void {
//     const t0 = performance.now();
//
//     _removeAllRows();
//     _appendRows(buildData(10000));
//
//     const t1 = performance.now();
//     _displayBenchmark(t1-t0);
// }
//
// function add(): void {
//     const t0 = performance.now();
//
//     _appendRows(buildData(1000, _getTableRowCount()+1));
//
//     const t1 = performance.now();
//     _displayBenchmark(t1-t0);
// }
//
// function update(): void {
//     const t0 = performance.now();
//
//     const updatedData = updateData(_getTableRows());
//
//     _removeAllRows();
//     _appendRows(updatedData);
//
//     const t1 = performance.now();
//     _displayBenchmark(t1-t0);
// }
//
// function clearRows(): void {
//     const t0 = performance.now();
//
//     _removeAllRows();
//
//     const t1 = performance.now();
//     _displayBenchmark(t1-t0);
// }
//
// function swapRows(): void {
//     const t0 = performance.now();
//
//     const table = _getTableRows();
//     const updatedData = updateDataForSwap(table);
//
//     _removeAllRows();
//     _appendRows(updatedData);
//
//     const t1 = performance.now();
//     _displayBenchmark(t1-t0);
// }

// setup

interface RowElement {
    id: number;
    label: string;
}

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

// functions using browser apis

function _random(max: number): number {
    return Math.round(Math.random()*1000)%max;
}

// function _getTableRowCount(): number {
//     const tbody: Element = document.querySelector('#tbody') as Element;
//     return tbody.children.length;
// }
//
// function _getTableRows(): RowElement[] {
//     const tbody: Element = document.querySelector('#tbody') as Element;
//     const rowElements: RowElement[] = [];
//
//     for (let i = 0; i < tbody.children.length; i++) {
//         const tr: Element = tbody.children[i];
//         const td1: ChildNode = tr.firstChild as ChildNode;
//         const a2: ChildNode = (td1.nextSibling as ChildNode).firstChild as ChildNode;
//         rowElements.push({id: parseInt(td1.textContent as string), label: a2.textContent as string});
//     }
//     return rowElements;
// }
//
// function _createRow(data: RowElement): Node {
//     const tr: HTMLTableRowElement = document.createElement("tr");
//     tr.innerHTML = "<td></td><td><a></a></td>";
//     const td1: ChildNode = tr.firstChild as ChildNode;
//     const a2: ChildNode = (td1.nextSibling as ChildNode).firstChild as ChildNode;
//
//     td1.textContent = data.id.toString();
//     a2.textContent = data.label;
//
//     return tr;
// }
//
// function _appendRows(rowElements: RowElement[]): void {
//     const tbody: Element = document.querySelector('#tbody') as Element;
//     for(let el of rowElements) {
//         const tr = _createRow(el);
//         tbody.appendChild(tr);
//     }
// }
//
// function _removeAllRows(): void {
//     const tbody: Element = document.querySelector('#tbody') as Element;
//     tbody.textContent = "";
// }
//
// // benchmarking
// function _displayBenchmark(ms: number): void {
//     const span = document.querySelector('#benchmark') as Element;
//     span.textContent = `Benchmark Result: ${ms}ms`;
// }