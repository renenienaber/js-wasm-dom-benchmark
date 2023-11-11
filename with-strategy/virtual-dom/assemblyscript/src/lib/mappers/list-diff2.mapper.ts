import {CopiedMove} from "../models/list-diff2.copied.model";
import {toVElement} from "./v-element.mapper";
import {Move} from "../models/list-diff2.model";

function _toMove(copiedMove: CopiedMove): Move {
    return {
        index: copiedMove.index,
        type: copiedMove.type,
        item: toVElement(copiedMove.item)
    }
}

export function toMoves(copiedMoves: CopiedMove[]): Move[] {
    return copiedMoves.map(el => _toMove(el));
}