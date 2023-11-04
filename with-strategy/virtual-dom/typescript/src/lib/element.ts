import {_each, _setAttr} from "./util";

export type PropsType = Map<string, string>;

export class Element {
  tagName: string = '';
  props: PropsType = new Map<string, string>();
  children: Element[] = [];
  text: string = '' // NEW
  key: string | null = null;
  count: number = 0;

  constructor(tagName: string, props: PropsType, children: Element[]) {
    this.tagName = tagName;
    this.props = props
    this.children = children
    if(props.has('key')) {
      this.key = props.get('key') as string;
    }

    let count = 0;

    _each(this.children, (child: Element, i: number): void => {
      if (child.text !== '') {
        count += child.count
      }
      count++
    });

    this.count = count;
  }

  isTextNode(): boolean {
    return this.text !== '';
  }

  render(): HTMLElement {
    const el = document.createElement(this.tagName);
    const props = this.props;

    // for (const propName in props) {
    //   const propValue = props[propName];
    //   _setAttr(el, propName, propValue);
    // }
    props.forEach((value: string, key: string) => {
      _setAttr(el, key, value);
    });

    _each(this.children, (child: Element): void => {
      const childEl = (!child.isTextNode())
          ? child.render()
          : document.createTextNode(child.text);
      el.appendChild(childEl);
    })

    return el;
  }
}

export class TextElement extends Element {
  constructor(text: string) {
    super('', new Map<string, string>(), []);
    this.text = text;
  }
}