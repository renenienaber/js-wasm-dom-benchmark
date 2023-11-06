(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (type $i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 2224))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 35076))
 (memory $0 1)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\01")
 (data $1 (i32.const 1068) "<")
 (data $1.1 (i32.const 1080) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $2 (i32.const 1132) "<")
 (data $2.1 (i32.const 1144) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $5 (i32.const 1260) "<")
 (data $5.1 (i32.const 1272) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $6 (i32.const 1324) ",")
 (data $6.1 (i32.const 1336) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $8 (i32.const 1404) "<")
 (data $8.1 (i32.const 1416) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $9 (i32.const 1468) "\1c")
 (data $9.1 (i32.const 1480) "\01")
 (data $10 (i32.const 1500) "\1c")
 (data $10.1 (i32.const 1512) "\02")
 (data $11 (i32.const 1532) ",")
 (data $11.1 (i32.const 1544) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $12 (i32.const 1580) ",")
 (data $12.1 (i32.const 1592) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $13 (i32.const 1628) "<")
 (data $13.1 (i32.const 1640) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data $14 (i32.const 1692) "|")
 (data $14.1 (i32.const 1704) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data $15 (i32.const 1820) "<")
 (data $15.1 (i32.const 1832) "\02\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data $16 (i32.const 1884) ",")
 (data $16.1 (i32.const 1896) "\02\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s")
 (data $17 (i32.const 1932) "\1c")
 (data $17.1 (i32.const 1944) "\02\00\00\00\0c\00\00\00i\00g\00n\00o\00r\00e")
 (data $18 (i32.const 1964) "\1c")
 (data $18.1 (i32.const 1976) "\01")
 (data $19 (i32.const 1996) "\1c")
 (data $19.1 (i32.const 2008) "\01")
 (data $20 (i32.const 2028) "\1c")
 (data $20.1 (i32.const 2040) "\01")
 (data $21 (i32.const 2060) "\1c")
 (data $21.1 (i32.const 2072) "\01")
 (data $22 (i32.const 2092) "<")
 (data $22.1 (i32.const 2104) "\02\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data $23 (i32.const 2156) "<")
 (data $23.1 (i32.const 2168) "\02\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data $24 (i32.const 2224) "\14\00\00\00 \00\00\00 \00\00\00 ")
 (data $24.1 (i32.const 2248) "\10A\82\00\02A\00\00 \00\00\00\02A\00\00\02A\00\00\02\t\00\00\00\00\00\00\02A")
 (data $24.2 (i32.const 2292) "\02A")
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "diff" (func $export:assembly/lib/diff/diff))
 (start $~start)
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 1280
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1552
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1712
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1840
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1088
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 2112
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 2176
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load $0 offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load $0 offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1152
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load $0 offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#unlink (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load $0 offset=4
  i32.const -4
  i32.and
  local.tee $1
  i32.eqz
  if
   local.get $0
   i32.load $0 offset=8
   i32.eqz
   local.get $0
   i32.const 35076
   i32.lt_u
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1152
    i32.const 128
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $0
  i32.load $0 offset=8
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 1152
   i32.const 132
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.store $0 offset=8
  local.get $0
  local.get $1
  local.get $0
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store $0 offset=4
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load $0 offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1152
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  local.get $0
  call $~lib/rt/itcms/Object#unlink
  global.get $~lib/rt/itcms/toSpace
  local.set $1
  local.get $0
  i32.load $0 offset=12
  local.tee $2
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $2
   i32.const 2224
   i32.load $0
   i32.gt_u
   if
    i32.const 1280
    i32.const 1344
    i32.const 21
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   i32.const 2
   i32.shl
   i32.const 2228
   i32.add
   i32.load $0
   i32.const 32
   i32.and
  end
  local.set $3
  local.get $1
  i32.load $0 offset=8
  local.set $2
  local.get $0
  global.get $~lib/rt/itcms/white
  i32.eqz
  i32.const 2
  local.get $3
  select
  local.get $1
  i32.or
  i32.store $0 offset=4
  local.get $0
  local.get $2
  i32.store $0 offset=8
  local.get $2
  local.get $0
  local.get $2
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.store $0 offset=8
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load $0
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1424
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1424
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $3
   local.get $2
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $3
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1424
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load $0 offset=8
  local.set $5
  local.get $1
  i32.load $0 offset=4
  local.tee $4
  if
   local.get $4
   local.get $5
   i32.store $0 offset=8
  end
  local.get $5
  if
   local.get $5
   local.get $4
   i32.store $0 offset=4
  end
  local.get $1
  local.get $0
  local.get $3
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load $0 offset=96
  i32.eq
  if
   local.get $0
   local.get $3
   i32.const 4
   i32.shl
   local.get $2
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $5
   i32.store $0 offset=96
   local.get $5
   i32.eqz
   if
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.tee $1
    i32.load $0 offset=4
    i32.const -2
    local.get $2
    i32.rotl
    i32.and
    local.set $2
    local.get $1
    local.get $2
    i32.store $0 offset=4
    local.get $2
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load $0
     i32.const -2
     local.get $3
     i32.rotl
     i32.and
     i32.store $0
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1424
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load $0
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1424
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load $0
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load $0
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store $0
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load $0
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load $0
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load $0
   local.tee $1
   i32.load $0
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1424
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store $0
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store $0
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1424
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $1
  i32.const 4
  i32.add
  local.get $2
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 1424
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store $0
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $5
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $5
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1424
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load $0 offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store $0 offset=4
  local.get $1
  local.get $3
  i32.store $0 offset=8
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store $0 offset=4
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store $0 offset=96
  local.get $0
  local.get $0
  i32.load $0
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  i32.store $0
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load $0 offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store $0 offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  local.get $1
  i64.extend_i32_u
  i64.lt_u
  if
   i32.const 0
   i32.const 1424
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.load $0 offset=1568
  local.tee $4
  if
   local.get $4
   i32.const 4
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1424
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $4
   i32.eq
   if
    local.get $4
    i32.load $0
    local.set $3
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else
   local.get $0
   i32.const 1572
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1424
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.wrap_i64
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $4
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $3
  i32.const 2
  i32.and
  local.get $4
  i32.const 8
  i32.sub
  local.tee $3
  i32.const 1
  i32.or
  i32.or
  i32.store $0
  local.get $1
  i32.const 0
  i32.store $0 offset=4
  local.get $1
  i32.const 0
  i32.store $0 offset=8
  local.get $1
  i32.const 4
  i32.add
  local.get $3
  i32.add
  local.tee $3
  i32.const 2
  i32.store $0
  local.get $0
  local.get $3
  i32.store $0 offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size $0
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $1
   i32.sub
   memory.grow $0
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 35088
  i32.const 0
  i32.store $0
  i32.const 36656
  i32.const 0
  i32.store $0
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 35088
    i32.add
    i32.const 0
    i32.store $0 offset=4
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 16
     i32.lt_u
     if
      local.get $0
      i32.const 4
      i32.shl
      local.get $1
      i32.add
      i32.const 2
      i32.shl
      i32.const 35088
      i32.add
      i32.const 0
      i32.store $0 offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 35088
  i32.const 36660
  memory.size $0
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 35088
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      br_table $case0|0 $case1|0 $case2|0 $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    i32.load $0 offset=4
    i32.const -4
    i32.and
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $1
      local.get $0
      i32.load $0 offset=4
      i32.const 3
      i32.and
      i32.ne
      if
       local.get $0
       local.get $0
       i32.load $0 offset=4
       i32.const -4
       i32.and
       local.get $1
       i32.or
       i32.store $0 offset=4
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       return
      end
      local.get $0
      i32.load $0 offset=4
      i32.const -4
      i32.and
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/toSpace
    global.get $~lib/rt/itcms/iter
    i32.load $0 offset=4
    i32.const -4
    i32.and
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 35076
      i32.lt_u
      if
       local.get $0
       i32.load $0
       local.tee $2
       if
        local.get $2
        call $byn-split-outlined-A$~lib/rt/itcms/__visit
       end
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     global.get $~lib/rt/itcms/iter
     i32.load $0 offset=4
     i32.const -4
     i32.and
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $1
       local.get $0
       i32.load $0 offset=4
       i32.const 3
       i32.and
       i32.ne
       if
        local.get $0
        local.get $0
        i32.load $0 offset=4
        i32.const -4
        i32.and
        local.get $1
        i32.or
        i32.store $0 offset=4
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       i32.load $0 offset=4
       i32.const -4
       i32.and
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $0
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $0
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $0
     i32.load $0 offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    return
   end
   global.get $~lib/rt/itcms/iter
   local.tee $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    i32.load $0 offset=4
    local.tee $1
    i32.const -4
    i32.and
    global.set $~lib/rt/itcms/iter
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.get $1
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1152
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 35076
    i32.lt_u
    if
     local.get $0
     i32.const 0
     i32.store $0 offset=4
     local.get $0
     i32.const 0
     i32.store $0 offset=8
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     i32.load $0
     i32.const -4
     i32.and
     i32.const 4
     i32.add
     i32.sub
     global.set $~lib/rt/itcms/total
     local.get $0
     i32.const 4
     i32.add
     local.tee $0
     i32.const 35076
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.set $1
      local.get $0
      i32.const 4
      i32.sub
      local.set $2
      local.get $0
      i32.const 15
      i32.and
      i32.const 1
      local.get $0
      select
      if (result i32)
       i32.const 1
      else
       local.get $2
       i32.load $0
       i32.const 1
       i32.and
      end
      if
       i32.const 0
       i32.const 1424
       i32.const 562
       i32.const 3
       call $~lib/builtins/abort
       unreachable
      end
      local.get $2
      local.get $2
      i32.load $0
      i32.const 1
      i32.or
      i32.store $0
      local.get $1
      local.get $2
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   local.tee $0
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.store $0 offset=8
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   local.get $1
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   i32.add
   i32.const 1
   i32.sub
   local.get $1
   local.get $1
   i32.const 536870910
   i32.lt_u
   select
   local.tee $1
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $2
   local.get $1
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $1
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1424
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load $0 offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load $0 offset=96
  else
   local.get $0
   i32.load $0
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load $0 offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1424
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load $0 offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1088
   i32.const 1152
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt
    i32.const 2048
    local.set $2
    loop $do-loop|0
     local.get $2
     call $~lib/rt/itcms/step
     i32.sub
     local.set $2
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
      global.get $~lib/rt/itcms/total
      i64.extend_i32_u
      i64.const 200
      i64.mul
      i64.const 100
      i64.div_u
      i32.wrap_i64
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    local.tee $2
    local.get $2
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.set $4
  local.get $0
  i32.const 16
  i32.add
  local.tee $2
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1088
   i32.const 1424
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 12
  local.get $2
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $2
  i32.const 12
  i32.le_u
  select
  local.tee $5
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   memory.size $0
   local.tee $2
   local.get $5
   i32.const 256
   i32.ge_u
   if (result i32)
    local.get $5
    i32.const 1
    i32.const 27
    local.get $5
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
    local.get $5
    local.get $5
    i32.const 536870910
    i32.lt_u
    select
   else
    local.get $5
   end
   i32.const 4
   local.get $4
   i32.load $0 offset=1568
   local.get $2
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $2
   local.get $3
   i32.gt_s
   select
   memory.grow $0
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow $0
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $4
   local.get $2
   i32.const 16
   i32.shl
   memory.size $0
   i64.extend_i32_s
   i64.const 16
   i64.shl
   call $~lib/rt/tlsf/addMemory
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1424
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $5
  local.get $2
  i32.load $0
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1424
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $2
  i32.load $0
  local.set $3
  local.get $5
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1424
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $5
  i32.sub
  local.tee $6
  i32.const 16
  i32.ge_u
  if
   local.get $2
   local.get $5
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store $0
   local.get $2
   i32.const 4
   i32.add
   local.get $5
   i32.add
   local.tee $3
   local.get $6
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store $0
   local.get $4
   local.get $3
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $2
   local.get $3
   i32.const -2
   i32.and
   i32.store $0
   local.get $2
   i32.const 4
   i32.add
   local.get $2
   i32.load $0
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   local.get $3
   i32.load $0
   i32.const -3
   i32.and
   i32.store $0
  end
  local.get $2
  local.get $1
  i32.store $0 offset=12
  local.get $2
  local.get $0
  i32.store $0 offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $1
  i32.load $0 offset=8
  local.set $3
  local.get $2
  local.get $1
  global.get $~lib/rt/itcms/white
  i32.or
  i32.store $0 offset=4
  local.get $2
  local.get $3
  i32.store $0 offset=8
  local.get $3
  local.get $2
  local.get $3
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store $0 offset=4
  local.get $1
  local.get $2
  i32.store $0 offset=8
  global.get $~lib/rt/itcms/total
  local.get $2
  i32.load $0
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.tee $1
  i32.const 0
  local.get $0
  memory.fill $0
  local.get $1
 )
 (func $~lib/rt/itcms/__pin (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $1
   i32.load $0 offset=4
   i32.const 3
   i32.and
   i32.const 3
   i32.eq
   if
    i32.const 2112
    i32.const 1152
    i32.const 338
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   global.get $~lib/rt/itcms/pinSpace
   local.tee $3
   i32.load $0 offset=8
   local.set $2
   local.get $1
   local.get $3
   i32.const 3
   i32.or
   i32.store $0 offset=4
   local.get $1
   local.get $2
   i32.store $0 offset=8
   local.get $2
   local.get $1
   local.get $2
   i32.load $0 offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store $0 offset=4
   local.get $3
   local.get $1
   i32.store $0 offset=8
  end
  local.get $0
 )
 (func $~lib/rt/itcms/__unpin (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.tee $1
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.const 3
  i32.ne
  if
   i32.const 2176
   i32.const 1152
   i32.const 352
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/state
  i32.const 1
  i32.eq
  if
   local.get $1
   call $~lib/rt/itcms/Object#makeGray
  else
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   global.get $~lib/rt/itcms/fromSpace
   local.tee $0
   i32.load $0 offset=8
   local.set $2
   local.get $1
   local.get $0
   global.get $~lib/rt/itcms/white
   i32.or
   i32.store $0 offset=4
   local.get $1
   local.get $2
   i32.store $0 offset=8
   local.get $2
   local.get $1
   local.get $2
   i32.load $0 offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store $0 offset=4
   local.get $0
   local.get $1
   i32.store $0 offset=8
  end
 )
 (func $~lib/rt/itcms/__collect
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    if
     call $~lib/rt/itcms/step
     drop
     br $while-continue|0
    end
   end
  end
  call $~lib/rt/itcms/step
  drop
  loop $while-continue|1
   global.get $~lib/rt/itcms/state
   if
    call $~lib/rt/itcms/step
    drop
    br $while-continue|1
   end
  end
  global.get $~lib/rt/itcms/total
  i64.extend_i32_u
  i64.const 200
  i64.mul
  i64.const 100
  i64.div_u
  i32.wrap_i64
  i32.const 1024
  i32.add
  global.set $~lib/rt/itcms/threshold
 )
 (func $assembly/lib/models/element/VElement~visit (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load $0
  local.tee $1
  if
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=4
  local.tee $1
  if
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=8
  local.tee $1
  if
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=16
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner3
   block $folding-inner2
    block $folding-inner1
     block $folding-inner0
      block $invalid
       block $assembly/lib/models/element/EmptyVElement
        block $assembly/lib/models/list-diff2.model/Move
         block $assembly/lib/models/list-diff2.model/DiffResult
          block $~lib/array/Array<i32>
           block $assembly/lib/models/patch.model/Patch
            block $~lib/map/Map<~lib/string/String,~lib/string/String>
             block $assembly/lib/models/element/VElement
              block $~lib/arraybuffer/ArrayBufferView
               block $~lib/string/String
                block $~lib/arraybuffer/ArrayBuffer
                 block $~lib/object/Object
                  local.get $0
                  i32.const 8
                  i32.sub
                  i32.load $0
                  br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $assembly/lib/models/element/VElement $~lib/map/Map<~lib/string/String,~lib/string/String> $folding-inner0 $assembly/lib/models/patch.model/Patch $folding-inner0 $folding-inner0 $~lib/array/Array<i32> $folding-inner1 $folding-inner0 $folding-inner1 $assembly/lib/models/list-diff2.model/DiffResult $assembly/lib/models/list-diff2.model/Move $folding-inner0 $assembly/lib/models/element/EmptyVElement $folding-inner1 $folding-inner1 $invalid
                 end
                 return
                end
                return
               end
               return
              end
              local.get $0
              i32.load $0
              local.tee $0
              if
               local.get $0
               call $byn-split-outlined-A$~lib/rt/itcms/__visit
              end
              return
             end
             local.get $0
             call $assembly/lib/models/element/VElement~visit
             return
            end
            global.get $~lib/memory/__stack_pointer
            i32.const 4
            i32.sub
            global.set $~lib/memory/__stack_pointer
            global.get $~lib/memory/__stack_pointer
            i32.const 2308
            i32.lt_s
            br_if $folding-inner2
            global.get $~lib/memory/__stack_pointer
            local.tee $1
            i32.const 0
            i32.store $0
            local.get $1
            local.get $0
            local.tee $1
            i32.store $0
            local.get $0
            i32.load $0
            local.tee $0
            if
             local.get $0
             call $byn-split-outlined-A$~lib/rt/itcms/__visit
            end
            global.get $~lib/memory/__stack_pointer
            local.tee $2
            local.get $1
            i32.store $0
            local.get $1
            i32.load $0 offset=8
            local.tee $3
            local.set $0
            local.get $2
            local.get $1
            i32.store $0
            local.get $0
            local.get $1
            i32.load $0 offset=16
            i32.const 12
            i32.mul
            i32.add
            local.set $1
            loop $while-continue|0
             local.get $0
             local.get $1
             i32.lt_u
             if
              local.get $0
              i32.load $0 offset=8
              i32.const 1
              i32.and
              i32.eqz
              if
               local.get $0
               i32.load $0
               local.tee $2
               if
                local.get $2
                call $byn-split-outlined-A$~lib/rt/itcms/__visit
               end
               local.get $0
               i32.load $0 offset=4
               local.tee $2
               if
                local.get $2
                call $byn-split-outlined-A$~lib/rt/itcms/__visit
               end
              end
              local.get $0
              i32.const 12
              i32.add
              local.set $0
              br $while-continue|0
             end
            end
            local.get $3
            if
             local.get $3
             call $byn-split-outlined-A$~lib/rt/itcms/__visit
            end
            global.get $~lib/memory/__stack_pointer
            i32.const 4
            i32.add
            global.set $~lib/memory/__stack_pointer
            return
           end
           return
          end
          global.get $~lib/memory/__stack_pointer
          i32.const 4
          i32.sub
          global.set $~lib/memory/__stack_pointer
          global.get $~lib/memory/__stack_pointer
          i32.const 2308
          i32.lt_s
          br_if $folding-inner2
          global.get $~lib/memory/__stack_pointer
          local.tee $1
          i32.const 0
          i32.store $0
          local.get $1
          local.get $0
          i32.store $0
          br $folding-inner3
         end
         local.get $0
         i32.load $0
         local.tee $1
         if
          local.get $1
          call $byn-split-outlined-A$~lib/rt/itcms/__visit
         end
         local.get $0
         i32.load $0 offset=4
         local.tee $0
         if
          local.get $0
          call $byn-split-outlined-A$~lib/rt/itcms/__visit
         end
         return
        end
        local.get $0
        i32.load $0 offset=8
        local.tee $0
        if
         local.get $0
         call $byn-split-outlined-A$~lib/rt/itcms/__visit
        end
        return
       end
       local.get $0
       call $assembly/lib/models/element/VElement~visit
       return
      end
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 2308
     i32.lt_s
     br_if $folding-inner2
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     i32.const 0
     i32.store $0
     local.get $2
     local.get $0
     i32.store $0
     local.get $0
     i32.load $0 offset=4
     local.set $1
     local.get $2
     local.get $0
     i32.store $0
     local.get $1
     local.get $0
     i32.load $0 offset=12
     i32.const 2
     i32.shl
     i32.add
     local.set $2
     loop $while-continue|00
      local.get $1
      local.get $2
      i32.lt_u
      if
       local.get $1
       i32.load $0
       local.tee $3
       if
        local.get $3
        call $byn-split-outlined-A$~lib/rt/itcms/__visit
       end
       local.get $1
       i32.const 4
       i32.add
       local.set $1
       br $while-continue|00
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0
     br $folding-inner3
    end
    local.get $0
    i32.load $0 offset=4
    local.tee $0
    if
     local.get $0
     call $byn-split-outlined-A$~lib/rt/itcms/__visit
    end
    return
   end
   i32.const 35104
   i32.const 35152
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load $0
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~start
  memory.size $0
  i32.const 16
  i32.shl
  i32.const 35076
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1204
  i32.const 1200
  i32.store $0
  i32.const 1208
  i32.const 1200
  i32.store $0
  i32.const 1200
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1236
  i32.const 1232
  i32.store $0
  i32.const 1240
  i32.const 1232
  i32.store $0
  i32.const 1232
  global.set $~lib/rt/itcms/toSpace
  i32.const 1380
  i32.const 1376
  i32.store $0
  i32.const 1384
  i32.const 1376
  i32.store $0
  i32.const 1376
  global.set $~lib/rt/itcms/fromSpace
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2308
  i32.lt_s
  if
   i32.const 35104
   i32.const 35152
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $0
  local.get $1
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  block $folding-inner0
   local.get $1
   i32.eqz
   local.get $0
   i32.eqz
   i32.or
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const 1
   i32.shr_u
   local.set $3
   local.get $2
   local.get $1
   i32.store $0
   local.get $3
   local.get $1
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const 1
   i32.shr_u
   i32.ne
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store $0
   local.get $2
   local.get $1
   i32.store $0 offset=4
   local.get $0
   local.tee $2
   i32.const 7
   i32.and
   local.get $1
   i32.const 7
   i32.and
   i32.or
   i32.eqz
   local.get $3
   local.tee $0
   i32.const 4
   i32.ge_u
   i32.and
   if
    loop $do-loop|0
     local.get $2
     i64.load $0
     local.get $1
     i64.load $0
     i64.eq
     if
      local.get $2
      i32.const 8
      i32.add
      local.set $2
      local.get $1
      i32.const 8
      i32.add
      local.set $1
      local.get $0
      i32.const 4
      i32.sub
      local.tee $0
      i32.const 4
      i32.ge_u
      br_if $do-loop|0
     end
    end
   end
   block $__inlined_func$~lib/util/string/compareImpl
    loop $while-continue|1
     local.get $0
     local.tee $3
     i32.const 1
     i32.sub
     local.set $0
     local.get $3
     if
      local.get $2
      i32.load16_u $0
      local.tee $5
      local.get $1
      i32.load16_u $0
      local.tee $4
      i32.sub
      local.set $3
      local.get $4
      local.get $5
      i32.ne
      br_if $__inlined_func$~lib/util/string/compareImpl
      local.get $2
      i32.const 2
      i32.add
      local.set $2
      local.get $1
      i32.const 2
      i32.add
      local.set $1
      br $while-continue|1
     end
    end
    i32.const 0
    local.set $3
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   i32.eqz
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $~lib/string/String.__ne (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2308
  i32.lt_s
  if
   i32.const 35104
   i32.const 35152
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $2
  local.get $1
  i32.store $0 offset=4
  local.get $0
  local.get $1
  call $~lib/string/String.__eq
  i32.eqz
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/lib/models/element/VElement#isText (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2308
  i32.lt_s
  if
   i32.const 35104
   i32.const 35152
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store $0
  local.get $1
  i32.const 0
  i32.store $0 offset=8
  local.get $1
  local.get $0
  i32.store $0 offset=8
  local.get $1
  local.get $0
  i32.load $0 offset=16
  local.tee $0
  i32.store $0
  local.get $1
  i32.const 1520
  i32.store $0 offset=4
  local.get $0
  i32.const 1520
  call $~lib/string/String.__ne
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2308
  i32.lt_s
  if
   i32.const 35104
   i32.const 35152
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store $0
  local.get $3
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=8
  local.tee $4
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1552
    i32.const 1600
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0
   local.set $3
   i32.const 8
   local.get $1
   local.get $1
   i32.const 8
   i32.le_u
   select
   i32.const 2
   i32.shl
   local.set $1
   local.get $2
   if
    i32.const 1073741820
    local.get $4
    i32.const 1
    i32.shl
    local.tee $2
    local.get $2
    i32.const 1073741820
    i32.ge_u
    select
    local.tee $2
    local.get $1
    local.get $1
    local.get $2
    i32.lt_u
    select
    local.set $1
   end
   block $__inlined_func$~lib/rt/itcms/__renew
    local.get $3
    i32.const 20
    i32.sub
    local.tee $4
    i32.load $0
    i32.const -4
    i32.and
    i32.const 16
    i32.sub
    local.get $1
    i32.ge_u
    if
     local.get $4
     local.get $1
     i32.store $0 offset=16
     local.get $3
     local.set $2
     br $__inlined_func$~lib/rt/itcms/__renew
    end
    local.get $1
    local.get $4
    i32.load $0 offset=12
    call $~lib/rt/itcms/__new
    local.tee $2
    local.get $3
    local.get $1
    local.get $4
    i32.load $0 offset=16
    local.tee $4
    local.get $1
    local.get $4
    i32.lt_u
    select
    memory.copy $0 $0
   end
   local.get $2
   local.get $3
   i32.ne
   if
    local.get $0
    local.get $2
    i32.store $0
    local.get $0
    local.get $2
    i32.store $0 offset=4
    local.get $2
    if
     local.get $0
     local.get $2
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
   end
   local.get $0
   local.get $1
   i32.store $0 offset=8
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<assembly/lib/models/patch.model/Patch>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2308
  i32.lt_s
  if
   i32.const 35104
   i32.const 35152
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $0
  i32.load $0 offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  i32.const 1
  call $~lib/array/ensureCapacity
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store $0
  local.get $1
  if
   local.get $0
   local.get $1
   i32.const 1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0
  local.get $0
  local.get $3
  i32.store $0 offset=12
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2308
  i32.lt_s
  if
   i32.const 35104
   i32.const 35152
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=8
  local.get $0
  i32.const 24
  i32.const 5
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0
  local.get $1
  if
   local.get $0
   local.get $1
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 3
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.store $0 offset=4
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $1
  if
   local.get $0
   local.get $1
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 4
  i32.store $0 offset=12
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=16
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=20
  local.get $1
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<~lib/string/String>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2308
  i32.lt_s
  if
   i32.const 35104
   i32.const 35152
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store $0
  local.get $3
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1280
    i32.const 1600
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   call $~lib/array/ensureCapacity
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   local.get $3
   i32.store $0 offset=12
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store $0
  local.get $2
  if
   local.get $0
   local.get $2
   i32.const 1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>#keys (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 2308
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $6
   i64.const 0
   i64.store $0
   local.get $6
   i32.const 0
   i32.store $0 offset=8
   local.get $6
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=8
   local.set $3
   local.get $6
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=16
   local.set $0
   local.get $6
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2308
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i64.const 0
   i64.store $0
   local.get $4
   i64.const 0
   i64.store $0 offset=8
   local.get $4
   i32.const 16
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $7
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store $0 offset=4
   local.get $7
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $7
   i32.store $0 offset=4
   local.get $7
   i32.const 0
   i32.store $0 offset=4
   local.get $4
   local.get $7
   i32.store $0 offset=4
   local.get $7
   i32.const 0
   i32.store $0 offset=8
   local.get $4
   local.get $7
   i32.store $0 offset=4
   local.get $7
   i32.const 0
   i32.store $0 offset=12
   local.get $0
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1552
    i32.const 1600
    i32.const 70
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   local.get $0
   local.get $0
   i32.const 8
   i32.le_u
   select
   i32.const 2
   i32.shl
   local.tee $8
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0 offset=12
   local.get $7
   local.get $4
   i32.store $0
   local.get $4
   if
    local.get $7
    local.get $4
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $7
   i32.store $0 offset=4
   local.get $7
   local.get $4
   i32.store $0 offset=4
   local.get $5
   local.get $7
   i32.store $0 offset=4
   local.get $7
   local.get $8
   i32.store $0 offset=8
   local.get $5
   local.get $7
   i32.store $0 offset=4
   local.get $7
   local.get $0
   i32.store $0 offset=12
   local.get $5
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   local.get $7
   i32.store $0 offset=4
   loop $for-loop|0
    local.get $0
    local.get $2
    i32.gt_s
    if
     local.get $3
     local.get $2
     i32.const 12
     i32.mul
     i32.add
     local.tee $4
     i32.load $0 offset=8
     i32.const 1
     i32.and
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $5
      local.get $7
      i32.store $0
      local.get $5
      local.get $4
      i32.load $0
      local.tee $4
      i32.store $0 offset=8
      local.get $7
      local.get $1
      local.get $4
      call $~lib/array/Array<~lib/string/String>#__set
      local.get $1
      i32.const 1
      i32.add
      local.set $1
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $7
   i32.store $0
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2308
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store $0
   local.get $7
   local.get $1
   i32.const 0
   call $~lib/array/ensureCapacity
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store $0
   local.get $7
   local.get $1
   i32.store $0 offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $7
   return
  end
  i32.const 35104
  i32.const 35152
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<~lib/string/String>#get:length (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2308
  i32.lt_s
  if
   i32.const 35104
   i32.const 35152
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=12
  local.set $0
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<~lib/string/String>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2308
  i32.lt_s
  if
   i32.const 35104
   i32.const 35152
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=12
  i32.ge_u
  if
   i32.const 1280
   i32.const 1600
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0
  local.get $2
  local.get $0
  i32.load $0 offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.tee $0
  i32.store $0 offset=4
  local.get $0
  i32.eqz
  if
   i32.const 1712
   i32.const 1600
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/util/hash/HASH<~lib/string/String> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2308
  i32.lt_s
  if
   i32.const 35104
   i32.const 35152
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store $0
  block $~lib/util/hash/hashStr|inlined.0 (result i32)
   local.get $1
   local.get $0
   i32.store $0
   i32.const 0
   local.get $0
   i32.eqz
   br_if $~lib/util/hash/hashStr|inlined.0
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $0
   local.tee $1
   i32.store $0 offset=4
   local.get $1
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const -2
   i32.and
   local.tee $3
   i32.const 16
   i32.ge_u
   if (result i32)
    i32.const 606290984
    local.set $2
    i32.const -2048144777
    local.set $4
    i32.const 1640531535
    local.set $5
    local.get $1
    local.get $3
    i32.add
    i32.const 16
    i32.sub
    local.set $7
    loop $while-continue|0
     local.get $1
     local.get $7
     i32.le_u
     if
      local.get $2
      local.get $1
      i32.load $0
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $2
      local.get $4
      local.get $1
      i32.load $0 offset=4
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $4
      local.get $6
      local.get $1
      i32.load $0 offset=8
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $6
      local.get $5
      local.get $1
      i32.load $0 offset=12
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $5
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      br $while-continue|0
     end
    end
    local.get $3
    local.get $2
    i32.const 1
    i32.rotl
    local.get $4
    i32.const 7
    i32.rotl
    i32.add
    local.get $6
    i32.const 12
    i32.rotl
    i32.add
    local.get $5
    i32.const 18
    i32.rotl
    i32.add
    i32.add
   else
    local.get $3
    i32.const 374761393
    i32.add
   end
   local.set $2
   local.get $0
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.set $4
   loop $while-continue|1
    local.get $1
    local.get $4
    i32.le_u
    if
     local.get $2
     local.get $1
     i32.load $0
     i32.const -1028477379
     i32.mul
     i32.add
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.set $2
     local.get $1
     i32.const 4
     i32.add
     local.set $1
     br $while-continue|1
    end
   end
   local.get $0
   local.get $3
   i32.add
   local.set $0
   loop $while-continue|2
    local.get $0
    local.get $1
    i32.gt_u
    if
     local.get $2
     local.get $1
     i32.load8_u $0
     i32.const 374761393
     i32.mul
     i32.add
     i32.const 11
     i32.rotl
     i32.const -1640531535
     i32.mul
     local.set $2
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $while-continue|2
    end
   end
   local.get $2
   local.get $2
   i32.const 15
   i32.shr_u
   i32.xor
   i32.const -2048144777
   i32.mul
   local.tee $0
   local.get $0
   i32.const 13
   i32.shr_u
   i32.xor
   i32.const -1028477379
   i32.mul
   local.tee $0
   local.get $0
   i32.const 16
   i32.shr_u
   i32.xor
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2308
  i32.lt_s
  if
   i32.const 35104
   i32.const 35152
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i64.const 0
  i64.store $0
  local.get $3
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0
  local.set $4
  local.get $3
  local.get $0
  i32.store $0
  local.get $4
  local.get $2
  local.get $0
  i32.load $0 offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.set $2
  loop $while-continue|0
   local.get $2
   if
    local.get $2
    i32.load $0 offset=8
    local.tee $0
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $2
     i32.load $0
     local.tee $4
     i32.store $0
     local.get $3
     local.get $1
     i32.store $0 offset=4
     local.get $4
     local.get $1
     call $~lib/string/String.__eq
    end
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $2
     return
    end
    local.get $0
    i32.const -2
    i32.and
    local.set $2
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>#get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2308
  i32.lt_s
  if
   i32.const 35104
   i32.const 35152
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  i32.const 0
  i32.store $0 offset=8
  local.get $2
  local.get $0
  i32.store $0
  local.get $2
  local.get $1
  i32.store $0 offset=4
  local.get $2
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#find
  local.tee $0
  i32.eqz
  if
   i32.const 1840
   i32.const 1904
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load $0 offset=4
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>#has (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2308
  i32.lt_s
  if
   i32.const 35104
   i32.const 35152
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  i32.const 0
  i32.store $0 offset=8
  local.get $2
  local.get $0
  i32.store $0
  local.get $2
  local.get $1
  i32.store $0 offset=4
  local.get $2
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#find
  i32.const 0
  i32.ne
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>#set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 2308
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store $0
   local.get $3
   i32.const 0
   i32.store $0 offset=8
   local.get $3
   local.get $1
   i32.store $0
   local.get $1
   call $~lib/util/hash/HASH<~lib/string/String>
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=4
   local.get $0
   local.get $1
   local.get $7
   call $~lib/map/Map<~lib/string/String,~lib/string/String>#find
   local.tee $3
   if
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store $0
    local.get $3
    local.get $2
    i32.store $0 offset=4
    local.get $2
    if
     local.get $0
     local.get $2
     i32.const 1
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
   else
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $0
    i32.store $0
    local.get $0
    i32.load $0 offset=16
    local.set $4
    local.get $3
    local.get $0
    i32.store $0
    local.get $4
    local.get $0
    i32.load $0 offset=12
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $0
     i32.store $0
     local.get $3
     local.get $0
     i32.store $0 offset=4
     local.get $0
     i32.load $0 offset=20
     local.set $4
     local.get $3
     local.get $0
     i32.store $0 offset=4
     local.get $4
     local.get $0
     i32.load $0 offset=12
     i32.const 3
     i32.mul
     i32.const 4
     i32.div_s
     i32.lt_s
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store $0 offset=4
      local.get $0
      i32.load $0 offset=4
     else
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store $0 offset=4
      local.get $0
      i32.load $0 offset=4
      i32.const 1
      i32.shl
      i32.const 1
      i32.or
     end
     local.set $6
     global.get $~lib/memory/__stack_pointer
     i32.const 20
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 2308
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     i32.const 0
     i32.const 20
     memory.fill $0
     local.get $3
     local.get $6
     i32.const 1
     i32.add
     local.tee $3
     i32.const 2
     i32.shl
     call $~lib/arraybuffer/ArrayBuffer#constructor
     local.tee $11
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.const 3
     i32.shl
     i32.const 3
     i32.div_s
     local.tee $8
     i32.const 12
     i32.mul
     call $~lib/arraybuffer/ArrayBuffer#constructor
     local.tee $4
     i32.store $0 offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=8
     local.get $0
     i32.load $0 offset=8
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=8
     local.get $5
     local.get $0
     i32.load $0 offset=16
     i32.const 12
     i32.mul
     i32.add
     local.set $9
     local.get $4
     local.set $3
     loop $while-continue|0
      local.get $5
      local.get $9
      i32.ne
      if
       local.get $5
       i32.load $0 offset=8
       i32.const 1
       i32.and
       i32.eqz
       if
        global.get $~lib/memory/__stack_pointer
        local.tee $13
        local.get $5
        i32.load $0
        local.tee $12
        i32.store $0 offset=12
        local.get $13
        local.get $12
        i32.store $0 offset=8
        local.get $3
        local.get $12
        i32.store $0
        local.get $13
        local.get $5
        i32.load $0 offset=4
        local.tee $10
        i32.store $0 offset=8
        local.get $3
        local.get $10
        i32.store $0 offset=4
        local.get $13
        local.get $12
        i32.store $0 offset=8
        local.get $3
        local.get $11
        local.get $12
        call $~lib/util/hash/HASH<~lib/string/String>
        local.get $6
        i32.and
        i32.const 2
        i32.shl
        i32.add
        local.tee $10
        i32.load $0
        i32.store $0 offset=8
        local.get $10
        local.get $3
        i32.store $0
        local.get $3
        i32.const 12
        i32.add
        local.set $3
       end
       local.get $5
       i32.const 12
       i32.add
       local.set $5
       br $while-continue|0
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $0
     i32.store $0 offset=8
     local.get $3
     local.get $11
     i32.store $0 offset=16
     local.get $0
     local.get $11
     i32.store $0
     local.get $11
     if
      local.get $0
      local.get $11
      i32.const 0
      call $byn-split-outlined-A$~lib/rt/itcms/__link
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $0
     i32.store $0 offset=8
     local.get $0
     local.get $6
     i32.store $0 offset=4
     local.get $3
     local.get $0
     i32.store $0 offset=8
     local.get $3
     local.get $4
     i32.store $0 offset=16
     local.get $0
     local.get $4
     i32.store $0 offset=8
     local.get $4
     if
      local.get $0
      local.get $4
      i32.const 0
      call $byn-split-outlined-A$~lib/rt/itcms/__link
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $0
     i32.store $0 offset=8
     local.get $0
     local.get $8
     i32.store $0 offset=12
     local.get $3
     local.get $0
     i32.store $0 offset=8
     local.get $3
     local.get $0
     i32.store $0 offset=16
     local.get $0
     local.get $0
     i32.load $0 offset=20
     i32.store $0 offset=16
     local.get $3
     i32.const 20
     i32.add
     global.set $~lib/memory/__stack_pointer
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $0
    i32.store $0
    local.get $3
    local.get $0
    i32.load $0 offset=8
    local.tee $4
    i32.store $0 offset=8
    local.get $3
    local.get $0
    i32.store $0
    local.get $3
    local.get $0
    i32.store $0 offset=4
    local.get $0
    local.get $0
    i32.load $0 offset=16
    local.tee $5
    i32.const 1
    i32.add
    i32.store $0 offset=16
    local.get $3
    local.get $1
    i32.store $0
    local.get $4
    local.get $5
    i32.const 12
    i32.mul
    i32.add
    local.tee $3
    local.get $1
    i32.store $0
    local.get $1
    if
     local.get $0
     local.get $1
     i32.const 1
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store $0
    local.get $3
    local.get $2
    i32.store $0 offset=4
    local.get $2
    if
     local.get $0
     local.get $2
     i32.const 1
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store $0
    local.get $1
    local.get $0
    i32.store $0 offset=4
    local.get $0
    local.get $0
    i32.load $0 offset=20
    i32.const 1
    i32.add
    i32.store $0 offset=20
    local.get $1
    local.get $0
    i32.store $0
    local.get $0
    i32.load $0
    local.set $2
    local.get $1
    local.get $0
    i32.store $0
    local.get $3
    local.get $2
    local.get $7
    local.get $0
    i32.load $0 offset=4
    i32.and
    i32.const 2
    i32.shl
    i32.add
    local.tee $0
    i32.load $0
    i32.store $0 offset=8
    local.get $0
    local.get $3
    i32.store $0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 35104
  i32.const 35152
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/lib/diff/diffProps (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2308
  i32.lt_s
  if
   i32.const 35104
   i32.const 35152
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  i32.const 0
  i32.const 52
  memory.fill $0
  local.get $5
  local.get $0
  i32.store $0
  local.get $5
  local.get $0
  i32.load $0 offset=4
  local.tee $6
  i32.store $0 offset=4
  local.get $5
  local.get $1
  i32.store $0
  local.get $5
  local.get $1
  i32.load $0 offset=4
  local.tee $0
  i32.store $0 offset=8
  local.get $5
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#constructor
  local.tee $1
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $6
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#keys
  local.tee $5
  i32.store $0 offset=16
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store $0
   local.get $5
   call $~lib/array/Array<~lib/string/String>#get:length
   local.get $4
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $7
    local.get $5
    i32.store $0
    local.get $7
    local.get $5
    local.get $4
    call $~lib/array/Array<~lib/string/String>#__get
    local.tee $7
    i32.store $0 offset=20
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store $0 offset=24
    global.get $~lib/memory/__stack_pointer
    local.get $6
    local.get $7
    call $~lib/map/Map<~lib/string/String,~lib/string/String>#get
    local.tee $8
    i32.store $0 offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store $0 offset=24
    local.get $0
    local.get $7
    call $~lib/map/Map<~lib/string/String,~lib/string/String>#has
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.tee $9
     local.get $0
     i32.store $0 offset=32
     local.get $9
     local.get $7
     i32.store $0 offset=36
     local.get $0
     local.get $7
     call $~lib/map/Map<~lib/string/String,~lib/string/String>#get
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store $0 offset=24
     local.get $9
     local.get $8
     call $~lib/string/String.__ne
    else
     i32.const 0
    end
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $8
     local.get $1
     i32.store $0
     local.get $8
     local.get $7
     i32.store $0 offset=24
     local.get $8
     local.get $0
     i32.store $0 offset=36
     local.get $8
     local.get $7
     i32.store $0 offset=40
     local.get $0
     local.get $7
     call $~lib/map/Map<~lib/string/String,~lib/string/String>#get
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store $0 offset=32
     local.get $1
     local.get $7
     local.get $8
     call $~lib/map/Map<~lib/string/String,~lib/string/String>#set
     local.get $2
     i32.const 1
     i32.add
     local.set $2
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  local.get $0
  i32.store $0
  local.get $4
  local.get $0
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#keys
  local.tee $4
  i32.store $0 offset=44
  loop $for-loop|1
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0
   local.get $4
   call $~lib/array/Array<~lib/string/String>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    local.get $4
    i32.store $0
    local.get $5
    local.get $4
    local.get $3
    call $~lib/array/Array<~lib/string/String>#__get
    local.tee $5
    i32.store $0 offset=48
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store $0 offset=24
    local.get $6
    local.get $5
    call $~lib/map/Map<~lib/string/String,~lib/string/String>#has
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $7
     local.get $1
     i32.store $0
     local.get $7
     local.get $5
     i32.store $0 offset=24
     local.get $7
     local.get $0
     i32.store $0 offset=36
     local.get $7
     local.get $5
     i32.store $0 offset=40
     local.get $0
     local.get $5
     call $~lib/map/Map<~lib/string/String,~lib/string/String>#get
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store $0 offset=32
     local.get $1
     local.get $5
     local.get $7
     call $~lib/map/Map<~lib/string/String,~lib/string/String>#set
     local.get $2
     i32.const 1
     i32.add
     local.set $2
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $assembly/lib/models/list-diff2.model/Move#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2308
  i32.lt_s
  if
   i32.const 35104
   i32.const 35152
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i64.const 0
  i64.store $0
  local.get $3
  i32.const 0
  i32.store $0 offset=8
  local.get $3
  i32.const 12
  i32.const 15
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  i32.store $0
  local.get $4
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  i32.store $0 offset=4
  local.get $4
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $0
  i32.store $0
  local.get $4
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $2
  i32.store $0 offset=4
  local.get $4
  local.get $3
  i32.store $0 offset=4
  local.get $4
  local.get $1
  i32.store $0 offset=8
  local.get $3
  local.get $1
  i32.store $0 offset=8
  local.get $1
  if
   local.get $3
   local.get $1
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/lib/models/element/VElement#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 2308
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 28
   memory.fill $0
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 21
    i32.const 4
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store $0
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $0
   i32.store $0 offset=4
   local.get $5
   i32.const 1520
   i32.store $0 offset=8
   local.get $0
   i32.const 1520
   i32.store $0
   local.get $0
   i32.const 1520
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   call $~lib/map/Map<~lib/string/String,~lib/string/String>#constructor
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store $0 offset=8
   local.get $0
   local.get $5
   i32.store $0 offset=4
   local.get $5
   if
    local.get $0
    local.get $5
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   i32.const 0
   i32.const 6
   i32.const 2048
   call $~lib/rt/__newArray
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store $0 offset=8
   local.get $0
   local.get $5
   i32.store $0 offset=8
   local.get $5
   if
    local.get $0
    local.get $5
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.const 0
   i32.store $0 offset=12
   local.get $5
   local.get $0
   i32.store $0 offset=4
   local.get $5
   i32.const 1520
   i32.store $0 offset=8
   local.get $0
   i32.const 1520
   i32.store $0 offset=16
   local.get $0
   i32.const 1520
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.const 0
   i32.store8 $0 offset=20
   local.get $5
   local.get $0
   i32.store $0 offset=4
   local.get $5
   i32.const 1520
   i32.store $0 offset=8
   local.get $0
   i32.const 1520
   i32.store $0
   local.get $0
   i32.const 1520
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $0
   i32.store $0 offset=4
   local.get $5
   local.get $1
   i32.store $0 offset=8
   local.get $0
   local.get $1
   i32.store $0 offset=4
   local.get $1
   if
    local.get $0
    local.get $1
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0 offset=4
   local.get $1
   local.get $2
   i32.store $0 offset=8
   local.get $0
   local.tee $1
   local.get $2
   i32.store $0 offset=8
   local.get $2
   if
    local.get $1
    local.get $2
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store $0 offset=4
    local.get $2
    call $~lib/array/Array<~lib/string/String>#get:length
    local.get $3
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     local.get $2
     i32.store $0 offset=4
     local.get $0
     local.get $2
     local.get $3
     call $~lib/array/Array<~lib/string/String>#__get
     local.tee $0
     i32.store $0 offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=4
     local.get $0
     call $assembly/lib/models/element/VElement#isText
     if
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store $0 offset=16
      local.get $2
      local.get $3
      call $~lib/array/Array<~lib/string/String>#__get
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store $0 offset=4
      global.get $~lib/memory/__stack_pointer
      i32.const 1520
      i32.store $0 offset=16
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store $0 offset=24
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load $0 offset=16
      local.tee $8
      i32.store $0 offset=20
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 2308
      i32.lt_s
      br_if $folding-inner0
      global.get $~lib/memory/__stack_pointer
      local.tee $0
      i64.const 0
      i64.store $0
      local.get $0
      i32.const 1520
      i32.store $0
      local.get $0
      local.get $8
      i32.store $0 offset=4
      local.get $0
      i32.const 8
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 2308
      i32.lt_s
      br_if $folding-inner0
      global.get $~lib/memory/__stack_pointer
      local.tee $0
      i64.const 0
      i64.store $0
      local.get $0
      i32.const 1520
      i32.store $0
      i32.const 1516
      i32.load $0
      i32.const -2
      i32.and
      local.set $5
      local.get $0
      local.get $8
      i32.store $0
      block $__inlined_func$~lib/string/String#concat
       local.get $8
       i32.const 20
       i32.sub
       i32.load $0 offset=16
       i32.const -2
       i32.and
       local.tee $6
       local.get $5
       i32.add
       local.tee $0
       i32.eqz
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 8
        i32.add
        global.set $~lib/memory/__stack_pointer
        i32.const 1520
        local.set $0
        br $__inlined_func$~lib/string/String#concat
       end
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.const 2
       call $~lib/rt/itcms/__new
       local.tee $0
       i32.store $0 offset=4
       local.get $0
       i32.const 1520
       local.get $5
       memory.copy $0 $0
       local.get $0
       local.get $5
       i32.add
       local.get $8
       local.get $6
       memory.copy $0 $0
       global.get $~lib/memory/__stack_pointer
       i32.const 8
       i32.add
       global.set $~lib/memory/__stack_pointer
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.add
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store $0 offset=8
      local.get $7
      local.get $0
      i32.store $0 offset=16
      local.get $0
      if
       local.get $7
       local.get $0
       i32.const 0
       call $byn-split-outlined-A$~lib/rt/itcms/__link
      end
     else
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store $0 offset=4
      local.get $4
      local.get $0
      i32.load $0 offset=12
      i32.add
      local.set $4
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $1
   i32.store $0 offset=4
   local.get $1
   local.get $4
   i32.store $0 offset=12
   local.get $0
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 35104
  i32.const 35152
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/lib/models/element/EmptyVElement#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2308
  i32.lt_s
  if
   i32.const 35104
   i32.const 35152
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.const 20
  memory.fill $0
  local.get $0
  i32.const 21
  i32.const 17
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $2
  i32.store $0 offset=4
  local.get $3
  i32.const 1520
  i32.store $0 offset=8
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=12
  i32.const 0
  i32.const 6
  i32.const 2080
  call $~lib/rt/__newArray
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=16
  local.get $3
  local.get $2
  local.get $0
  local.get $1
  call $assembly/lib/models/element/VElement#constructor
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/lib/list-diff2/diff (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 2308
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.const 44
   memory.fill $0
   local.get $3
   i32.const 0
   i32.const 16
   i32.const 1984
   call $~lib/rt/__newArray
   local.tee $6
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 6
   i32.const 2016
   call $~lib/rt/__newArray
   local.tee $4
   i32.store $0 offset=4
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0 offset=8
    local.get $0
    call $~lib/array/Array<~lib/string/String>#get:length
    local.get $7
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $0
     i32.store $0 offset=8
     local.get $3
     local.get $0
     local.get $7
     call $~lib/array/Array<~lib/string/String>#__get
     i32.store $0 offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store $0 offset=8
     local.get $2
     local.tee $3
     i32.const 1
     i32.add
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $1
     local.get $3
     call $~lib/array/Array<~lib/string/String>#__get
     local.tee $3
     i32.store $0 offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0 offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store $0 offset=20
     local.get $4
     local.get $3
     call $~lib/array/Array<assembly/lib/models/patch.model/Patch>#push
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $4
   i32.store $0 offset=8
   i32.const 1
   global.set $~argumentsLength
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2308
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store $0
   block $2of2
    block $1of2
     block $outOfRange
      global.get $~argumentsLength
      br_table $1of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 2147483647
    local.set $5
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $4
   i32.store $0
   local.get $2
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2308
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store $0
   local.get $2
   local.get $4
   i32.store $0
   local.get $4
   i32.load $0 offset=12
   local.tee $3
   i32.const 0
   local.get $3
   i32.const 0
   i32.le_s
   select
   local.set $7
   local.get $5
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $3
    local.get $5
    i32.add
    local.tee $3
    i32.const 0
    local.get $3
    i32.const 0
    i32.gt_s
    select
   else
    local.get $5
    local.get $3
    local.get $3
    local.get $5
    i32.gt_s
    select
   end
   local.set $3
   i32.const 0
   local.set $5
   local.get $2
   local.get $3
   local.get $7
   i32.sub
   local.tee $2
   i32.const 0
   local.get $2
   i32.const 0
   i32.gt_s
   select
   local.tee $2
   i32.const 6
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $3
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.tee $8
   local.get $3
   i32.store $0
   local.get $3
   i32.load $0 offset=4
   local.set $9
   local.get $8
   local.get $4
   i32.store $0
   local.get $4
   i32.load $0 offset=4
   local.get $7
   i32.const 2
   i32.shl
   i32.add
   local.set $7
   local.get $2
   i32.const 2
   i32.shl
   local.set $2
   loop $while-continue|01
    local.get $2
    local.get $5
    i32.gt_u
    if
     local.get $5
     local.get $9
     i32.add
     local.get $5
     local.get $7
     i32.add
     i32.load $0
     local.tee $8
     i32.store $0
     local.get $8
     if
      local.get $3
      local.get $8
      i32.const 1
      call $byn-split-outlined-A$~lib/rt/itcms/__link
     end
     local.get $5
     i32.const 4
     i32.add
     local.set $5
     br $while-continue|01
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $3
   i32.store $0 offset=24
   i32.const 0
   local.set $7
   loop $while-continue|1
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=8
    local.get $3
    call $~lib/array/Array<~lib/string/String>#get:length
    local.get $7
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store $0 offset=8
     local.get $3
     local.get $7
     call $~lib/array/Array<~lib/string/String>#__get
     if
      local.get $7
      i32.const 1
      i32.add
      local.set $7
     else
      global.get $~lib/memory/__stack_pointer
      local.set $0
      call $assembly/lib/models/element/EmptyVElement#constructor
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store $0 offset=8
      local.get $0
      local.get $7
      local.get $2
      i32.const 0
      call $assembly/lib/models/list-diff2.model/Move#constructor
      local.tee $0
      i32.store $0 offset=28
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0 offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store $0 offset=20
      local.get $6
      local.get $0
      call $~lib/array/Array<assembly/lib/models/patch.model/Patch>#push
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store $0 offset=8
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 2308
      i32.lt_s
      br_if $folding-inner1
      global.get $~lib/memory/__stack_pointer
      local.tee $0
      i64.const 0
      i64.store $0
      local.get $0
      local.get $3
      i32.store $0
      local.get $0
      i32.const 1
      local.get $3
      i32.load $0 offset=12
      local.tee $0
      local.get $7
      i32.const 0
      i32.lt_s
      if (result i32)
       local.get $0
       local.get $7
       i32.add
       local.tee $2
       i32.const 0
       local.get $2
       i32.const 0
       i32.gt_s
       select
      else
       local.get $7
       local.get $0
       local.get $0
       local.get $7
       i32.gt_s
       select
      end
      local.tee $2
      i32.sub
      local.tee $5
      local.get $5
      i32.const 1
      i32.gt_s
      select
      local.tee $5
      i32.const 0
      local.get $5
      i32.const 0
      i32.gt_s
      select
      local.tee $5
      i32.const 6
      i32.const 0
      call $~lib/rt/__newArray
      local.tee $8
      i32.store $0 offset=4
      global.get $~lib/memory/__stack_pointer
      local.tee $9
      local.get $8
      i32.store $0
      local.get $8
      i32.load $0 offset=4
      local.set $8
      local.get $9
      local.get $3
      i32.store $0
      local.get $8
      local.get $3
      i32.load $0 offset=4
      local.tee $8
      local.get $2
      i32.const 2
      i32.shl
      i32.add
      local.tee $9
      local.get $5
      i32.const 2
      i32.shl
      memory.copy $0 $0
      local.get $2
      local.get $5
      i32.add
      local.tee $2
      local.get $0
      i32.ne
      if
       local.get $9
       local.get $8
       local.get $2
       i32.const 2
       i32.shl
       i32.add
       local.get $0
       local.get $2
       i32.sub
       i32.const 2
       i32.shl
       memory.copy $0 $0
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $2
      local.get $3
      i32.store $0
      local.get $3
      local.get $0
      local.get $5
      i32.sub
      i32.store $0 offset=12
      local.get $2
      i32.const 8
      i32.add
      global.set $~lib/memory/__stack_pointer
     end
     br $while-continue|1
    end
   end
   i32.const 0
   local.set $7
   i32.const 0
   local.set $2
   loop $while-continue|2
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0 offset=8
    local.get $1
    call $~lib/array/Array<~lib/string/String>#get:length
    local.get $7
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     local.get $1
     i32.store $0 offset=8
     local.get $0
     local.get $1
     local.get $7
     call $~lib/array/Array<~lib/string/String>#__get
     local.tee $0
     i32.store $0 offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store $0 offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $3
     local.get $2
     call $~lib/array/Array<~lib/string/String>#__get
     local.tee $5
     i32.store $0 offset=32
     local.get $5
     if
      local.get $2
      i32.const 1
      i32.add
      local.set $2
     else
      global.get $~lib/memory/__stack_pointer
      local.tee $5
      local.get $0
      i32.store $0 offset=8
      local.get $5
      local.get $7
      local.get $0
      i32.const 1
      call $assembly/lib/models/list-diff2.model/Move#constructor
      local.tee $0
      i32.store $0 offset=36
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0 offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store $0 offset=20
      local.get $6
      local.get $0
      call $~lib/array/Array<assembly/lib/models/patch.model/Patch>#push
     end
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $while-continue|2
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=8
   local.get $3
   call $~lib/array/Array<~lib/string/String>#get:length
   local.get $2
   i32.sub
   local.set $1
   loop $while-continue|3
    local.get $2
    local.tee $0
    i32.const 1
    i32.add
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=8
    local.get $3
    call $~lib/array/Array<~lib/string/String>#get:length
    local.get $0
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     call $assembly/lib/models/element/EmptyVElement#constructor
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store $0 offset=8
     local.get $0
     local.get $7
     local.get $1
     i32.const 1
     i32.sub
     local.tee $1
     i32.add
     local.get $5
     i32.const 0
     call $assembly/lib/models/list-diff2.model/Move#constructor
     local.tee $0
     i32.store $0 offset=40
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0 offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=20
     local.get $6
     local.get $0
     call $~lib/array/Array<assembly/lib/models/patch.model/Patch>#push
     br $while-continue|3
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $6
   i32.store $0 offset=8
   local.get $0
   local.get $4
   i32.store $0 offset=20
   local.get $0
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2308
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store $0
   local.get $0
   i32.const 0
   i32.store $0 offset=8
   local.get $0
   i32.const 8
   i32.const 14
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.const 0
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0 offset=4
   local.get $1
   local.get $6
   i32.store $0 offset=8
   local.get $0
   local.get $6
   i32.store $0
   local.get $6
   if
    local.get $0
    local.get $6
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0 offset=4
   local.get $1
   local.get $4
   i32.store $0 offset=8
   local.get $0
   local.get $4
   i32.store $0 offset=4
   local.get $4
   if
    local.get $0
    local.get $4
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 44
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 35104
  i32.const 35152
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/lib/diff/diffChildren (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 2308
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $6
   i32.const 0
   i32.const 36
   memory.fill $0
   local.get $6
   local.get $0
   i32.store $0
   local.get $6
   local.get $1
   i32.store $0 offset=4
   local.get $6
   local.get $0
   local.get $1
   call $assembly/lib/list-diff2/diff
   local.tee $1
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load $0 offset=4
   local.tee $6
   i32.store $0 offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load $0
   local.tee $7
   i32.store $0
   local.get $7
   call $~lib/array/Array<~lib/string/String>#get:length
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $7
    local.get $1
    i32.store $0 offset=4
    local.get $7
    local.get $1
    i32.load $0
    local.tee $1
    i32.store $0
    local.get $7
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 2308
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $8
    i64.const 0
    i64.store $0
    local.get $8
    i32.const 0
    i32.store $0 offset=8
    local.get $8
    i32.const 8
    i32.const 18
    call $~lib/rt/itcms/__new
    local.tee $8
    i32.store $0
    global.get $~lib/memory/__stack_pointer
    local.tee $9
    local.get $8
    i32.store $0 offset=4
    local.get $8
    i32.const 1
    i32.store $0
    local.get $9
    local.get $8
    i32.store $0 offset=4
    local.get $8
    i32.const 0
    i32.store $0 offset=4
    global.get $~lib/memory/__stack_pointer
    local.tee $9
    local.get $8
    i32.store $0 offset=4
    local.get $9
    local.get $1
    i32.store $0 offset=8
    local.get $8
    local.get $1
    i32.store $0 offset=4
    local.get $1
    if
     local.get $8
     local.get $1
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $7
    local.get $8
    i32.store $0 offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0 offset=4
    local.get $4
    local.get $8
    call $~lib/array/Array<assembly/lib/models/patch.model/Patch>#push
   end
   global.get $~lib/memory/__stack_pointer
   call $assembly/lib/models/element/EmptyVElement#constructor
   local.tee $4
   i32.store $0 offset=20
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $0
    call $~lib/array/Array<~lib/string/String>#get:length
    local.get $5
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $0
     i32.store $0
     local.get $1
     local.get $0
     local.get $5
     call $~lib/array/Array<~lib/string/String>#__get
     local.tee $1
     i32.store $0 offset=24
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $6
     local.get $5
     call $~lib/array/Array<~lib/string/String>#__get
     local.tee $7
     i32.store $0 offset=28
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 2308
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $8
     i32.const 0
     i32.store $0
     local.get $8
     local.get $4
     i32.store $0
     local.get $4
     i32.load8_u $0 offset=20
     local.set $9
     local.get $8
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $9
     if (result i32)
      i32.const 0
     else
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store $0
      local.get $4
      i32.load $0 offset=12
     end
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store $0
      local.get $2
      local.get $4
      i32.load $0 offset=12
      i32.add
      i32.const 1
      i32.add
     else
      local.get $2
      i32.const 1
      i32.add
     end
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     local.get $1
     i32.store $0
     local.get $4
     local.get $7
     i32.store $0 offset=4
     local.get $4
     local.get $3
     i32.store $0 offset=32
     local.get $1
     local.get $7
     local.get $2
     local.get $3
     call $assembly/lib/diff/dfsWalk
     global.get $~lib/memory/__stack_pointer
     local.get $1
     local.tee $4
     i32.store $0 offset=20
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 36
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 35104
  i32.const 35152
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/lib/diff/dfsWalk (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 2308
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 0
   i32.const 28
   memory.fill $0
   local.get $4
   i32.const 0
   i32.const 8
   i32.const 1488
   call $~lib/rt/__newArray
   local.tee $4
   i32.store $0
   local.get $1
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0 offset=4
    local.get $0
    call $assembly/lib/models/element/VElement#isText
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store $0 offset=4
     local.get $1
     call $assembly/lib/models/element/VElement#isText
    else
     i32.const 0
    end
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $5
     local.get $1
     i32.store $0 offset=12
     local.get $5
     local.get $1
     i32.load $0 offset=16
     local.tee $6
     i32.store $0 offset=4
     local.get $5
     local.get $0
     i32.store $0 offset=12
     local.get $5
     local.get $0
     i32.load $0 offset=16
     local.tee $0
     i32.store $0 offset=8
     local.get $6
     local.get $0
     call $~lib/string/String.__ne
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $0
      local.get $4
      i32.store $0 offset=4
      local.get $0
      local.get $1
      i32.store $0 offset=12
      local.get $0
      i32.const 12
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 2308
      i32.lt_s
      br_if $folding-inner0
      global.get $~lib/memory/__stack_pointer
      local.tee $0
      i64.const 0
      i64.store $0
      local.get $0
      i32.const 0
      i32.store $0 offset=8
      local.get $0
      i32.const 8
      i32.const 11
      call $~lib/rt/itcms/__new
      local.tee $0
      i32.store $0
      global.get $~lib/memory/__stack_pointer
      local.tee $5
      local.get $0
      i32.store $0 offset=4
      local.get $0
      i32.const 3
      i32.store $0
      local.get $5
      local.get $0
      i32.store $0 offset=4
      local.get $0
      i32.const 0
      i32.store $0 offset=4
      global.get $~lib/memory/__stack_pointer
      local.tee $5
      local.get $0
      i32.store $0 offset=4
      local.get $5
      local.get $1
      i32.store $0 offset=8
      local.get $0
      local.get $1
      i32.store $0 offset=4
      local.get $1
      if
       local.get $0
       local.get $1
       i32.const 0
       call $byn-split-outlined-A$~lib/rt/itcms/__link
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 12
      i32.add
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store $0 offset=8
      local.get $4
      local.get $0
      call $~lib/array/Array<assembly/lib/models/patch.model/Patch>#push
     end
    else
     global.get $~lib/memory/__stack_pointer
     local.tee $5
     local.get $0
     i32.store $0 offset=12
     local.get $5
     local.get $0
     i32.load $0
     local.tee $6
     i32.store $0 offset=4
     local.get $5
     local.get $1
     i32.store $0 offset=12
     local.get $5
     local.get $1
     i32.load $0
     local.tee $5
     i32.store $0 offset=8
     local.get $6
     local.get $5
     call $~lib/string/String.__eq
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $5
      local.get $0
      i32.store $0 offset=4
      local.get $5
      local.get $1
      i32.store $0 offset=8
      local.get $5
      local.get $0
      local.get $1
      call $assembly/lib/diff/diffProps
      local.tee $5
      i32.store $0 offset=16
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store $0 offset=4
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 2308
      i32.lt_s
      br_if $folding-inner0
      global.get $~lib/memory/__stack_pointer
      local.tee $6
      i32.const 0
      i32.store $0
      local.get $6
      local.get $5
      i32.store $0
      local.get $5
      i32.load $0 offset=20
      local.set $7
      local.get $6
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $7
      i32.const 0
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $6
       local.get $4
       i32.store $0 offset=4
       local.get $6
       local.get $5
       i32.store $0 offset=12
       local.get $6
       i32.const 12
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 2308
       i32.lt_s
       br_if $folding-inner0
       global.get $~lib/memory/__stack_pointer
       local.tee $6
       i64.const 0
       i64.store $0
       local.get $6
       i32.const 0
       i32.store $0 offset=8
       local.get $6
       i32.const 8
       i32.const 13
       call $~lib/rt/itcms/__new
       local.tee $6
       i32.store $0
       global.get $~lib/memory/__stack_pointer
       local.tee $7
       local.get $6
       i32.store $0 offset=4
       local.get $6
       i32.const 2
       i32.store $0
       local.get $7
       local.get $6
       i32.store $0 offset=4
       local.get $6
       i32.const 0
       i32.store $0 offset=4
       global.get $~lib/memory/__stack_pointer
       local.tee $7
       local.get $6
       i32.store $0 offset=4
       local.get $7
       local.get $5
       i32.store $0 offset=8
       local.get $6
       local.get $5
       i32.store $0 offset=4
       local.get $5
       if
        local.get $6
        local.get $5
        i32.const 0
        call $byn-split-outlined-A$~lib/rt/itcms/__link
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 12
       i32.add
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store $0 offset=8
       local.get $4
       local.get $6
       call $~lib/array/Array<assembly/lib/models/patch.model/Patch>#push
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $5
      local.get $1
      i32.store $0 offset=4
      local.get $5
      i32.const 12
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 2308
      i32.lt_s
      br_if $folding-inner0
      global.get $~lib/memory/__stack_pointer
      local.tee $5
      i64.const 0
      i64.store $0
      local.get $5
      i32.const 0
      i32.store $0 offset=8
      local.get $5
      local.get $1
      i32.store $0
      local.get $1
      i32.load $0 offset=4
      if (result i32)
       global.get $~lib/memory/__stack_pointer
       local.tee $5
       local.get $1
       i32.store $0 offset=8
       local.get $5
       local.get $1
       i32.load $0 offset=4
       local.tee $6
       i32.store $0
       local.get $5
       i32.const 1952
       i32.store $0 offset=4
       local.get $6
       i32.const 1952
       call $~lib/map/Map<~lib/string/String,~lib/string/String>#has
       i32.const 0
       i32.ne
      else
       i32.const 0
      end
      local.set $5
      global.get $~lib/memory/__stack_pointer
      i32.const 12
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $5
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $5
       local.get $0
       i32.store $0 offset=24
       local.get $5
       local.get $0
       i32.load $0 offset=8
       local.tee $0
       i32.store $0 offset=4
       local.get $5
       local.get $1
       i32.store $0 offset=24
       local.get $5
       local.get $1
       i32.load $0 offset=8
       local.tee $1
       i32.store $0 offset=8
       local.get $5
       local.get $3
       i32.store $0 offset=12
       local.get $5
       local.get $4
       i32.store $0 offset=20
       local.get $0
       local.get $1
       local.get $2
       local.get $3
       local.get $4
       call $assembly/lib/diff/diffChildren
      end
     else
      global.get $~lib/memory/__stack_pointer
      local.tee $0
      local.get $4
      i32.store $0 offset=4
      local.get $0
      local.get $1
      i32.store $0 offset=12
      local.get $0
      i32.const 12
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 2308
      i32.lt_s
      br_if $folding-inner0
      global.get $~lib/memory/__stack_pointer
      local.tee $0
      i64.const 0
      i64.store $0
      local.get $0
      i32.const 0
      i32.store $0 offset=8
      local.get $0
      i32.const 8
      i32.const 19
      call $~lib/rt/itcms/__new
      local.tee $0
      i32.store $0
      global.get $~lib/memory/__stack_pointer
      local.tee $5
      local.get $0
      i32.store $0 offset=4
      local.get $0
      i32.const 0
      i32.store $0
      local.get $5
      local.get $0
      i32.store $0 offset=4
      local.get $0
      i32.const 0
      i32.store $0 offset=4
      global.get $~lib/memory/__stack_pointer
      local.tee $5
      local.get $0
      i32.store $0 offset=4
      local.get $5
      local.get $1
      i32.store $0 offset=8
      local.get $0
      local.get $1
      i32.store $0 offset=4
      local.get $1
      if
       local.get $0
       local.get $1
       i32.const 0
       call $byn-split-outlined-A$~lib/rt/itcms/__link
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 12
      i32.add
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store $0 offset=8
      local.get $4
      local.get $0
      call $~lib/array/Array<assembly/lib/models/patch.model/Patch>#push
     end
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0 offset=4
   local.get $4
   call $~lib/array/Array<~lib/string/String>#get:length
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    local.get $3
    i32.store $0 offset=4
    local.get $0
    local.get $4
    i32.store $0 offset=8
    local.get $3
    local.get $2
    local.get $4
    call $~lib/array/Array<~lib/string/String>#__set
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 35104
  i32.const 35152
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2308
  i32.lt_s
  if
   i32.const 35104
   i32.const 35152
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  i32.const 0
  i32.store $0
  local.get $0
  i32.const 2
  i32.shl
  local.tee $4
  i32.const 1
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $2
  if
   local.get $3
   local.get $2
   local.get $4
   memory.copy $0 $0
  end
  local.get $5
  local.get $3
  i32.store $0
  i32.const 16
  local.get $1
  call $~lib/rt/itcms/__new
  local.tee $1
  local.get $3
  i32.store $0
  local.get $3
  if
   local.get $1
   local.get $3
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $1
  local.get $3
  i32.store $0 offset=4
  local.get $1
  local.get $4
  i32.store $0 offset=8
  local.get $1
  local.get $0
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2308
  i32.lt_s
  if
   i32.const 35104
   i32.const 35152
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1552
   i32.const 1648
   i32.const 52
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/lib/diff/diff (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 2308
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store $0
   local.get $2
   local.get $1
   i32.store $0 offset=4
   local.get $2
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 2308
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store $0
   local.get $2
   i64.const 0
   i64.store $0 offset=8
   local.get $2
   i32.const 0
   i32.const 9
   i32.const 1056
   call $~lib/rt/__newArray
   local.tee $2
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=12
   local.get $0
   local.get $1
   i32.const 0
   local.get $2
   call $assembly/lib/diff/dfsWalk
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 35104
  i32.const 35152
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__visit (param $0 i32)
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1152
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $0
   i32.load $0 offset=4
   i32.const 3
   i32.and
   local.tee $3
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $0
    local.get $1
    local.get $2
    select
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    local.get $3
    i32.const 3
    i32.eq
    i32.and
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
)
