export interface CopiedVElement {
    tagName: string;
    props: CopiedPropsType;
    children: CopiedVElement[];
    count: number;
    text: string;
    empty: boolean;
}

export interface CopiedPropsType {
    keys: string[];
    values: string[];
}