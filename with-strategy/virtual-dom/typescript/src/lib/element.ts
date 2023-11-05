import {_each, _setAttr} from "./util";

export type PropsType = Map<string, string>;

export class Element {
  tagName: string = '';
  props: PropsType = new Map<string, string>();
  children: (Element | string)[] = [];
  key: string | null = null;
  count: number = 0;

  constructor(tagName: string, props: PropsType, children: (Element|string)[]) {
    this.tagName = tagName;
    this.props = props;
    this.children = children;
    if(props.has('key')) {
      this.key = this.props.get('key') || null;
    }

    let count = 0;

    _each(this.children, (child: Element | string, i: number): void => {
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

    props.forEach((value: string, key: string) => {
      _setAttr(el, key, value);
    });

    _each(this.children, (child: Element | string): void => {
      const childEl = (child instanceof Element)
          ? child.render()
          : document.createTextNode(child);
      el.appendChild(childEl);
    })

    return el;
  }
}
