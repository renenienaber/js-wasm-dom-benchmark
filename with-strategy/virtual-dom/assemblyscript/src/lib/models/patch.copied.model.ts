import {CopiedPropsType, CopiedVElement} from "./v-element.copied.model";
import {PatchType} from "./patch.model";
import {CopiedMove} from "./list-diff2.copied.model";

export interface CopiedPatch {
    type: PatchType;
    node: CopiedVElement | null;
    moves: CopiedMove[] | null;
    props: CopiedPropsType | null;
    content: CopiedVElement | null;
}