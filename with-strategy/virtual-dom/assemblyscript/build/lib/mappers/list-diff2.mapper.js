import { toVElement } from "./v-element.mapper.js";
function _toMove(copiedMove) {
    return {
        index: copiedMove.index,
        type: copiedMove.type,
        item: toVElement(copiedMove.item)
    };
}
export function toMoves(copiedMoves) {
    return copiedMoves.map(el => _toMove(el));
}
