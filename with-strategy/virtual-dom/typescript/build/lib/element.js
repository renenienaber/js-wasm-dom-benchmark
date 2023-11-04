import { _each, _setAttr } from "./util.js";
export class Element {
    constructor(tagName, props, children) {
        this.tagName = '';
        this.props = new Map();
        this.children = [];
        this.text = '';
        this.key = null;
        this.count = 0;
        this.tagName = tagName;
        this.props = props;
        this.children = children;
        if (props.has('key')) {
            this.key = props.get('key');
        }
        let count = 0;
        _each(this.children, (child, i) => {
            if (child.text !== '') {
                count += child.count;
            }
            count++;
        });
        this.count = count;
    }
    isTextNode() {
        return this.text !== '';
    }
    render() {
        const el = document.createElement(this.tagName);
        const props = this.props;
        props.forEach((value, key) => {
            _setAttr(el, key, value);
        });
        _each(this.children, (child) => {
            const childEl = (!child.isTextNode())
                ? child.render()
                : document.createTextNode(child.text);
            el.appendChild(childEl);
        });
        return el;
    }
}
export class TextElement extends Element {
    constructor(text) {
        super('', new Map(), []);
        this.text = text;
    }
}
