import {VElementChildType} from "./v-element.model";

export interface DiffResult {
    moves: Move[];
    children: VElementChildType[];
}

export interface Move {
    index: number;
    type: number;
    item: VElementChildType;
}