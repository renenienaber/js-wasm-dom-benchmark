import {PropsType, VElementChildType} from "./element";
import {Move} from "./list-diff2.model";

export enum PatchType {
    REPLACE, // node
    REORDER, // moves
    PROPS, // props
    TEXT // content
}

export interface Patch {
    type: PatchType;
}

export class ReplacePatch implements Patch {
    type: PatchType = PatchType.REPLACE;
    node: VElementChildType;

    constructor(vElement: VElementChildType) {
        this.node = vElement;
    }
}

export class ReorderPatch implements Patch {
    type: PatchType = PatchType.REORDER;
    moves: Move[];

    constructor(moves: Move[]) {
        this.moves = moves;
    }
}

export class PropsPatch implements Patch {
    type: PatchType = PatchType.PROPS;
    props: PropsType;

    constructor(props: PropsType) {
        this.props = props;
    }
}

export class TextPatch implements Patch {
    type: PatchType = PatchType.TEXT;
    content: VElementChildType;

    constructor(vElement: VElementChildType) {
        this.content = vElement;
    }
}

export interface Walker {
    index: i32;
}