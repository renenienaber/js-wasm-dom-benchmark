export type PropsType = Map<string, string>;
export type VElementChildType = Element;

export class Element {
  tagName: string = '';
  props: PropsType = new Map<string, string>();
  children: VElementChildType[] = [];
  count: number = 0;

  text: string = '';
  empty: boolean = false;

  constructor(tagName: string, props: PropsType, children: VElementChildType[]) {
    this.tagName = tagName;
    this.props = props;
    this.children = children;

    let count = 0;
    for (let i = 0; i < children.length; i++) {
      const child = children[i];
      if (!child.isText()) {
        count += child.count
      } else {
        children[i].text = '' + child.text
      }
      count++
    }
    this.count = count;
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