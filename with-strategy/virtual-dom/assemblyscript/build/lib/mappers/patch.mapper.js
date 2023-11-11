import { EmptyVElement } from "../models/v-element.model.js";
import { toPropsType, toVElement } from "./v-element.mapper.js";
import { PatchType, PropsPatch, ReorderPatch, ReplacePatch, TextPatch } from "../models/patch.model.js";
import { toMoves } from "./list-diff2.mapper.js";
export function toPatch(copiedPatch) {
    switch (copiedPatch.type) {
        case PatchType.REPLACE:
            const node = copiedPatch.node;
            const mappedNode = toVElement(node);
            return new ReplacePatch(mappedNode);
        case PatchType.REORDER:
            const moves = copiedPatch.moves;
            const mappedMoves = toMoves(moves);
            return new ReorderPatch(mappedMoves);
            break;
        case PatchType.PROPS:
            const props = copiedPatch.props;
            const mappedProps = toPropsType(props);
            return new PropsPatch(mappedProps);
        case PatchType.TEXT:
            const content = copiedPatch.content;
            const mappedContent = toVElement(content);
            return new TextPatch(mappedContent);
    }
    return new ReplacePatch(new EmptyVElement());
}
