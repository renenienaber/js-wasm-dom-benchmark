import {_each, _setAttr} from "./util";



export type PropsType = Map<string, string>;
export type VElementChildType = Element;

export class Element {
  tagName: string = '';
  props: PropsType = new Map<string, string>();
  children: VElementChildType[] = [];
  key: string | null = null;
  count: number = 0;

  text: string = '';
  empty: boolean = false;

  constructor(tagName: string, props: PropsType, children: VElementChildType[]) {
    this.tagName = tagName;
    this.props = props;
    this.children = children;
    if(props.has('key')) {
      this.key = this.props.get('key') || null;
    }

    let count = 0;

    _each(this.children, (child: VElementChildType, i: number): void => {
      if (!child.isText()) {
        count += child.count
      } else {
        children[i].text = '' + child.text
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

    _each(this.children, (child: VElementChildType): void => {
      const childEl = (!child.isText())
          ? child.render()
          : document.createTextNode(child.text);
      el.appendChild(childEl);
    })

    return el;
  }

  isText(): boolean {
    return this.text !== '';
  }

  isEmpty(): boolean {
    return this.empty;
  }
}

export class TextVElement extends Element {
  constructor(text: string) {
    super('', new Map<string, string>(), []);
    this.text = text;
  }
}

export class EmptyVElement extends Element {
  constructor() {
    super('', new Map<string, string>(), []);
  }
}