import { EmptyVElement } from "./models/element.js";
export function diff(oldList, newList) {
    const moves = [];
    const children = [];
    let i = 0;
    let item;
    let freeIndex = 0;
    while (i < oldList.length) {
        item = oldList[i];
        const freeItem = newList[freeIndex++];
        children.push(freeItem || null);
        i++;
    }
    const simulateList = children.slice(0);
    i = 0;
    while (i < simulateList.length) {
        if (simulateList[i] === null) {
            remove(i);
            removeSimulate(i);
        }
        else {
            i++;
        }
    }
    let j = i = 0;
    while (i < newList.length) {
        item = newList[i];
        const simulateItem = simulateList[j];
        if (simulateItem) {
            j++;
        }
        else {
            insert(i, item);
        }
        i++;
    }
    let k = simulateList.length - j;
    while (j++ < simulateList.length) {
        k--;
        remove(k + i);
    }
    function remove(index) {
        const move = { index: index, type: 0, item: new EmptyVElement() };
        moves.push(move);
    }
    function insert(index, item) {
        const move = { index: index, item: item, type: 1 };
        moves.push(move);
    }
    function removeSimulate(index) {
        simulateList.splice(index, 1);
    }
    return {
        moves: moves,
        children: children
    };
}
