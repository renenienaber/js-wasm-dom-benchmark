import {VElementChildType} from "./v-element.model";

export class DiffResult {
    moves: Move[];
    children: (VElementChildType | null)[];

    constructor(moves: Move[], children: (VElementChildType | null)[]) {
        this.moves = moves;
        this.children = children;
    }
}

export class Move {
    index: i32;
    type: i32;
    item: VElementChildType | null;

    constructor(index: i32, item: VElementChildType | null, type: i32) {
        this.index = index;
        this.type = type;
        this.item = item;
    }
}