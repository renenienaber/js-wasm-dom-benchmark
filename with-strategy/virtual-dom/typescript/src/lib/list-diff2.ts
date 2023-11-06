import {EmptyVElement, VElementChildType} from "./element";



/**
 * Diff two list in O(N).
 * @param {Array} oldList - Original List
 * @param {Array} newList - List After certain insertions, removes, or moves
 * @return {Object} - {moves: <Array>}
 *                  - moves is a list of actions that telling how to remove and insert
 */
export interface DiffResult {
  moves: Move[];
  children: VElementChildType[];
}

export interface Move {
  index: number;
  type: number;
  item: VElementChildType;
}

export function diff (oldList: VElementChildType[], newList: VElementChildType[]): DiffResult {
  var moves: Move[] = [];

  // a simulate list to manipulate
  var children: VElementChildType[] = [];
  var i: number = 0;
  var item: VElementChildType;
  var freeIndex: number = 0;

  // first pass to check item in old list: if it's removed or not
  while (i < oldList.length) {
    item = oldList[i]
    var freeItem = newList[freeIndex++]
    children.push(freeItem || null);
    // children.push(freeItem)
    i++
  }

  var simulateList = children.slice(0)

  // remove items no longer exist
  i = 0
  while (i < simulateList.length) {
    if (simulateList[i] === null) {
      remove(i)
      removeSimulate(i)
    } else {
      i++
    }
  }

  // i is cursor pointing to a item in new list
  // j is cursor pointing to a item in simulateList
  var j = i = 0
  while (i < newList.length) {
    item = newList[i]

    var simulateItem = simulateList[j]

    if (simulateItem) {
      j++;
    } else {
      insert(i, item)
    }

    i++
  }

  //if j is not remove to the end, remove all the rest item
  var k = simulateList.length - j
  while (j++ < simulateList.length) {
    k--
    remove(k + i)
  }


  function remove (index: number): void {
    var move: Move = {index: index, type: 0, item: new EmptyVElement()};
    moves.push(move);
  }

  function insert (index: number, item: VElementChildType): void {
    var move: Move = {index: index, item: item, type: 1};
    moves.push(move);
  }

  function removeSimulate (index: number): void {
    simulateList.splice(index, 1);
  }

  return {
    moves: moves,
    children: children
  }
}
