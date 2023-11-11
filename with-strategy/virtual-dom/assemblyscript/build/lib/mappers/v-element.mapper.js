import { VElement } from "../models/v-element.model.js";
export function toCopiedVElement(vElement) {
    return Object.assign(Object.assign({}, vElement), { props: _toCopiedPropsType(vElement.props), children: vElement.children.map(el => (toCopiedVElement(el))) });
}
export function toVElement(copiedVElement) {
    const newVElement = new VElement(copiedVElement.tagName, toPropsType(copiedVElement.props), copiedVElement.children.map(el => (toVElement(el))));
    newVElement.text = copiedVElement.text;
    newVElement.empty = copiedVElement.empty;
    return newVElement;
}
function _toCopiedPropsType(propsType) {
    const keys = [];
    const values = [];
    for (let [key, value] of propsType) {
        keys.push(key);
        values.push(value);
    }
    return {
        keys,
        values
    };
}
export function toPropsType(copiedPropsType) {
    const newMap = new Map();
    const keys = copiedPropsType.keys;
    const values = copiedPropsType.values;
    for (let i = 0; i < keys.length; i++) {
        const key = keys[i];
        const value = values[i];
        newMap.set(key, value);
    }
    return newMap;
}
