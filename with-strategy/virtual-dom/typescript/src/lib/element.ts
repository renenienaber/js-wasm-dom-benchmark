import {_each, _setAttr} from "./util";

export class Element {
  tagName: string = '';
  props: {[key: string]: string} = {};
  children: (Element|string)[] = [];
  key: any;
  count: number = 0;

  constructor(tagName: string, props: {[key: string]: string}, children: (Element|string)[]) {
    this.tagName = tagName;
    this.props = props //|| {};
    this.children = children //|| [];
    this.key = props
        ? props.key
        : void 666;

    let count = 0;

    _each(this.children, function (child: Element | string, i: number) {
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

    _each(this.children, function (child: Element | string) {
      const childEl = (child instanceof Element)
          ? child.render()
          : document.createTextNode(child);
      el.appendChild(childEl);
    })

    return el;
  }
}
