import {Element as VElement} from "./element";

export const _type = function (obj: VElement): string {
  return Object.prototype.toString.call(obj).replace(/\[object\s|\]/g, '')
}

export const _isString = function isString (list: VElement): boolean {
  return _type(list) === 'String'
}

export const _each = function each (array: any[], fn: (arr: any, index: number) => void): void {
  for (let i = 0, len = array.length; i < len; i++) {
    fn(array[i], i);
  }
}

export const _toArray = function toArray (listLike: NodeListOf<ChildNode>): ChildNode[] {
  if (!listLike) {
    return [];
  }

  const list = [];

  for (let i = 0, len = listLike.length; i < len; i++) {
    list.push(listLike[i]);
  }

  return list
}

export const _setAttr = function setAttr (node: HTMLElement, key: string, value: string): void {
  switch (key) {
    case 'style':
      node.style.cssText = value
      break
    case 'value':
      let tagName = node.tagName || ''
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
