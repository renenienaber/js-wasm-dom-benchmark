import {VElement, PropsType} from "./models/v-element.model";
import {Patch, PatchType, PropsPatch, ReorderPatch, ReplacePatch, TextPatch, Walker} from "./models/patch.model";
import {Move} from "./models/list-diff2.model";



export function patch (node: Node, patches: Patch[][]): void {
  const walker: Walker = {index: 0};
  dfsWalk(node, walker, patches);
}

export function dfsWalk (node: Node, walker: Walker, patches: Patch[][]): void {
  const currentPatches: Patch[] = patches[walker.index];

  const len: number = node.childNodes
    ? node.childNodes.length
    : 0
  for (let i: number = 0; i < len; i++) {
    const child: ChildNode = node.childNodes[i]
    walker.index++
    dfsWalk(child, walker, patches)
  }

  if (currentPatches) {
    applyPatches(node, currentPatches);
  }
}

export function applyPatches (node: Node, currentPatches: Patch[]): void {
  for (let i: number = 0; i < currentPatches.length; i++) {
    const currentPatch: Patch = currentPatches[i];
    switch (currentPatch.type) {
      case PatchType.REPLACE:
        const newNode: HTMLElement | Text = ((currentPatch as ReplacePatch).node.isText())
            ? document.createTextNode((currentPatch as ReplacePatch).node.text)
            : renderVElement((currentPatch as ReplacePatch).node);
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
    for (let i: number = 0; i < node.childNodes.length; i++) {
      staticNodeList.push(node.childNodes[i]);
    }
  }

  const maps: Map<string, HTMLElement> = new Map<string, HTMLElement>();

  for (let i: number = 0; i < staticNodeList.length; i++) {
    const node: HTMLElement = staticNodeList[i] as HTMLElement;
    if (node.nodeType === 1) {
      const key: string | null = node.getAttribute('key');
      if (key) {
        maps.set(key, node);
      }
    }
  }

  for (let i: number = 0; i < moves.length; i++) {
    const move: Move = moves[i];
    const index: number = move.index
    if (move.type === 0) { // remove item
      if (staticNodeList[index] === node.childNodes[index]) { // maybe have been removed for inserting
        node.removeChild(node.childNodes[index])
      }
      staticNodeList.splice(index, 1)
    } else if (move.type === 1) { // insert item
      const insertNode: HTMLElement = renderVElement(move.item);
      staticNodeList.splice(index, 0, insertNode as ChildNode)
      node.insertBefore(insertNode, node.childNodes[index] || null)
    }
  }
}

export function renderVElement(element: VElement): HTMLElement {
  const el: HTMLElement = document.createElement(element.tagName);
  const props: PropsType = element.props;

  props.forEach((value: string, key: string) => {
    _setAttr(el, key, value);
  });

  for (let i: number = 0; i < element.children.length; i++) {
    const child: VElement = element.children[i];
    const childEl: HTMLElement | Text = (!child.isText())
        ? renderVElement(child)
        : document.createTextNode(child.text);
    el.appendChild(childEl);
  }

  return el;
}

function _setAttr (node: HTMLElement, key: string, value: string): void {
  switch (key) {
    case 'style':
      node.style.cssText = value
      break
    case 'value':
      let tagName: string = node.tagName || ''
      tagName = tagName.toLowerCase()
      if (
          tagName === 'input' || tagName === 'textarea'
      ) {
        (node as (HTMLInputElement | HTMLTextAreaElement)).value = value
      } else {
        // if it is not a input or textarea, use `setAttribute` to set
        node.setAttribute(key, value)
      }
      break
    default:
      node.setAttribute(key, value)
      break
  }
}