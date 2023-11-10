export type PropsType = Map<string, string>;
export type VElementChildType = VElement;

export class VElement {
  tagName: string = '';
  props: PropsType = new Map<string, string>();
  children: VElementChildType[] = [];
  count: i32 = 0;

  text: string = '';
  empty: boolean = false;

  constructor(tagName: string, props: PropsType, children: VElementChildType[]) {
    this.tagName = tagName;
    this.props = props;
    this.children = children;

    let count: i32 = 0;
    for (let i: i32 = 0; i < children.length; i++) {
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

export class VisibleVElement {
  // @ts-ignore
  tagName: string;
  // @ts-ignore
  props: VisiblePropsType;
  // @ts-ignore
  children: VisibleVElement[];
  // @ts-ignore
  count: i32;
  // @ts-ignore
  text: string;
  // @ts-ignore
  empty: boolean;
}

export class VisiblePropsType {
  // @ts-ignore
  keys: string[];
  // @ts-ignore
  values: string[];
}

export function toVElement(visibleElement: VisibleVElement): VElement  {
  const vElement: VElement = new EmptyVElement();

  vElement.tagName = visibleElement.tagName;

  const props: VisiblePropsType = visibleElement.props;
  const newProps: PropsType = _toPropsType(props);
  vElement.props = newProps;

  const children: VisibleVElement[] = visibleElement.children;
  const lenChildren: i32 = children.length;
  const newChildren: VElement[] = new Array<VElement>(lenChildren);
  for (let i: i32 = 0; i < lenChildren; i++) {
    const child: VisibleVElement = children[i];
    const childVElement: VElement = toVElement(child);
    newChildren[i] = childVElement;
  }
  vElement.children = newChildren;

  vElement.count = visibleElement.count;
  vElement.text = visibleElement.text;
  vElement.empty = visibleElement.empty;

  return vElement;
}

export function toVisibleVElement(vElement: VElement): VisibleVElement {
  const visibleElement: VisibleVElement = {
    tagName: vElement.tagName,
    props: _toVisiblePropsType(vElement.props),
    children: [],
    count: vElement.count,
    text: vElement.text,
    empty: vElement.empty
  };

  const children: VElement[] = vElement.children;
  const lenChildren: i32 = children.length;
  const newChildren: VisibleVElement[] = new Array<VisibleVElement>(lenChildren);
  for (let i: i32 = 0; i < lenChildren; i++) {
    const child: VElement = children[i];
    const childVElement: VisibleVElement = toVisibleVElement(child);
    newChildren[i] = childVElement;
  }
  visibleElement.children = newChildren;

  return visibleElement;
}

function _toPropsType(visiblePropsType: VisiblePropsType): PropsType {
  const keys: string[] = visiblePropsType.keys;
  const values: string[] = visiblePropsType.values;
  const lenKeys: i32 = keys.length;

  const newMap: PropsType = new Map<string, string>();
  for (let i: i32 = 0; i < lenKeys; i++) {
    const key = keys[i];
    const value = values[i];
    newMap.set(key, value);
  }

  return newMap;
}

function _toVisiblePropsType(propsType: PropsType): VisiblePropsType {
  const keys = propsType.keys();
  const values = propsType.values();

  const newPropsType: VisiblePropsType = {
    keys: keys,
    values: values
  }

  return newPropsType
}