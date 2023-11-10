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
    testRun(visibleElement) {
      // assembly/main/testRun(assembly/lib/models/element/VisibleVElement) => assembly/lib/models/element/VisibleVElement
      visibleElement = __lowerRecord9(visibleElement) || __notnull();
      return __liftRecord9(exports.testRun(visibleElement) >>> 0);
    },
    doRun(visibleElement) {
      // assembly/main/doRun(assembly/lib/models/element/VisibleVElement) => ~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>
      visibleElement = __lowerRecord9(visibleElement) || __notnull();
      return __liftArray(pointer => __liftArray(pointer => __liftRecord16(__getU32(pointer)), 2, __getU32(pointer)), 2, exports.doRun(visibleElement) >>> 0);
    },
    doRunLots(vtree) {
      // assembly/main/doRunLots(assembly/lib/models/element/VElement) => ~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>
      vtree = __lowerInternref(vtree) || __notnull();
      return __liftArray(pointer => __liftArray(pointer => __liftRecord16(__getU32(pointer)), 2, __getU32(pointer)), 2, exports.doRunLots(vtree) >>> 0);
    },
    doAdd(vtree) {
      // assembly/main/doAdd(assembly/lib/models/element/VElement) => ~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>
      vtree = __lowerInternref(vtree) || __notnull();
      return __liftArray(pointer => __liftArray(pointer => __liftRecord16(__getU32(pointer)), 2, __getU32(pointer)), 2, exports.doAdd(vtree) >>> 0);
    },
    doUpdate(vtree) {
      // assembly/main/doUpdate(assembly/lib/models/element/VElement) => ~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>
      vtree = __lowerInternref(vtree) || __notnull();
      return __liftArray(pointer => __liftArray(pointer => __liftRecord16(__getU32(pointer)), 2, __getU32(pointer)), 2, exports.doUpdate(vtree) >>> 0);
    },
    doClearRows(vtree) {
      // assembly/main/doClearRows(assembly/lib/models/element/VElement) => ~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>
      vtree = __lowerInternref(vtree) || __notnull();
      return __liftArray(pointer => __liftArray(pointer => __liftRecord16(__getU32(pointer)), 2, __getU32(pointer)), 2, exports.doClearRows(vtree) >>> 0);
    },
    doSwapRows(vtree) {
      // assembly/main/doSwapRows(assembly/lib/models/element/VElement) => ~lib/array/Array<~lib/array/Array<assembly/lib/models/patch.model/Patch>>
      vtree = __lowerInternref(vtree) || __notnull();
      return __liftArray(pointer => __liftArray(pointer => __liftRecord16(__getU32(pointer)), 2, __getU32(pointer)), 2, exports.doSwapRows(vtree) >>> 0);
    },
  }, exports);
  function __lowerRecord10(value) {
    // assembly/lib/models/element/VisiblePropsType
    // Hint: Opt-out from lowering as a record by providing an empty constructor
    if (value == null) return 0;
    const pointer = exports.__pin(exports.__new(8, 10));
    __setU32(pointer + 0, __lowerArray((pointer, value) => { __setU32(pointer, __lowerString(value) || __notnull()); }, 11, 2, value.keys) || __notnull());
    __setU32(pointer + 4, __lowerArray((pointer, value) => { __setU32(pointer, __lowerString(value) || __notnull()); }, 11, 2, value.values) || __notnull());
    exports.__unpin(pointer);
    return pointer;
  }
  function __lowerRecord9(value) {
    // assembly/lib/models/element/VisibleVElement
    // Hint: Opt-out from lowering as a record by providing an empty constructor
    if (value == null) return 0;
    const pointer = exports.__pin(exports.__new(21, 9));
    __setU32(pointer + 0, __lowerString(value.tagName) || __notnull());
    __setU32(pointer + 4, __lowerRecord10(value.props) || __notnull());
    __setU32(pointer + 8, __lowerArray((pointer, value) => { __setU32(pointer, __lowerRecord9(value) || __notnull()); }, 12, 2, value.children) || __notnull());
    __setU32(pointer + 12, value.count);
    __setU32(pointer + 16, __lowerString(value.text) || __notnull());
    __setU8(pointer + 20, value.empty ? 1 : 0);
    exports.__unpin(pointer);
    return pointer;
  }
  function __liftRecord10(pointer) {
    // assembly/lib/models/element/VisiblePropsType
    // Hint: Opt-out from lifting as a record by providing an empty constructor
    if (!pointer) return null;
    return {
      keys: __liftArray(pointer => __liftString(__getU32(pointer)), 2, __getU32(pointer + 0)),
      values: __liftArray(pointer => __liftString(__getU32(pointer)), 2, __getU32(pointer + 4)),
    };
  }
  function __liftRecord9(pointer) {
    // assembly/lib/models/element/VisibleVElement
    // Hint: Opt-out from lifting as a record by providing an empty constructor
    if (!pointer) return null;
    return {
      tagName: __liftString(__getU32(pointer + 0)),
      props: __liftRecord10(__getU32(pointer + 4)),
      children: __liftArray(pointer => __liftRecord9(__getU32(pointer)), 2, __getU32(pointer + 8)),
      count: __getI32(pointer + 12),
      text: __liftString(__getU32(pointer + 16)),
      empty: __getU8(pointer + 20) != 0,
    };
  }
  function __liftRecord16(pointer) {
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
  function __lowerString(value) {
    if (value == null) return 0;
    const
      length = value.length,
      pointer = exports.__new(length << 1, 2) >>> 0,
      memoryU16 = new Uint16Array(memory.buffer);
    for (let i = 0; i < length; ++i) memoryU16[(pointer >>> 1) + i] = value.charCodeAt(i);
    return pointer;
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
  function __lowerArray(lowerElement, id, align, values) {
    if (values == null) return 0;
    const
      length = values.length,
      buffer = exports.__pin(exports.__new(length << align, 1)) >>> 0,
      header = exports.__pin(exports.__new(16, id)) >>> 0;
    __setU32(header + 0, buffer);
    __dataview.setUint32(header + 4, buffer, true);
    __dataview.setUint32(header + 8, length << align, true);
    __dataview.setUint32(header + 12, length, true);
    for (let i = 0; i < length; ++i) lowerElement(buffer + (i << align >>> 0), values[i]);
    exports.__unpin(buffer);
    exports.__unpin(header);
    return header;
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
  function __setU8(pointer, value) {
    try {
      __dataview.setUint8(pointer, value, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      __dataview.setUint8(pointer, value, true);
    }
  }
  function __setU32(pointer, value) {
    try {
      __dataview.setUint32(pointer, value, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      __dataview.setUint32(pointer, value, true);
    }
  }
  function __getU8(pointer) {
    try {
      return __dataview.getUint8(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getUint8(pointer, true);
    }
  }
  function __getI32(pointer) {
    try {
      return __dataview.getInt32(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getInt32(pointer, true);
    }
  }
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
  testRun,
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
