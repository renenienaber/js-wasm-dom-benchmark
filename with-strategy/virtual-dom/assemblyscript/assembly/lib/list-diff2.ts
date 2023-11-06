import {VElement, EmptyVElement, VElementChildType} from "./models/element";
import {DiffResult, Move} from "./models/list-diff2.model";



/**
 * Diff two list in O(N).
 * @param {Array} oldList - Original List
 * @param {Array} newList - List After certain insertions, removes, or moves
 * @return {Object} - {moves: <Array>}
 *                  - moves is a list of actions that telling how to remove and insert
 */
export function diff (oldList: VElementChildType[], newList: VElementChildType[]): DiffResult {
  const moves: Move[] = [];

  // a simulate list to manipulate
  const children: VElementChildType[] = [];
  let i: i32 = 0;
  let item: VElementChildType;
  let freeIndex: i32 = 0;

  // first pass to check item in old list: if it's removed or not
  while (i < oldList.length) {
    item = oldList[i]
    const freeItem: VElement = newList[freeIndex++];
    children.push(freeItem || null);
    // children.push(freeItem)
    i++
  }

  const simulateList: VElement[] = children.slice(0);

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
  let j: i32 = i = 0;
  while (i < newList.length) {
    item = newList[i]

    const simulateItem: VElement = simulateList[j];
    if (simulateItem) {
      j++;
    } else {
      insert(i, item)
    }

    i++
  }

  //if j is not remove to the end, remove all the rest item
  let k: i32 = simulateList.length - j
  while (j++ < simulateList.length) {
    k--
    remove(k + i)
  }


  function remove (index: i32): void {
    const move: Move = {index: index, type: 0, item: new EmptyVElement()};
    moves.push(move);
  }

  function insert (index: i32, item: VElementChildType): void {
    const move: Move = {index: index, item: item, type: 1};
    moves.push(move);
  }

  function removeSimulate (index: i32): void {
    simulateList.splice(index, 1);
  }

  return {
    moves: moves,
    children: children
  }
}
