import {Patch, PatchType, PropsPatch, ReorderPatch, ReplacePatch, TextPatch} from "../models/patch.model";
import {PropsType, VElement, VElementChildType} from "../models/v-element.model";
import {CopiedPropsType, CopiedVElement} from "../models/v-element.copied.model";
import {toCopiedPropsType, toCopiedVElement} from "./v-element.mapper";
import {Move} from "../models/list-diff2.model";
import {CopiedPatch} from "../models/patch.copied.model";
import {CopiedMove} from "../models/list-diff2.copied.model";
import {toCopiedMoves} from "./list-diff2.mapper";

function toCopiedPatch(patch: Patch): CopiedPatch {
    const patchType: PatchType = patch.type;
    const newCopiedPatch: CopiedPatch = {
        type: patchType,
        node: null,
        moves: null,
        props: null,
        content: null
    }

    switch (patch.type) {
        case PatchType.REPLACE:
            const node: VElementChildType = (patch as ReplacePatch).node;
            const mappedNode: CopiedVElement = toCopiedVElement(node);
            newCopiedPatch.node = mappedNode;
            break;
        case PatchType.REORDER:
            const moves: Move[] = (patch as ReorderPatch).moves;
            const mappedMoves: CopiedMove[] = toCopiedMoves(moves);
            newCopiedPatch.moves = mappedMoves;
            break;
        case PatchType.PROPS:
            const props: PropsType = (patch as PropsPatch).props;
            const mappedProps: CopiedPropsType = toCopiedPropsType(props);
            newCopiedPatch.props = mappedProps;
            break;
        case PatchType.TEXT:
            const content: VElement = (patch as TextPatch).content;
            const mappedContent: CopiedVElement = toCopiedVElement(content);
            newCopiedPatch.content = mappedContent;
            break;
        default:
            break;
    }

    return newCopiedPatch;
}

export function toCopiedPatches(patches: (Patch[] | null)[]): (CopiedPatch[] | null)[] {
    const lenPatches: i32 = patches.length;
    const newCopiedPatches: (CopiedPatch[] | null)[] = new Array<CopiedPatch[] | null>(lenPatches);
    for (let i: i32 = 0; i < lenPatches; i++) {
        const patches2: Patch[] | null = patches[i];
        if(patches2) {
            const lenPatches2: i32 = patches2.length;

            const newCopiedPatches2: CopiedPatch[] = new Array<CopiedPatch>(lenPatches2);
            for (let i: i32 = 0; i < lenPatches2; i++) {
                const patch: Patch = patches2[i];
                const newCopiedPatch: CopiedPatch = toCopiedPatch(patch);
                newCopiedPatches2[i] = newCopiedPatch;
            }

            newCopiedPatches[i] = newCopiedPatches2;
        } else {
            newCopiedPatches[i] = null;
        }
    }
    return newCopiedPatches;
}