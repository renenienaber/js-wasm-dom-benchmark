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
      const move: Move = new Move(i, new EmptyVElement(), 0);
      moves.push(move);
      simulateList.splice(i, 1);
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
      const move: Move = new Move(i, item, 1);
      moves.push(move);
    }

    i++
  }

  //if j is not remove to the end, remove all the rest item
  let k: i32 = simulateList.length - j
  while (j++ < simulateList.length) {
    k--
    const move: Move = new Move(k+i, new EmptyVElement(), 0);
    moves.push(move);
  }

  return new DiffResult(moves, children);
}
