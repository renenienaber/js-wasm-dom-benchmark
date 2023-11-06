export var PatchType;
(function (PatchType) {
    PatchType[PatchType["REPLACE"] = 0] = "REPLACE";
    PatchType[PatchType["REORDER"] = 1] = "REORDER";
    PatchType[PatchType["PROPS"] = 2] = "PROPS";
    PatchType[PatchType["TEXT"] = 3] = "TEXT";
})(PatchType || (PatchType = {}));
export class ReplacePatch {
    constructor(vElement) {
        this.type = PatchType.REPLACE;
        this.node = vElement;
    }
}
export class ReorderPatch {
    constructor(moves) {
        this.type = PatchType.REORDER;
        this.moves = moves;
    }
}
export class PropsPatch {
    constructor(props) {
        this.type = PatchType.PROPS;
        this.props = props;
    }
}
export class TextPatch {
    constructor(vElement) {
        this.type = PatchType.TEXT;
        this.content = vElement;
    }
}
