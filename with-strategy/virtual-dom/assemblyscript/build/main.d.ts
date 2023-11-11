/** Exported memory */
export declare const memory: WebAssembly.Memory;
/**
 * assembly/main/doRun
 * @param copiedVElement `assembly/lib/models/v-element.copied.model/CopiedVElement`
 * @returns `~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.copied.model/CopiedPatch>>`
 */
export declare function doRun(copiedVElement: __Record9<undefined>): Array<Array<__Record13<never>>>;
/**
 * assembly/main/doRunLots
 * @param vtree `assembly/lib/models/v-element.model/VElement`
 * @returns `~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.copied.model/CopiedPatch>>`
 */
export declare function doRunLots(vtree: __Internref4): Array<Array<__Record13<never>>>;
/**
 * assembly/main/doAdd
 * @param vtree `assembly/lib/models/v-element.model/VElement`
 * @returns `~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.copied.model/CopiedPatch>>`
 */
export declare function doAdd(vtree: __Internref4): Array<Array<__Record13<never>>>;
/**
 * assembly/main/doUpdate
 * @param vtree `assembly/lib/models/v-element.model/VElement`
 * @returns `~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.copied.model/CopiedPatch>>`
 */
export declare function doUpdate(vtree: __Internref4): Array<Array<__Record13<never>>>;
/**
 * assembly/main/doClearRows
 * @param vtree `assembly/lib/models/v-element.model/VElement`
 * @returns `~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.copied.model/CopiedPatch>>`
 */
export declare function doClearRows(vtree: __Internref4): Array<Array<__Record13<never>>>;
/**
 * assembly/main/doSwapRows
 * @param vtree `assembly/lib/models/v-element.model/VElement`
 * @returns `~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.copied.model/CopiedPatch>>`
 */
export declare function doSwapRows(vtree: __Internref4): Array<Array<__Record13<never>>>;
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
declare interface __Record14<TOmittable> {
  /** @type `i32` */
  index: number | TOmittable;
  /** @type `i32` */
  type: number | TOmittable;
  /** @type `assembly/lib/models/v-element.copied.model/CopiedVElement` */
  item: __Record9<never>;
}
/** assembly/lib/models/patch.copied.model/CopiedPatch */
declare interface __Record13<TOmittable> {
  /** @type `i32` */
  type: number | TOmittable;
  /** @type `assembly/lib/models/v-element.copied.model/CopiedVElement | null` */
  node: __Record9<never> | null | TOmittable;
  /** @type `~lib/array/Array<assembly/lib/models/list-diff2.copied.model/CopiedMove> | null` */
  moves: Array<__Record14<never>> | null | TOmittable;
  /** @type `assembly/lib/models/v-element.copied.model/CopiedPropsType | null` */
  props: __Record10<never> | null | TOmittable;
  /** @type `assembly/lib/models/v-element.copied.model/CopiedVElement | null` */
  content: __Record9<never> | null | TOmittable;
}
/** assembly/lib/models/v-element.model/VElement */
declare class __Internref4 extends Number {
  private __nominal4: symbol;
  private __nominal0: symbol;
}
