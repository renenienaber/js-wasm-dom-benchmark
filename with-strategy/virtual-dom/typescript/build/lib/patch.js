import { _each, _setAttr, _toArray } from "./util.js";
export var PatchType;
(function (PatchType) {
    PatchType[PatchType["REPLACE"] = 0] = "REPLACE";
    PatchType[PatchType["REORDER"] = 1] = "REORDER";
    PatchType[PatchType["PROPS"] = 2] = "PROPS";
    PatchType[PatchType["TEXT"] = 3] = "TEXT";
})(PatchType || (PatchType = {}));
export class ReplacePatch {
    constructor(vElement) {
        this.type = PatchType.REPLACE;
        this.node = vElement;
    }
}
export class ReorderPatch {
    constructor(moves) {
        this.type = PatchType.REORDER;
        this.moves = moves;
    }
}
export class PropsPatch {
    constructor(props) {
        this.type = PatchType.PROPS;
        this.props = props;
    }
}
export class TextPatch {
    constructor(vElement) {
        this.type = PatchType.TEXT;
        this.content = vElement;
    }
}
export function patch(node, patches) {
    const walker = { index: 0 };
    dfsWalk(node, walker, patches);
}
export function dfsWalk(node, walker, patches) {
    const currentPatches = patches[walker.index];
    const len = node.childNodes
        ? node.childNodes.length
        : 0;
    for (let i = 0; i < len; i++) {
        const child = node.childNodes[i];
        walker.index++;
        dfsWalk(child, walker, patches);
    }
    if (currentPatches) {
        applyPatches(node, currentPatches);
    }
}
export function applyPatches(node, currentPatches) {
    _each(currentPatches, function (currentPatch) {
        var _a;
        switch (currentPatch.type) {
            case PatchType.REPLACE:
                const newNode = (typeof currentPatch.node === 'string')
                    ? document.createTextNode(currentPatch.node)
                    : currentPatch.node.render();
                (_a = node.parentNode) === null || _a === void 0 ? void 0 : _a.replaceChild(newNode, node);
                break;
            case PatchType.REORDER:
                reorderChildren(node, currentPatch.moves);
                break;
            case PatchType.PROPS:
                setProps(node, currentPatch.props);
                break;
            case PatchType.TEXT:
                if (node.textContent) {
                    node.textContent = currentPatch.content;
                }
                else {
                    node.nodeValue = currentPatch.content;
                }
                break;
            default:
                throw new Error('Unknown patch type ' + currentPatch.type);
        }
    });
}
export function setProps(node, props) {
    props.forEach((value, key, map) => {
        if (!props.has(key)) {
            node.removeAttribute(key);
        }
        else {
            _setAttr(node, key, value);
        }
    });
}
export function reorderChildren(node, moves) {
    const staticNodeList = _toArray(node.childNodes);
    let maps = {};
    _each(staticNodeList, (node) => {
        if (node.nodeType === 1) {
            const key = node.getAttribute('key');
            if (key) {
                maps[key] = node;
            }
        }
    });
    _each(moves, (move) => {
        const index = move.index;
        if (move.type === 0) {
            if (staticNodeList[index] === node.childNodes[index]) {
                node.removeChild(node.childNodes[index]);
            }
            staticNodeList.splice(index, 1);
        }
        else if (move.type === 1) {
            var insertNode = maps[move.item.key]
                ? maps[move.item.key].cloneNode(true)
                : (typeof move.item === 'object')
                    ? move.item.render()
                    : document.createTextNode(move.item);
            staticNodeList.splice(index, 0, insertNode);
            node.insertBefore(insertNode, node.childNodes[index] || null);
        }
    });
}
