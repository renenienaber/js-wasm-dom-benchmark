import { EmptyVElement } from "./element.js";
export function diff(oldList, newList) {
    var moves = [];
    var children = [];
    var i = 0;
    var item;
    var freeIndex = 0;
    while (i < oldList.length) {
        item = oldList[i];
        var freeItem = newList[freeIndex++];
        children.push(freeItem || null);
        i++;
    }
    var simulateList = children.slice(0);
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
    var j = i = 0;
    while (i < newList.length) {
        item = newList[i];
        var simulateItem = simulateList[j];
        if (simulateItem) {
            j++;
        }
        else {
            insert(i, item);
        }
        i++;
    }
    var k = simulateList.length - j;
    while (j++ < simulateList.length) {
        k--;
        remove(k + i);
    }
    function remove(index) {
        var move = { index: index, type: 0, item: new EmptyVElement() };
        moves.push(move);
    }
    function insert(index, item) {
        var move = { index: index, item: item, type: 1 };
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
