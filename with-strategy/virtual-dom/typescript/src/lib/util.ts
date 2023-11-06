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
