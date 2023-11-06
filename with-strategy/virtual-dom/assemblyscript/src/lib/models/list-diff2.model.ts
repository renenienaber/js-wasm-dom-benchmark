import {VElementChildType} from "./element";

export interface DiffResult {
    moves: Move[];
    children: VElementChildType[];
}

export interface Move {
    index: number;
    type: number;
    item: VElementChildType;
}