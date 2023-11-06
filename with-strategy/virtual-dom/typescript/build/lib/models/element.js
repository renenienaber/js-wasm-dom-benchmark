export class VElement {
    constructor(tagName, props, children) {
        this.tagName = '';
        this.props = new Map();
        this.children = [];
        this.count = 0;
        this.text = '';
        this.empty = false;
        this.tagName = tagName;
        this.props = props;
        this.children = children;
        let count = 0;
        for (let i = 0; i < children.length; i++) {
            const child = children[i];
            if (!child.isText()) {
                count += child.count;
            }
            else {
                children[i].text = '' + child.text;
            }
            count++;
        }
        this.count = count;
    }
    isText() {
        return this.text !== '';
    }
    isEmpty() {
        return this.empty;
    }
}
export class TextVElement extends VElement {
    constructor(text) {
        super('', new Map(), []);
        this.text = text;
    }
}
export class EmptyVElement extends VElement {
    constructor() {
        super('', new Map(), []);
    }
}
