import {CopiedPropsType, CopiedVElement} from "../models/v-element.copied.model";
import {EmptyVElement, PropsType, VElement} from "../models/v-element.model";

export function toVElement(copiedVElement: CopiedVElement): VElement {
    const vElement: VElement = new EmptyVElement();

    vElement.tagName = copiedVElement.tagName;

    const props: CopiedPropsType = copiedVElement.props;
    const newProps: PropsType = _toPropsType(props);
    vElement.props = newProps;

    const children: CopiedVElement[] = copiedVElement.children;
    const lenChildren: i32 = children.length;
    const newChildren: VElement[] = new Array<VElement>(lenChildren);
    for (let i: i32 = 0; i < lenChildren; i++) {
        const child: CopiedVElement = children[i];
        const childVElement: VElement = toVElement(child);
        newChildren[i] = childVElement;
    }
    vElement.children = newChildren;

    vElement.count = copiedVElement.count;
    vElement.text = copiedVElement.text;
    vElement.empty = copiedVElement.empty;

    return vElement;
}

export function toCopiedVElement(vElement: VElement): CopiedVElement {
    const copiedVElement: CopiedVElement = {
        tagName: vElement.tagName,
        props: toCopiedPropsType(vElement.props),
        children: [],
        count: vElement.count,
        text: vElement.text,
        empty: vElement.empty
    };

    const children: VElement[] = vElement.children;
    const lenChildren: i32 = children.length;
    const newChildren: CopiedVElement[] = new Array<CopiedVElement>(lenChildren);
    for (let i: i32 = 0; i < lenChildren; i++) {
        const child: VElement = children[i];
        const childVElement: CopiedVElement = toCopiedVElement(child);
        newChildren[i] = childVElement;
    }
    copiedVElement.children = newChildren;

    return copiedVElement;
}

function _toPropsType(copiedPropsType: CopiedPropsType): PropsType {
    const keys: string[] = copiedPropsType.keys;
    const values: string[] = copiedPropsType.values;
    const lenKeys: i32 = keys.length;

    const newMap: PropsType = new Map<string, string>();
    for (let i: i32 = 0; i < lenKeys; i++) {
        const key = keys[i];
        const value = values[i];
        newMap.set(key, value);
    }

    return newMap;
}

export function toCopiedPropsType(propsType: PropsType): CopiedPropsType {
    const keys = propsType.keys();
    const values = propsType.values();

    const newPropsType: CopiedPropsType = {
        keys: keys,
        values: values
    };

    return newPropsType
}