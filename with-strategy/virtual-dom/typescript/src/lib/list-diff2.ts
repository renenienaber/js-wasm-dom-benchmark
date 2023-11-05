import {Element as VElement, VElementChildType} from "./element";

/**
 * Diff two list in O(N).
 * @param {Array} oldList - Original List
 * @param {Array} newList - List After certain insertions, removes, or moves
 * @return {Object} - {moves: <Array>}
 *                  - moves is a list of actions that telling how to remove and insert
 */
interface DiffResult {
  moves: Move[];
  children: (VElementChildType | null)[];
}

interface Move {
  index: number;
  type: number;
  item?: VElementChildType | null;
}

interface KeyIndexAndFree {
  keyIndex: any;
  free: (VElementChildType | null)[];
}

export function diff (oldList: VElementChildType[], newList: (VElementChildType | null)[], key: string): DiffResult {
  var oldMap: KeyIndexAndFree = makeKeyIndexAndFree(oldList, key);
  var newMap: KeyIndexAndFree = makeKeyIndexAndFree(newList, key);

  var newFree: (VElementChildType | null)[] = newMap.free;

  var oldKeyIndex = oldMap.keyIndex;
  var newKeyIndex = newMap.keyIndex;

  var moves: Move[] = [];

  // a simulate list to manipulate
  var children: (VElementChildType | null)[] = [];
  var i: number = 0;
  var item: VElementChildType | null;
  var itemKey;
  var freeIndex: number = 0;

  // first pass to check item in old list: if it's removed or not
  while (i < oldList.length) {
    item = oldList[i]
    itemKey = getItemKey(item, key)
    if (itemKey) {
      if (!newKeyIndex.hasOwnProperty(itemKey)) {
        children.push(null)
      } else {
        var newItemIndex = newKeyIndex[itemKey]
        children.push(newList[newItemIndex])
      }
    } else {
      var freeItem = newFree[freeIndex++]
      children.push(freeItem || null)
      // children.push(freeItem)
    }
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
    itemKey = getItemKey(item, key)

    var simulateItem = simulateList[j]
    var simulateItemKey = getItemKey(simulateItem, key)

    if (simulateItem) {
      if (itemKey === simulateItemKey) {
        j++
      } else {
        // new item, just inesrt it
        if (!oldKeyIndex.hasOwnProperty(itemKey)) {
          insert(i, item)
        } else {
          // if remove current simulateItem make item in right place
          // then just remove it
          var nextItemKey = getItemKey(simulateList[j + 1], key)
          if (nextItemKey === itemKey) {
            remove(i)
            removeSimulate(j)
            j++ // after removing, current j is right, just jump to next one
          } else {
            // else insert item
            insert(i, item)
          }
        }
      }
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
    var move: Move = {index: index, type: 0};
    moves.push(move);
  }

  function insert (index: number, item: VElementChildType | null): void {
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

/**
 * Convert list to key-item keyIndex object.
 * @param {Array} list
 * @param {String|Function} key
 */
export function makeKeyIndexAndFree (list: (VElementChildType | null)[], key: string): KeyIndexAndFree {
  var keyIndex: any = {}
  var free: (VElementChildType | null)[] = []
  for (var i = 0, len = list.length; i < len; i++) {
    var item = list[i]
    var itemKey = getItemKey(item, key)
    if (itemKey) {
      keyIndex[itemKey] = i
    } else {
      free.push(item)
    }
  }
  return {
    keyIndex: keyIndex,
    free: free
  }
}

function getItemKey (item: any, key: any) {
  if (!item || !key) return void 666
  return typeof key === 'string'
    ? item[key]
    : key(item)
}
// function getItemKey (item: (VElementChildType), key: string): any | null {
//   if (!item || !key) return null;
//   if(item instanceof VElement) {
//     // @ts-ignore
//     return item[key];
//   }
//   return null;
// }
