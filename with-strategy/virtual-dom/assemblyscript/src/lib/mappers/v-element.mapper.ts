import {PropsType, VElement} from "../models/v-element.model";
import {CopiedPropsType, CopiedVElement} from "../models/v-element.copied.model";

export function toCopiedVElement(vElement: VElement): CopiedVElement {
    return {
        ...vElement,
        props: _toCopiedPropsType(vElement.props),
        children: vElement.children.map(el => (toCopiedVElement(el)))
    }
}

export function toVElement(copiedVElement: CopiedVElement): VElement {
    const newVElement: VElement = new VElement(
        copiedVElement.tagName,
        toPropsType(copiedVElement.props),
        copiedVElement.children.map(el => (toVElement(el)))
    );
    newVElement.text = copiedVElement.text;
    newVElement.empty = copiedVElement.empty;

    return newVElement;
}

function _toCopiedPropsType(propsType: PropsType): CopiedPropsType {
    const keys: string[] = [];
    const values: string[] = [];
    for (let [key, value] of propsType) {
        keys.push(key);
        values.push(value);
    }

    return {
        keys,
        values
    }
}

export function toPropsType(copiedPropsType: CopiedPropsType): PropsType {
    const newMap: PropsType = new Map<string, string>()
    const keys: string[] = copiedPropsType.keys;
    const values: string[] = copiedPropsType.values;
    for (let i = 0; i < keys.length; i++) {
        const key = keys[i];
        const value = values[i];
        newMap.set(key, value);
    }

    return newMap;
}