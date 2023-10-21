/** Exported memory */
export declare const memory: WebAssembly.Memory;
/**
 * assembly/main/buildData
 * @param count `f64`
 * @param firstId `f64`
 * @returns `~lib/array/Array<assembly/main/RowElement>`
 */
export declare function buildData(count?: number, firstId?: number): Array<__Record4<never>>;
/**
 * assembly/main/updateData
 * @param rowElements `~lib/array/Array<assembly/main/RowElement>`
 * @param mod `f64`
 * @returns `~lib/array/Array<assembly/main/RowElement>`
 */
export declare function updateData(rowElements: Array<__Record4<undefined>>, mod?: number): Array<__Record4<never>>;
/**
 * assembly/main/updateDataForSwap
 * @param rowElements `~lib/array/Array<assembly/main/RowElement>`
 * @returns `~lib/array/Array<assembly/main/RowElement>`
 */
export declare function updateDataForSwap(rowElements: Array<__Record4<undefined>>): Array<__Record4<never>>;
/** assembly/main/RowElement */
declare interface __Record4<TOmittable> {
  /** @type `f64` */
  id: number | TOmittable;
  /** @type `~lib/string/String` */
  label: string;
}
