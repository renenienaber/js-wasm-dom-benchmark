import { _setAttr } from "./util.js";
export class Element {
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
    render() {
        const el = document.createElement(this.tagName);
        const props = this.props;
        props.forEach((value, key) => {
            _setAttr(el, key, value);
        });
        for (let i = 0; i < this.children.length; i++) {
            const child = this.children[i];
            const childEl = (!child.isText())
                ? child.render()
                : document.createTextNode(child.text);
            el.appendChild(childEl);
        }
        return el;
    }
    isText() {
        return this.text !== '';
    }
    isEmpty() {
        return this.empty;
    }
}
export class TextVElement extends Element {
    constructor(text) {
        super('', new Map(), []);
        this.text = text;
    }
}
export class EmptyVElement extends Element {
    constructor() {
        super('', new Map(), []);
    }
}
