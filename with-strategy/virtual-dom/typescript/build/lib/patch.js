import { PatchType } from "./models/patch.model.js";
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
    var _a;
    for (let i = 0; i < currentPatches.length; i++) {
        const currentPatch = currentPatches[i];
        switch (currentPatch.type) {
            case PatchType.REPLACE:
                const newNode = (currentPatch.node.isText())
                    ? document.createTextNode(currentPatch.node.text)
                    : renderVElement(currentPatch.node);
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
                    node.textContent = currentPatch.content.text;
                }
                else {
                    node.nodeValue = currentPatch.content.text;
                }
                break;
            default:
                throw new Error('Unknown patch type ' + currentPatch.type);
        }
    }
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
    const staticNodeList = [];
    if (node.childNodes) {
        for (let i = 0; i < node.childNodes.length; i++) {
            staticNodeList.push(node.childNodes[i]);
        }
    }
    const maps = new Map();
    for (let i = 0; i < staticNodeList.length; i++) {
        const node = staticNodeList[i];
        if (node.nodeType === 1) {
            const key = node.getAttribute('key');
            if (key) {
                maps.set(key, node);
            }
        }
    }
    for (let i = 0; i < moves.length; i++) {
        const move = moves[i];
        const index = move.index;
        if (move.type === 0) {
            if (staticNodeList[index] === node.childNodes[index]) {
                node.removeChild(node.childNodes[index]);
            }
            staticNodeList.splice(index, 1);
        }
        else if (move.type === 1) {
            const insertNode = renderVElement(move.item);
            staticNodeList.splice(index, 0, insertNode);
            node.insertBefore(insertNode, node.childNodes[index] || null);
        }
    }
}
export function renderVElement(element) {
    const el = document.createElement(element.tagName);
    const props = element.props;
    props.forEach((value, key) => {
        _setAttr(el, key, value);
    });
    for (let i = 0; i < element.children.length; i++) {
        const child = element.children[i];
        const childEl = (!child.isText())
            ? renderVElement(child)
            : document.createTextNode(child.text);
        el.appendChild(childEl);
    }
    return el;
}
function _setAttr(node, key, value) {
    switch (key) {
        case 'style':
            node.style.cssText = value;
            break;
        case 'value':
            let tagName = node.tagName || '';
            tagName = tagName.toLowerCase();
            if (tagName === 'input' || tagName === 'textarea') {
                node.value = value;
            }
            else {
                node.setAttribute(key, value);
            }
            break;
        default:
            node.setAttribute(key, value);
            break;
    }
}
