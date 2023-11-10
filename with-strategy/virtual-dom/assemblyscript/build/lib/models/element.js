export class VElement {
    constructor(tagName, props, children) {
        this.tagName = '';
        this.props = new Map();
        this.children = [];
        this.count = 0;
        this.text = '';
        this.empty = false;
        this.tagName = tagName;
        this.props = props;
        this.children = children;
        let count = 0;
        for (let i = 0; i < children.length; i++) {
            const child = children[i];
            if (!child.isText()) {
                count += child.count;
            }
            else {
                children[i].text = '' + child.text;
            }
            count++;
        }
        this.count = count;
    }
    isText() {
        return this.text !== '';
    }
    isEmpty() {
        return this.empty;
    }
}
export class TextVElement extends VElement {
    constructor(text) {
        super('', new Map(), []);
        this.text = text;
    }
}
export class EmptyVElement extends VElement {
    constructor() {
        super('', new Map(), []);
    }
}
export function toVisibleVElement(vElement) {
    return Object.assign(Object.assign({}, vElement), { props: _toVisiblePropsType(vElement.props), children: vElement.children.map(el => (toVisibleVElement(el))) });
}
export function toVElement(visibleVElement) {
    const newVElement = new VElement(visibleVElement.tagName, _toPropsType(visibleVElement.props), visibleVElement.children.map(el => (toVElement(el))));
    newVElement.text = visibleVElement.text;
    newVElement.empty = visibleVElement.empty;
    return newVElement;
}
function _toVisiblePropsType(propsType) {
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
function _toPropsType(visiblePropsType) {
    const newMap = new Map();
    const keys = visiblePropsType.keys;
    const values = visiblePropsType.values;
    for (let i = 0; i < keys.length; i++) {
        const key = keys[i];
        const value = values[i];
        newMap.set(key, value);
    }
    return newMap;
}
