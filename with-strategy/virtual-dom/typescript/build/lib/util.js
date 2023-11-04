export const _type = function (obj) {
    return obj.toString().replace(/\[object\s|\]/g, '');
};
export const _isString = function isString(list) {
    return _type(list) === 'String';
};
export const _each = function each(array, fn) {
    for (let i = 0, len = array.length; i < len; i++) {
        fn(array[i], i);
    }
};
export const _toArray = function toArray(listLike) {
    if (!listLike) {
        return [];
    }
    const list = [];
    for (let i = 0, len = listLike.length; i < len; i++) {
        list.push(listLike[i]);
    }
    return list;
};
export const _setAttr = function setAttr(node, key, value) {
    switch (key) {
        case 'style':
            node.style.cssText = value;
            break;
        case 'value':
            let tagName = node.tagName || '';
            tagName = tagName.toLowerCase();
            if (tagName === 'input' || tagName === 'textarea') {
                node.value = value;
            }
            else {
                node.setAttribute(key, value);
            }
            break;
        default:
            node.setAttribute(key, value);
            break;
    }
};
