import {Move} from "../models/list-diff2.model";
import {CopiedVElement} from "../models/v-element.copied.model";
import {toCopiedVElement} from "./v-element.mapper";
import {CopiedMove} from "../models/list-diff2.copied.model";
import {VElement} from "../models/v-element.model";

function _toCopiedMove(move: Move): CopiedMove {
    let newItem: CopiedVElement | null = null;
    if (move.item !== null) {
        newItem = toCopiedVElement(move.item as VElement);
    }
    const newMove: CopiedMove = {
        index: move.index,
        type: move.type,
        item: newItem,
    }
    return newMove;
}

export function toCopiedMoves(moves: Move[]): CopiedMove[] {
    const lenMoves: i32 = moves.length;
    const newCopiedMoves: CopiedMove[] = new Array<CopiedMove>(lenMoves);
    for (let i: i32 = 0; i < lenMoves; i++) {
        const move: Move = moves[i];
        const newCopiedMove: CopiedMove = _toCopiedMove(move);
        newCopiedMoves[i] = newCopiedMove;
    }
    return newCopiedMoves;
}