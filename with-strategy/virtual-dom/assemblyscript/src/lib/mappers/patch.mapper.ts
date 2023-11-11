import {CopiedPatch} from "../models/patch.copied.model";
import {CopiedPropsType, CopiedVElement} from "../models/v-element.copied.model";
import {EmptyVElement, PropsType, VElement} from "../models/v-element.model";
import {toPropsType, toVElement} from "./v-element.mapper";
import {Move} from "../models/list-diff2.model";
import {PatchType, PropsPatch, ReorderPatch, ReplacePatch, TextPatch} from "../models/patch.model";
import {CopiedMove} from "../models/list-diff2.copied.model";
import {toMoves} from "./list-diff2.mapper";

export function toPatch(copiedPatch: CopiedPatch): ReplacePatch | ReorderPatch | PropsPatch | TextPatch {
    switch (copiedPatch.type) {
        case PatchType.REPLACE:
            const node: CopiedVElement = copiedPatch.node as CopiedVElement;
            const mappedNode: VElement = toVElement(node);
            return new ReplacePatch(mappedNode);
        case PatchType.REORDER:
            const moves: CopiedMove[] = copiedPatch.moves as CopiedMove[];
            const mappedMoves: Move[] = toMoves(moves);
            return new ReorderPatch(mappedMoves);
            break;
        case PatchType.PROPS:
            const props: CopiedPropsType = copiedPatch.props as CopiedPropsType;
            const mappedProps: PropsType = toPropsType(props);
            return new PropsPatch(mappedProps)
        case PatchType.TEXT:
            const content: CopiedVElement = copiedPatch.content as CopiedVElement;
            const mappedContent: VElement = toVElement(content);
            return new TextPatch(mappedContent);
    }

    return new ReplacePatch(new EmptyVElement()) // dummy
}