import { _each } from "./util.js";
import { PropsPatch, ReorderPatch, ReplacePatch, TextPatch } from "./patch.js";
import { diff as listDiff } from "./list-diff2.js";
export function diff(oldTree, newTree) {
    const index = 0;
    const patches = [];
    dfsWalk(oldTree, newTree, index, patches);
    return patches;
}
function dfsWalk(oldNode, newNode, index, patches) {
    const currentPatch = [];
    if (newNode === null) {
    }
    else if (oldNode.isText() && newNode.isText()) {
        if (newNode.text !== oldNode.text) {
            currentPatch.push(new TextPatch(newNode));
        }
    }
    else if (oldNode.tagName === newNode.tagName) {
        var propsPatches = diffProps(oldNode, newNode);
        if (propsPatches.size > 0) {
            currentPatch.push(new PropsPatch(propsPatches));
        }
        if (!isIgnoreChildren(newNode)) {
            diffChildren(oldNode.children, newNode.children, index, patches, currentPatch);
        }
    }
    else {
        currentPatch.push(new ReplacePatch(newNode));
    }
    if (currentPatch.length) {
        patches[index] = currentPatch;
    }
}
function diffChildren(oldChildren, newChildren, index, patches, currentPatch) {
    var diffs = listDiff(oldChildren, newChildren);
    newChildren = diffs.children;
    if (diffs.moves.length) {
        var reorderPatch = new ReorderPatch(diffs.moves);
        currentPatch.push(reorderPatch);
    }
    var leftNode = null;
    var currentNodeIndex = index;
    _each(oldChildren, function (child, i) {
        var newChild = newChildren[i];
        currentNodeIndex = (leftNode && leftNode.count)
            ? currentNodeIndex + leftNode.count + 1
            : currentNodeIndex + 1;
        dfsWalk(child, newChild, currentNodeIndex, patches);
        leftNode = child;
    });
}
function diffProps(oldNode, newNode) {
    var count = 0;
    var oldProps = oldNode.props;
    var newProps = newNode.props;
    var propsPatches = new Map();
    oldProps.forEach((value, key) => {
        if (newProps.has(key) && newProps.get(key) !== value) {
            count++;
            propsPatches.set(key, newProps.get(key));
        }
    });
    newProps.forEach((value, key) => {
        if (oldProps.has(key)) {
            count++;
            propsPatches.set(key, newProps.get(key));
        }
    });
    return propsPatches;
}
function isIgnoreChildren(node) {
    return (node.props && node.props.hasOwnProperty('ignore'));
}
