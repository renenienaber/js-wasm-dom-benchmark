/** Exported memory */
export declare const memory: WebAssembly.Memory;
/**
 * assembly/main/doRun
 * @param copiedVElement `assembly/lib/models/v-element.copied.model/CopiedVElement`
 * @returns `assembly/main/DiffResult`
 */
export declare function doRun(copiedVElement: __Record9<undefined>): __Record13<never>;
/**
 * assembly/main/doRunLots
 * @param copiedVElement `assembly/lib/models/v-element.copied.model/CopiedVElement`
 * @returns `assembly/main/DiffResult`
 */
export declare function doRunLots(copiedVElement: __Record9<undefined>): __Record13<never>;
/**
 * assembly/main/doAdd
 * @param copiedVElement `assembly/lib/models/v-element.copied.model/CopiedVElement`
 * @returns `assembly/main/DiffResult`
 */
export declare function doAdd(copiedVElement: __Record9<undefined>): __Record13<never>;
/**
 * assembly/main/doUpdate
 * @param copiedVElement `assembly/lib/models/v-element.copied.model/CopiedVElement`
 * @returns `assembly/main/DiffResult`
 */
export declare function doUpdate(copiedVElement: __Record9<undefined>): __Record13<never>;
/**
 * assembly/main/doClearRows
 * @param copiedVElement `assembly/lib/models/v-element.copied.model/CopiedVElement`
 * @returns `assembly/main/DiffResult`
 */
export declare function doClearRows(copiedVElement: __Record9<undefined>): __Record13<never>;
/**
 * assembly/main/doSwapRows
 * @param copiedVElement `assembly/lib/models/v-element.copied.model/CopiedVElement`
 * @returns `assembly/main/DiffResult`
 */
export declare function doSwapRows(copiedVElement: __Record9<undefined>): __Record13<never>;
/** assembly/lib/models/v-element.copied.model/CopiedPropsType */
declare interface __Record10<TOmittable> {
  /** @type `~lib/array/Array<~lib/string/String>` */
  keys: Array<string>;
  /** @type `~lib/array/Array<~lib/string/String>` */
  values: Array<string>;
}
/** assembly/lib/models/v-element.copied.model/CopiedVElement */
declare interface __Record9<TOmittable> {
  /** @type `~lib/string/String` */
  tagName: string;
  /** @type `assembly/lib/models/v-element.copied.model/CopiedPropsType` */
  props: __Record10<undefined>;
  /** @type `~lib/array/Array<assembly/lib/models/v-element.copied.model/CopiedVElement>` */
  children: Array<__Record9<undefined>>;
  /** @type `i32` */
  count: number | TOmittable;
  /** @type `~lib/string/String` */
  text: string;
  /** @type `bool` */
  empty: boolean | TOmittable;
}
/** assembly/lib/models/list-diff2.copied.model/CopiedMove */
declare interface __Record15<TOmittable> {
  /** @type `i32` */
  index: number | TOmittable;
  /** @type `i32` */
  type: number | TOmittable;
  /** @type `assembly/lib/models/v-element.copied.model/CopiedVElement` */
  item: __Record9<never>;
}
/** assembly/lib/models/patch.copied.model/CopiedPatch */
declare interface __Record14<TOmittable> {
  /** @type `i32` */
  type: number | TOmittable;
  /** @type `assembly/lib/models/v-element.copied.model/CopiedVElement | null` */
  node: __Record9<never> | null | TOmittable;
  /** @type `~lib/array/Array<assembly/lib/models/list-diff2.copied.model/CopiedMove> | null` */
  moves: Array<__Record15<never>> | null | TOmittable;
  /** @type `assembly/lib/models/v-element.copied.model/CopiedPropsType | null` */
  props: __Record10<never> | null | TOmittable;
  /** @type `assembly/lib/models/v-element.copied.model/CopiedVElement | null` */
  content: __Record9<never> | null | TOmittable;
}
/** assembly/main/DiffResult */
declare interface __Record13<TOmittable> {
  /** @type `assembly/lib/models/v-element.copied.model/CopiedVElement` */
  newTree: __Record9<never>;
  /** @type `~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.copied.model/CopiedPatch>>` */
  patches: Array<Array<__Record14<never>>>;
}
