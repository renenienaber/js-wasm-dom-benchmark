/** Exported memory */
export declare const memory: WebAssembly.Memory;
/**
 * assembly/main/doRun
 * @param visibleElement `assembly/lib/models/element/VisibleVElement`
 * @returns `~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>`
 */
export declare function doRun(visibleElement: __Record9<undefined>): Array<Array<__Record11<never>>>;
/**
 * assembly/main/doRunLots
 * @param vtree `assembly/lib/models/element/VElement`
 * @returns `~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>`
 */
export declare function doRunLots(vtree: __Internref4): Array<Array<__Record11<never>>>;
/**
 * assembly/main/doAdd
 * @param vtree `assembly/lib/models/element/VElement`
 * @returns `~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>`
 */
export declare function doAdd(vtree: __Internref4): Array<Array<__Record11<never>>>;
/**
 * assembly/main/doUpdate
 * @param vtree `assembly/lib/models/element/VElement`
 * @returns `~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>`
 */
export declare function doUpdate(vtree: __Internref4): Array<Array<__Record11<never>>>;
/**
 * assembly/main/doClearRows
 * @param vtree `assembly/lib/models/element/VElement`
 * @returns `~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>`
 */
export declare function doClearRows(vtree: __Internref4): Array<Array<__Record11<never>>>;
/**
 * assembly/main/doSwapRows
 * @param vtree `assembly/lib/models/element/VElement`
 * @returns `~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>`
 */
export declare function doSwapRows(vtree: __Internref4): Array<Array<__Record11<never>>>;
/** assembly/lib/models/element/VisibleVElement */
declare interface __Record9<TOmittable> {
  /** @type `~lib/string/String` */
  tagName: string;
  /** @type `~lib/array/Array<assembly/lib/models/element/VisibleVElement>` */
  children: Array<__Record9<undefined>>;
  /** @type `i32` */
  count: number | TOmittable;
  /** @type `~lib/string/String` */
  text: string;
  /** @type `bool` */
  empty: boolean | TOmittable;
}
/** assembly/lib/models/patch.model/Patch */
declare interface __Record11<TOmittable> {
}
/** assembly/lib/models/element/VElement */
declare class __Internref4 extends Number {
  private __nominal4: symbol;
  private __nominal0: symbol;
}
