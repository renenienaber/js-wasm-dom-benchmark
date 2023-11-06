import {VElementChildType} from "./element";

export interface DiffResult {
    moves: Move[];
    children: VElementChildType[];
}

export interface Move {
    index: i32;
    type: i32;
    item: VElementChildType;
}