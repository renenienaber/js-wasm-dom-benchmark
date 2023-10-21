// setup

class RowElement {
    // @ts-ignore
    id: number;
    // @ts-ignore
    label: string;
}

export function buildData(count: number = 1000, firstId: number = 1): RowElement[] {
    const adjectives: string[] = ["pretty", "large", "big", "small", "tall", "short", "long", "handsome", "plain", "quaint", "clean", "elegant", "easy", "angry", "crazy", "helpful", "mushy", "odd", "unsightly", "adorable", "important", "inexpensive", "cheap", "expensive", "fancy"];
    const colours: string[] = ["red", "yellow", "blue", "green", "pink", "brown", "purple", "brown", "white", "black", "orange"];
    const nouns: string[] = ["table", "chair", "house", "bbq", "desk", "car", "pony", "cookie", "sandwich", "burger", "pizza", "mouse", "keyboard"];
    const data: RowElement[] = new Array<RowElement>(<i32>count);
    for (let i = 0; i < count; i++) {
        data[i] = {
            id: firstId + i,
            label: adjectives[<i32>_random(adjectives.length)] + " " + colours[<i32>_random(colours.length)] + " " + nouns[<i32>_random(nouns.length)]
        }
    }
    return data;
}

export function updateData(rowElements: RowElement[], mod: number = 10): RowElement[] {
    const updatedElements = rowElements;
    for (let i=0; i < updatedElements.length; i += <i32>mod) {
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