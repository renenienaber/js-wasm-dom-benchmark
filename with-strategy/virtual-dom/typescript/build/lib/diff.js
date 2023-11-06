import { PropsPatch, ReorderPatch, ReplacePatch, TextPatch } from "./models/patch.model.js";
import { EmptyVElement } from "./models/element.js";
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
        const propsPatches = diffProps(oldNode, newNode);
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
    const diffs = listDiff(oldChildren, newChildren);
    newChildren = diffs.children;
    if (diffs.moves.length) {
        const reorderPatch = new ReorderPatch(diffs.moves);
        currentPatch.push(reorderPatch);
    }
    let leftNode = new EmptyVElement();
    let currentNodeIndex = index;
    for (let i = 0; i < oldChildren.length; i++) {
        const child = oldChildren[i];
        const newChild = newChildren[i];
        currentNodeIndex = (!leftNode.isEmpty() && leftNode.count)
            ? currentNodeIndex + leftNode.count + 1
            : currentNodeIndex + 1;
        dfsWalk(child, newChild, currentNodeIndex, patches);
        leftNode = child;
    }
}
function diffProps(oldNode, newNode) {
    let count = 0;
    const oldProps = oldNode.props;
    const newProps = newNode.props;
    const propsPatches = new Map();
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
