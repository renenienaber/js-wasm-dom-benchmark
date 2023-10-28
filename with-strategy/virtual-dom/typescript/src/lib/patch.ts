import {_each, _setAttr, _toArray} from "./util";

export enum PatchType {
  REPLACE,
  REORDER,
  PROPS,
  TEXT
}

export interface Patch {
  type: PatchType;
  content?: any;
  props?: any;
  node?: any;
  moves?: any;
}

export interface Walker {
  index: number;
}

export function patch (node: Node, patches: Patch[][]) {
  const walker: Walker = {index: 0};
  dfsWalk(node, walker, patches);
}

export function dfsWalk (node: Node, walker: Walker, patches: Patch[][]) {
  const currentPatches = patches[walker.index];

  const len = node.childNodes
    ? node.childNodes.length
    : 0
  for (let i = 0; i < len; i++) {
    const child = node.childNodes[i]
    walker.index++
    dfsWalk(child, walker, patches)
  }

  if (currentPatches) {
    applyPatches(node, currentPatches);
  }
}

export function applyPatches (node: Node, currentPatches: Patch[]) {
  _each(currentPatches, function (currentPatch: Patch) {
    switch (currentPatch.type) {
      case PatchType.REPLACE:
        const newNode = (typeof currentPatch.node === 'string')
          ? document.createTextNode(currentPatch.node)
          : currentPatch.node.render();
        node.parentNode?.replaceChild(newNode, node);
        break;
      case PatchType.REORDER:
        reorderChildren(node as HTMLElement, currentPatch.moves)
        break;
      case PatchType.PROPS:
        setProps(node as HTMLElement, currentPatch.props)
        break;
      case PatchType.TEXT:
        if (node.textContent) {
          node.textContent = currentPatch.content
        } else {
          node.nodeValue = currentPatch.content
        }
        break;
      default:
        throw new Error('Unknown patch type ' + currentPatch.type)
    }
  })
}

export function setProps (node: HTMLElement, props: any) {
  for (const key in props) {
    if (props[key] === void 666) {
      node.removeAttribute(key)
    } else {
      const value = props[key]
      _setAttr(node, key, value)
    }
  }
}

export function reorderChildren (node: HTMLElement, moves: any) {
  const staticNodeList = _toArray(node.childNodes)
  let maps: any = {};

  _each(staticNodeList, function (node: HTMLElement) {
    if (node.nodeType === 1) {
      const key = node.getAttribute('key');
      if (key) {
        maps[key] = node
      }
    }
  })

  _each(moves, function (move: any) {
    const index = move.index
    if (move.type === 0) { // remove item
      if (staticNodeList[index] === node.childNodes[index]) { // maybe have been removed for inserting
        node.removeChild(node.childNodes[index])
      }
      staticNodeList.splice(index, 1)
    } else if (move.type === 1) { // insert item
      var insertNode = maps[move.item.key]
        ? maps[move.item.key].cloneNode(true) // reuse old item
        : (typeof move.item === 'object')
            ? move.item.render()
            : document.createTextNode(move.item)
      staticNodeList.splice(index, 0, insertNode)
      node.insertBefore(insertNode, node.childNodes[index] || null)
    }
  })
}
