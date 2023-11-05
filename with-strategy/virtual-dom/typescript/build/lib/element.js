import { _each, _setAttr } from "./util.js";
export class Element {
    constructor(tagName, props, children) {
        this.tagName = '';
        this.props = new Map();
        this.children = [];
        this.key = null;
        this.count = 0;
        this.tagName = tagName;
        this.props = props;
        this.children = children;
        if (props.has('key')) {
            this.key = this.props.get('key') || null;
        }
        let count = 0;
        _each(this.children, (child, i) => {
            if (child instanceof Element) {
                count += child.count;
            }
            else {
                children[i] = '' + child;
            }
            count++;
        });
        this.count = count;
    }
    render() {
        const el = document.createElement(this.tagName);
        const props = this.props;
        props.forEach((value, key) => {
            _setAttr(el, key, value);
        });
        _each(this.children, (child) => {
            const childEl = (child instanceof Element)
                ? child.render()
                : document.createTextNode(child);
            el.appendChild(childEl);
        });
        return el;
    }
}
