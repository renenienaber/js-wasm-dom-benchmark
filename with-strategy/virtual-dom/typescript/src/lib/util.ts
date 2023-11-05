export const _type = function (obj: any) {
  return Object.prototype.toString.call(obj).replace(/\[object\s|\]/g, '')
}

// export const _isArray = function isArray (list: any) {
//   return _type(list) === 'Array'
// }
//
// export const _slice = function slice (arrayLike: any, index: number) {
//   return Array.prototype.slice.call(arrayLike, index)
// }
//
// export const _truthy = function truthy (value: any) {
//   return !!value
// }

export const _isString = function isString (list: any) {
  return _type(list) === 'String'
}

export const _each = function each (array: any[], fn: (arr: any, index: number) => void) {
  for (let i = 0, len = array.length; i < len; i++) {
    fn(array[i], i);
  }
}

export const _toArray = function toArray (listLike: any) {
  if (!listLike) {
    return [];
  }

  const list = [];

  for (let i = 0, len = listLike.length; i < len; i++) {
    list.push(listLike[i]);
  }

  return list
}

export const _setAttr = function setAttr (node: any, key: any, value: any) {
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
        node.value = value
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
