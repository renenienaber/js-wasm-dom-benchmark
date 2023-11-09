export type PropsType = Map<string, string>;
export type VElementChildType = VElement;

export class VElement {
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

    let count: number = 0;
    for (let i: number = 0; i < children.length; i++) {
      const child: VElement = children[i];
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

export class TextVElement extends VElement {
  constructor(text: string) {
    super('', new Map<string, string>(), []);
    this.text = text;
  }
}

export class EmptyVElement extends VElement {
  constructor() {
    super('', new Map<string, string>(), []);
  }
}

export interface VisibleVElement {
  tagName: string;
  props: VisiblePropsType;
  children: VisibleVElement[];
  count: number;
  text: string;
  empty: boolean;
}

export interface VisiblePropsType {
  keys: string[];
  values: string[];
}

export function toVisibleVElement(vElement: VElement): VisibleVElement {
  return {
    ...vElement,
    props: _toVisiblePropsType(vElement.props),
    children: vElement.children.map(el => (toVisibleVElement(el)))
  }
}

export function toVElement(visibleVElement: VisibleVElement): VElement {
  const newVElement: VElement = new EmptyVElement();
  newVElement.tagName = visibleVElement.tagName;
  newVElement.props = _toPropsType(visibleVElement.props);
  newVElement.children = visibleVElement.children.map(el => (toVElement(el)));
  newVElement.count = visibleVElement.count;
  newVElement.text = visibleVElement.text;
  newVElement.empty = visibleVElement.empty;

  return newVElement;
}

function _toVisiblePropsType(propsType: PropsType): VisiblePropsType {
  const keys: string[] = [];
  const values: string[] = [];
  for (let [key, value] of propsType) {
    keys.push(key);
    values.push(value);
  }

  return {
    keys,
    values
  }
}

function _toPropsType(visiblePropsType: VisiblePropsType): PropsType {
  const newMap: PropsType = new Map<string, string>()
  const keys: string[] = visiblePropsType.keys;
  const values: string[] = visiblePropsType.values;
  for (let i = 0; i < keys.length; i++) {
    const key = keys[i];
    const value = values[i];
    newMap.set(key, value);
  }

  return newMap;
}