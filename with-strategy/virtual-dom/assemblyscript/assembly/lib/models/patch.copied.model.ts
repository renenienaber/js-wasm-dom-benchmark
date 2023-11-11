import {CopiedPropsType, CopiedVElement} from "./v-element.copied.model";
import {PatchType} from "./patch.model";
import {CopiedMove} from "./list-diff2.copied.model";

export class CopiedPatch {
    // @ts-ignore
    type: PatchType;
    // @ts-ignore
    node: CopiedVElement | null;
    // @ts-ignore
    moves: CopiedMove[] | null;
    // @ts-ignore
    props: CopiedPropsType | null;
    // @ts-ignore
    content: CopiedVElement | null;
}