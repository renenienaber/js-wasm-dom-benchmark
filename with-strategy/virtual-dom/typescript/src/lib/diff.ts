import {_each, _isString} from "./util";
import {Patch, PropsPatch, ReorderPatch, ReplacePatch, TextPatch} from "./patch";
import {Element as VElement, VElementChildType, PropsType} from "./element";
import {diff as listDiff} from "./list-diff2";



export function diff (oldTree: VElement, newTree: VElement): Patch[][] {
  const index: number = 0;
  const patches: Patch[][] = [];
  dfsWalk(oldTree, newTree, index, patches);
  return patches;
}

function dfsWalk (oldNode: VElement, newNode: VElement, index: number, patches: Patch[][]): void {
  const currentPatch: Patch[] = [];

  // Node is removed.
  if (newNode === null) {
    // Real DOM node will be removed when perform reordering, so has no needs to do anything in here
  // TextNode content replacing
  } else if (_isString(oldNode) && _isString(newNode)) {
    if (newNode !== oldNode) {
      currentPatch.push(new TextPatch(newNode))
    }
  // Nodes are the same, diff old node's props and children
  } else if (
      oldNode.tagName === newNode.tagName &&
      oldNode.key === newNode.key
    ) {
    // Diff props
    var propsPatches: PropsType = diffProps(oldNode, newNode);
    if (propsPatches.size > 0) {
      currentPatch.push(new PropsPatch(propsPatches))
    }
    // Diff children. If the node has a `ignore` property, do not diff children
    if (!isIgnoreChildren(newNode)) {
      diffChildren(
        oldNode.children,
        newNode.children,
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
    patches[index] = currentPatch
  }
}

function diffChildren(oldChildren: VElementChildType[], newChildren: (VElementChildType | null)[], index: number, patches: Patch[][], currentPatch: Patch[]): void {
  var diffs = listDiff(oldChildren, newChildren, 'key')
  newChildren = diffs.children

  if (diffs.moves.length) {
    var reorderPatch: ReorderPatch = new ReorderPatch(diffs.moves);
    currentPatch.push(reorderPatch)
  }

  var leftNode: VElement | null = null
  var currentNodeIndex = index
  _each(oldChildren, function (child: VElement, i: number) {
    var newChild = newChildren[i] as VElement;
    currentNodeIndex = (leftNode && leftNode.count)
      ? currentNodeIndex + leftNode.count + 1
      : currentNodeIndex + 1
    dfsWalk(child, newChild, currentNodeIndex, patches)
    leftNode = child
  })
}

function diffProps (oldNode: VElement, newNode: VElement): PropsType {
  var count: number = 0
  var oldProps: PropsType = oldNode.props
  var newProps: PropsType = newNode.props

  var propsPatches: PropsType = new Map<string, string>();

  // Find out different properties
  oldProps.forEach((value: string, key: string) => {
    if(newProps.has(key) && newProps.get(key) !== value) {
      count++;
      propsPatches.set(key, newProps.get(key) as string);
    }
  });

  // Find out new property
  newProps.forEach((value: string, key: string) => {
    if(oldProps.has(key)) {
      count++;
      propsPatches.set(key, newProps.get(key) as string);
    }
  });

  return propsPatches
}

function isIgnoreChildren (node: VElement): boolean {
  return (node.props && node.props.hasOwnProperty('ignore'))
}
