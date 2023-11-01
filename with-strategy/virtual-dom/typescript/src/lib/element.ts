import {_each, _isArray, _setAttr, _slice, _truthy} from "./util";

export class Element {
  tagName: string = '';
  props: any;
  children: (Element|string)[] = [];
  key: any;
  count: number = 0;

  constructor(tagName: string, props: any, children: (Element|string)[]) {
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

    _each(this.children, function (child: any, i: number) {
      if (child instanceof Element) {
        count += child.count
      } else {
        children[i] = '' + child
      }
      count++
    })

    this.count = count;
  }

  render(): HTMLElement {
    const el = document.createElement(this.tagName);
    const props = this.props;

    for (const propName in props) {
      const propValue = props[propName];
      _setAttr(el, propName, propValue);
    }

    _each(this.children, function (child: any) {
      const childEl = (child instanceof Element)
          ? child.render()
          : document.createTextNode(child);
      el.appendChild(childEl);
    })

    return el;
  }
}
