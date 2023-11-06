async function instantiate(module, imports = {}) {
  const adaptedImports = {
    env: Object.assign(Object.create(globalThis), imports.env || {}, {
      abort(message, fileName, lineNumber, columnNumber) {
        // ~lib/builtins/abort(~lib/string/String | null?, ~lib/string/String | null?, u32?, u32?) => void
        message = __liftString(message >>> 0);
        fileName = __liftString(fileName >>> 0);
        lineNumber = lineNumber >>> 0;
        columnNumber = columnNumber >>> 0;
        (() => {
          // @external.js
          throw Error(`${message} in ${fileName}:${lineNumber}:${columnNumber}`);
        })();
      },
      seed() {
        // ~lib/builtins/seed() => f64
        return (() => {
          // @external.js
          return Date.now() * Math.random();
        })();
      },
    }),
  };
  const { exports } = await WebAssembly.instantiate(module, adaptedImports);
  const memory = exports.memory || imports.env.memory;
  const adaptedExports = Object.setPrototypeOf({
    doRun(vtree) {
      // assembly/main/doRun(assembly/lib/models/element/VElement) => ~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>
      vtree = __lowerInternref(vtree) || __notnull();
      return __liftArray(pointer => __liftArray(pointer => __liftRecord9(__getU32(pointer)), 2, __getU32(pointer)), 2, exports.doRun(vtree) >>> 0);
    },
    doRunLots(vtree) {
      // assembly/main/doRunLots(assembly/lib/models/element/VElement) => ~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>
      vtree = __lowerInternref(vtree) || __notnull();
      return __liftArray(pointer => __liftArray(pointer => __liftRecord9(__getU32(pointer)), 2, __getU32(pointer)), 2, exports.doRunLots(vtree) >>> 0);
    },
    doAdd(vtree) {
      // assembly/main/doAdd(assembly/lib/models/element/VElement) => ~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>
      vtree = __lowerInternref(vtree) || __notnull();
      return __liftArray(pointer => __liftArray(pointer => __liftRecord9(__getU32(pointer)), 2, __getU32(pointer)), 2, exports.doAdd(vtree) >>> 0);
    },
    doUpdate(vtree) {
      // assembly/main/doUpdate(assembly/lib/models/element/VElement) => ~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>
      vtree = __lowerInternref(vtree) || __notnull();
      return __liftArray(pointer => __liftArray(pointer => __liftRecord9(__getU32(pointer)), 2, __getU32(pointer)), 2, exports.doUpdate(vtree) >>> 0);
    },
    doClearRows(vtree) {
      // assembly/main/doClearRows(assembly/lib/models/element/VElement) => ~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>
      vtree = __lowerInternref(vtree) || __notnull();
      return __liftArray(pointer => __liftArray(pointer => __liftRecord9(__getU32(pointer)), 2, __getU32(pointer)), 2, exports.doClearRows(vtree) >>> 0);
    },
    doSwapRows(vtree) {
      // assembly/main/doSwapRows(assembly/lib/models/element/VElement) => ~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>
      vtree = __lowerInternref(vtree) || __notnull();
      return __liftArray(pointer => __liftArray(pointer => __liftRecord9(__getU32(pointer)), 2, __getU32(pointer)), 2, exports.doSwapRows(vtree) >>> 0);
    },
  }, exports);
  function __liftRecord9(pointer) {
    // assembly/lib/models/patch.model/Patch
    // Hint: Opt-out from lifting as a record by providing an empty constructor
    if (!pointer) return null;
    return {
    };
  }
  function __liftString(pointer) {
    if (!pointer) return null;
    const
      end = pointer + new Uint32Array(memory.buffer)[pointer - 4 >>> 2] >>> 1,
      memoryU16 = new Uint16Array(memory.buffer);
    let
      start = pointer >>> 1,
      string = "";
    while (end - start > 1024) string += String.fromCharCode(...memoryU16.subarray(start, start += 1024));
    return string + String.fromCharCode(...memoryU16.subarray(start, end));
  }
  function __liftArray(liftElement, align, pointer) {
    if (!pointer) return null;
    const
      dataStart = __getU32(pointer + 4),
      length = __dataview.getUint32(pointer + 12, true),
      values = new Array(length);
    for (let i = 0; i < length; ++i) values[i] = liftElement(dataStart + (i << align >>> 0));
    return values;
  }
  class Internref extends Number {}
  function __lowerInternref(value) {
    if (value == null) return 0;
    if (value instanceof Internref) return value.valueOf();
    throw TypeError("internref expected");
  }
  function __notnull() {
    throw TypeError("value must not be null");
  }
  let __dataview = new DataView(memory.buffer);
  function __getU32(pointer) {
    try {
      return __dataview.getUint32(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getUint32(pointer, true);
    }
  }
  return adaptedExports;
}
export const {
  memory,
  doRun,
  doRunLots,
  doAdd,
  doUpdate,
  doClearRows,
  doSwapRows,
} = await (async url => instantiate(
  await (async () => {
    try { return await globalThis.WebAssembly.compileStreaming(globalThis.fetch(url)); }
    catch { return globalThis.WebAssembly.compile(await (await import("node:fs/promises")).readFile(url)); }
  })(), {
  }
))(new URL("main.wasm", import.meta.url));
