/** Exported memory */
export declare const memory: WebAssembly.Memory;
/**
 * assembly/main/doRun
 * @param vtree `assembly/lib/models/element/VElement`
 * @returns `~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>`
 */
export declare function doRun(vtree: __Internref4): Array<Array<__Record9<never>>>;
/**
 * assembly/main/doRunLots
 * @param vtree `assembly/lib/models/element/VElement`
 * @returns `~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>`
 */
export declare function doRunLots(vtree: __Internref4): Array<Array<__Record9<never>>>;
/**
 * assembly/main/doAdd
 * @param vtree `assembly/lib/models/element/VElement`
 * @returns `~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>`
 */
export declare function doAdd(vtree: __Internref4): Array<Array<__Record9<never>>>;
/**
 * assembly/main/doUpdate
 * @param vtree `assembly/lib/models/element/VElement`
 * @returns `~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>`
 */
export declare function doUpdate(vtree: __Internref4): Array<Array<__Record9<never>>>;
/**
 * assembly/main/doClearRows
 * @param vtree `assembly/lib/models/element/VElement`
 * @returns `~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>`
 */
export declare function doClearRows(vtree: __Internref4): Array<Array<__Record9<never>>>;
/**
 * assembly/main/doSwapRows
 * @param vtree `assembly/lib/models/element/VElement`
 * @returns `~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>`
 */
export declare function doSwapRows(vtree: __Internref4): Array<Array<__Record9<never>>>;
/**
 * assembly/main/buildData
 * @param count `i32`
 * @param firstId `i32`
 * @returns `~lib/array/Array<assembly/main/RowElement>`
 */
export declare function buildData(count?: number, firstId?: number): Array<__Record12<never>>;
/**
 * assembly/main/buildData2
 * @param count `i32`
 * @param firstId `i32`
 * @returns `~lib/array/Array<assembly/main/RowElement2>`
 */
export declare function buildData2(count?: number, firstId?: number): Array<__Internref24>;
/**
 * assembly/main/buildData3
 * @param count `i32`
 * @param firstId `i32`
 * @returns `~lib/array/Array<assembly/main/RowElement>`
 */
export declare function buildData3(count?: number, firstId?: number): Array<__Record12<never>>;
/**
 * assembly/main/updateData
 * @param rowElements `~lib/array/Array<assembly/main/RowElement>`
 * @param mod `i32`
 * @returns `~lib/array/Array<assembly/main/RowElement>`
 */
export declare function updateData(rowElements: Array<__Record12<undefined>>, mod?: number): Array<__Record12<never>>;
/**
 * assembly/main/updateData2
 * @param rowElements `~lib/array/Array<assembly/main/RowElement>`
 * @param mod `i32`
 * @returns `~lib/array/Array<assembly/main/RowElement2>`
 */
export declare function updateData2(rowElements: Array<__Record12<undefined>>, mod?: number): Array<__Internref24>;
/** assembly/lib/models/element/VElement */
declare class __Internref4 extends Number {
  private __nominal4: symbol;
  private __nominal0: symbol;
}
/** assembly/lib/models/patch.model/Patch */
declare interface __Record9<TOmittable> {
}
/** assembly/main/RowElement */
declare interface __Record12<TOmittable> {
  /** @type `i32` */
  id: number | TOmittable;
  /** @type `~lib/string/String` */
  label: string;
}
/** assembly/main/RowElement2 */
declare class __Internref24 extends Number {
  private __nominal24: symbol;
  private __nominal0: symbol;
}
