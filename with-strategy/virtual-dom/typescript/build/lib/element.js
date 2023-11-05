import { _each, _setAttr } from "./util.js";
export class Element {
    constructor(tagName, props, children) {
        this.tagName = '';
        this.props = {};
        this.children = [];
        this.count = 0;
        this.tagName = tagName;
        this.props = props;
        this.children = children;
        this.key = props
            ? props.key
            : void 666;
        let count = 0;
        _each(this.children, function (child, i) {
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
        for (const propName in props) {
            const propValue = props[propName];
            _setAttr(el, propName, propValue);
        }
        _each(this.children, function (child) {
            const childEl = (child instanceof Element)
                ? child.render()
                : document.createTextNode(child);
            el.appendChild(childEl);
        });
        return el;
    }
}
