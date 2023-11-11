import {Patch, PropsPatch, ReorderPatch, ReplacePatch, TextPatch} from "./models/patch.model";
import {VElement, VElementChildType, PropsType, EmptyVElement} from "./models/v-element.model";
import {diff as listDiff} from "./list-diff2";
import {DiffResult} from "./models/list-diff2.model";



export function diff (oldTree: VElement, newTree: VElement): (Patch[] | null)[] {
  const index: i32 = 0;
  const patches: (Patch[] | null)[] = [];
  dfsWalk(oldTree, newTree, index, patches);
  return patches;
}

function dfsWalk (oldNode: VElement, newNode: VElement | null, index: i32, patches: (Patch[] | null)[]): void {
  const currentPatch: Patch[] = [];

  // Node is removed.
  if (newNode === null) {
    // Real DOM node will be removed when perform reordering, so has no needs to do anything in here
  // TextNode content replacing
  } else if (oldNode.isText() && newNode.isText()) {
    if (newNode.text !== oldNode.text) {
      currentPatch.push(new TextPatch(newNode));
    }
  // Nodes are the same, diff old node's props and children
  } else if (
      oldNode.tagName === newNode.tagName
    ) {
    // Diff props
    const propsPatches: PropsType = diffProps(oldNode, newNode);
    if (propsPatches.size > 0) {
      currentPatch.push(new PropsPatch(propsPatches))
    }
    // Diff children. If the node has a `ignore` property, do not diff children
    const newNodeChildren : VElement[] = newNode.children;
    const lenNewNodeChildren: i32 = newNodeChildren.length;
    const testNewChildren: (VElement | null)[] = new Array<VElement | null>(lenNewNodeChildren);
    for (let i: i32 = 0; i < newNodeChildren.length; i++) {
      const val = newNodeChildren[i];
      testNewChildren[i] = val;
    }

    if (!isIgnoreChildren(newNode)) {
      diffChildren(
        oldNode.children,
        testNewChildren,
        index,
        patches,
        currentPatch
      )
    }
  // Nodes are not the same, replace the old node with new node
  } else {
    currentPatch.push(new ReplacePatch(newNode))
  }

  if (currentPatch.length) {
    patches[index] = currentPatch;
  } else {
    patches[index] = null;
  }
}

function diffChildren(oldChildren: VElementChildType[], newChildren: (VElementChildType | null)[], index: i32, patches: (Patch[] | null)[], currentPatch: Patch[]): void {
  const diffs: DiffResult = listDiff(oldChildren, newChildren)
  newChildren = diffs.children

  if (diffs.moves.length) {
    const reorderPatch: ReorderPatch = new ReorderPatch(diffs.moves);
    currentPatch.push(reorderPatch)
  }

  let leftNode: VElement = new EmptyVElement();
  let currentNodeIndex: i32 = index;

  for (let i: i32 = 0; i < oldChildren.length; i++) {
    const child: VElement = oldChildren[i];
    const newChild: VElement | null = newChildren[i];
    currentNodeIndex = (!leftNode.isEmpty() && leftNode.count)
        ? currentNodeIndex + leftNode.count + 1
        : currentNodeIndex + 1
    dfsWalk(child, newChild, currentNodeIndex, patches)
    leftNode = child
  }
}

function diffProps (oldNode: VElement, newNode: VElement): PropsType {
  let count: i32 = 0
  const oldProps: PropsType = oldNode.props
  const newProps: PropsType = newNode.props

  const propsPatches: PropsType = new Map<string, string>();

  // Find out different properties
  const oldPropsKeys = oldProps.keys();
  for (let i: i32 = 0; i < oldPropsKeys.length; i++) {
    const key: string = oldPropsKeys[i];
    const value: string = oldProps.get(key);

    if(newProps.has(key) && newProps.get(key) !== value) {
      count++;
      propsPatches.set(key, newProps.get(key));
    }
  }

  // Find out new property
  const newPropsKeys = newProps.keys();
  for (let i: i32 = 0; i < newPropsKeys.length; i++) {
    const key: string = newPropsKeys[i];

    if(oldProps.has(key)) {
      count++;
      propsPatches.set(key, newProps.get(key));
    }
  }

  return propsPatches
}

function isIgnoreChildren (node: VElement): boolean {
  return (node.props && !!node.props.has('ignore'));
}
