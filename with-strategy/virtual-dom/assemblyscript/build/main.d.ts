/** Exported memory */
export declare const memory: WebAssembly.Memory;
/**
 * assembly/main/run
 * @param vtree `assembly/lib/models/element/VElement`
 * @returns `~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>`
 */
export declare function run(vtree: __Internref4): Array<Array<__Record9<never>>>;
/**
 * assembly/main/runLots
 * @param vtree `assembly/lib/models/element/VElement`
 * @returns `~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>`
 */
export declare function runLots(vtree: __Internref4): Array<Array<__Record9<never>>>;
/**
 * assembly/main/add
 * @param vtree `assembly/lib/models/element/VElement`
 * @returns `~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>`
 */
export declare function add(vtree: __Internref4): Array<Array<__Record9<never>>>;
/**
 * assembly/main/update
 * @param vtree `assembly/lib/models/element/VElement`
 * @returns `~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>`
 */
export declare function update(vtree: __Internref4): Array<Array<__Record9<never>>>;
/**
 * assembly/main/clearRows
 * @param vtree `assembly/lib/models/element/VElement`
 * @returns `~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>`
 */
export declare function clearRows(vtree: __Internref4): Array<Array<__Record9<never>>>;
/**
 * assembly/main/swapRows
 * @param vtree `assembly/lib/models/element/VElement`
 * @returns `~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>`
 */
export declare function swapRows(vtree: __Internref4): Array<Array<__Record9<never>>>;
/**
 * assembly/main/buildData
 * @param count `i32`
 * @param firstId `i32`
 * @returns `~lib/array/Array<assembly/main/RowElement>`
 */
export declare function buildData(count?: number, firstId?: number): Array<__Internref12>;
/**
 * assembly/main/updateData
 * @param rowElements `~lib/array/Array<assembly/main/RowElement>`
 * @param mod `i32`
 * @returns `~lib/array/Array<assembly/main/RowElement>`
 */
export declare function updateData(rowElements: Array<__Internref12>, mod?: number): Array<__Internref12>;
/**
 * assembly/main/updateDataForSwap
 * @param rowElements `~lib/array/Array<assembly/main/RowElement>`
 * @returns `~lib/array/Array<assembly/main/RowElement>`
 */
export declare function updateDataForSwap(rowElements: Array<__Internref12>): Array<__Internref12>;
/** assembly/lib/models/element/VElement */
declare class __Internref4 extends Number {
  private __nominal4: symbol;
  private __nominal0: symbol;
}
/** assembly/lib/models/patch.model/Patch */
declare interface __Record9<TOmittable> {
}
/** assembly/main/RowElement */
declare class __Internref12 extends Number {
  private __nominal12: symbol;
  private __nominal0: symbol;
}
