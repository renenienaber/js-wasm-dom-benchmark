import { _each, _isArray, _setAttr, _slice, _truthy } from "./util.js";
export class Element {
    constructor(tagName, props, children) {
        this.tagName = '';
        this.children = [];
        this.count = 0;
        if (!(this instanceof Element)) {
            if (!_isArray(children) && children != null) {
                children = _slice(arguments, 2).filter(_truthy);
            }
            return new Element(tagName, props, children);
        }
        if (_isArray(props)) {
            children = props;
            props = {};
        }
        this.tagName = tagName;
        this.props = props || {};
        this.children = children || [];
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
