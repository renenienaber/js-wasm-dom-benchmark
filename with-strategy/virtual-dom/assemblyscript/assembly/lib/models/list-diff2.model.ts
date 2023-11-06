import {VElementChildType} from "./element";

export class DiffResult {
    moves: Move[];
    children: VElementChildType[];

    constructor(moves: Move[], children: VElementChildType[]) {
        this.moves = moves;
        this.children = children;
    }
}

export class Move {
    index: i32;
    type: i32;
    item: VElementChildType;

    constructor(index: i32, item: VElementChildType, type: i32) {
        this.index = index;
        this.type = type;
        this.item = item;
    }
}