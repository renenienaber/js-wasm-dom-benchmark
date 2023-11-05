import {_each, _isString} from "./util";
import {Patch, PatchType, PropsPatch, ReplacePatch, TextPatch} from "./patch";
import {Element} from "./element";
import {diff as listDiff} from "./list-diff2";



export function diff (oldTree: Element, newTree: Element) {
  const index = 0;
  const patches: Patch[][] = [];
  dfsWalk(oldTree, newTree, index, patches);
  return patches;
}

function dfsWalk (oldNode: Element, newNode: Element, index: number, patches: Patch[][]) {
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
    var propsPatches = diffProps(oldNode, newNode)
    if (propsPatches) {
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

function diffChildren(oldChildren: (Element|string)[], newChildren: (Element|string)[], index: number, patches: Patch[][], currentPatch: Patch[]) {
  var diffs = listDiff(oldChildren, newChildren, 'key')
  newChildren = diffs.children

  if (diffs.moves.length) {
    var reorderPatch = { type: PatchType.REORDER, moves: diffs.moves }
    currentPatch.push(reorderPatch)
  }

  var leftNode: any = null
  var currentNodeIndex = index
  _each(oldChildren, function (child: Element, i: number) {
    var newChild = newChildren[i] as Element;
    currentNodeIndex = (leftNode && leftNode.count)
      ? currentNodeIndex + leftNode.count + 1
      : currentNodeIndex + 1
    dfsWalk(child, newChild, currentNodeIndex, patches)
    leftNode = child
  })
}

function diffProps (oldNode: Element, newNode: Element): {[key: string]: string} | null {
  var count = 0
  var oldProps = oldNode.props
  var newProps = newNode.props

  var key, value
  var propsPatches: any = {}

  // Find out different properties
  for (key in oldProps) {
    value = oldProps[key]
    if (newProps[key] !== value) {
      count++
      propsPatches[key] = newProps[key]
    }
  }

  // Find out new property
  for (key in newProps) {
    value = newProps[key]
    if (!oldProps.hasOwnProperty(key)) {
      count++
      propsPatches[key] = newProps[key]
    }
  }

  // If properties all are identical
  if (count === 0) {
    return null
  }

  return propsPatches
}

function isIgnoreChildren (node: Element): boolean {
  return (node.props && node.props.hasOwnProperty('ignore'))
}
