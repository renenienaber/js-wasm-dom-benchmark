import {_setAttr} from "./util";
import {Element as VElement, PropsType, VElementChildType} from "./element";
import {Move} from "./list-diff2";



export enum PatchType {
  REPLACE, // node
  REORDER, // moves
  PROPS, // props
  TEXT // content
}

export interface Patch {
  type: PatchType;
}

export class ReplacePatch implements Patch {
  type: PatchType = PatchType.REPLACE;
  node: VElementChildType;

  constructor(vElement: VElementChildType) {
    this.node = vElement;
  }
}

export class ReorderPatch implements Patch {
  type: PatchType = PatchType.REORDER;
  moves: Move[];

  constructor(moves: Move[]) {
    this.moves = moves;
  }
}

export class PropsPatch implements Patch {
  type: PatchType = PatchType.PROPS;
  props: PropsType;

  constructor(props: PropsType) {
    this.props = props;
  }
}

export class TextPatch implements Patch {
  type: PatchType = PatchType.TEXT;
  content: VElementChildType;

  constructor(vElement: VElementChildType) {
    this.content = vElement;
  }
}

export interface Walker {
  index: number;
}

export function patch (node: Node, patches: Patch[][]): void {
  const walker: Walker = {index: 0};
  dfsWalk(node, walker, patches);
}

export function dfsWalk (node: Node, walker: Walker, patches: Patch[][]): void {
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

export function applyPatches (node: Node, currentPatches: Patch[]): void {
  for (let i = 0; i < currentPatches.length; i++) {
    const currentPatch = currentPatches[i];
    switch (currentPatch.type) {
      case PatchType.REPLACE:
        const newNode = ((currentPatch as ReplacePatch).node.isText())
            ? document.createTextNode((currentPatch as ReplacePatch).node.text)
            : ((currentPatch as ReplacePatch).node as VElement).render();
        node.parentNode?.replaceChild(newNode, node);
        break;
      case PatchType.REORDER:
        reorderChildren(node as HTMLElement, (currentPatch as ReorderPatch).moves)
        break;
      case PatchType.PROPS:
        setProps(node as HTMLElement, (currentPatch as PropsPatch).props)
        break;
      case PatchType.TEXT:
        if (node.textContent) {
          node.textContent = (currentPatch as TextPatch).content.text
        } else {
          node.nodeValue = (currentPatch as TextPatch).content.text
        }
        break;
      default:
        throw new Error('Unknown patch type ' + currentPatch.type)
    }
  }
}

export function setProps (node: HTMLElement, props: PropsType): void {
  props.forEach((value, key, map) => {
    if (!props.has(key)) {
      node.removeAttribute(key);
    } else {
      _setAttr(node, key, value);
    }
  });
}

export function reorderChildren (node: HTMLElement, moves: Move[]): void {
  const staticNodeList: ChildNode[] = [];
  if(node.childNodes) {
    for (let i = 0; i < node.childNodes.length; i++) {
      staticNodeList.push(node.childNodes[i]);
    }
  }

  let maps: any = {};

  for (let i = 0; i < staticNodeList.length; i++) {
    const node: HTMLElement = staticNodeList[i] as HTMLElement;
    if (node.nodeType === 1) {
      const key = node.getAttribute('key');
      if (key) {
        maps[key] = node
      }
    }
  }

  for (let i = 0; i < moves.length; i++) {
    const move: any = moves[i];
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
  }
}
