(module
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $f64_f64_=>_i32 (func (param f64 f64) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (type $none_=>_i32 (func (result i32)))
 (type $none_=>_f64 (func (result f64)))
 (type $f64_=>_f64 (func (param f64) (result f64)))
 (type $i32_f64_=>_i32 (func (param i32 f64) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "seed" (func $~lib/builtins/seed (result f64)))
 (global $~argumentsLength (mut i32) (i32.const 0))
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
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1_64 (mut i64) (i64.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 3856))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 36660))
 (memory $0 1)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\02\00\00\00\0c\00\00\00p\00r\00e\00t\00t\00y")
 (data $1 (i32.const 1068) "\1c")
 (data $1.1 (i32.const 1080) "\02\00\00\00\n\00\00\00l\00a\00r\00g\00e")
 (data $2 (i32.const 1100) "\1c")
 (data $2.1 (i32.const 1112) "\02\00\00\00\06\00\00\00b\00i\00g")
 (data $3 (i32.const 1132) "\1c")
 (data $3.1 (i32.const 1144) "\02\00\00\00\n\00\00\00s\00m\00a\00l\00l")
 (data $4 (i32.const 1164) "\1c")
 (data $4.1 (i32.const 1176) "\02\00\00\00\08\00\00\00t\00a\00l\00l")
 (data $5 (i32.const 1196) "\1c")
 (data $5.1 (i32.const 1208) "\02\00\00\00\n\00\00\00s\00h\00o\00r\00t")
 (data $6 (i32.const 1228) "\1c")
 (data $6.1 (i32.const 1240) "\02\00\00\00\08\00\00\00l\00o\00n\00g")
 (data $7 (i32.const 1260) ",")
 (data $7.1 (i32.const 1272) "\02\00\00\00\10\00\00\00h\00a\00n\00d\00s\00o\00m\00e")
 (data $8 (i32.const 1308) "\1c")
 (data $8.1 (i32.const 1320) "\02\00\00\00\n\00\00\00p\00l\00a\00i\00n")
 (data $9 (i32.const 1340) "\1c")
 (data $9.1 (i32.const 1352) "\02\00\00\00\0c\00\00\00q\00u\00a\00i\00n\00t")
 (data $10 (i32.const 1372) "\1c")
 (data $10.1 (i32.const 1384) "\02\00\00\00\n\00\00\00c\00l\00e\00a\00n")
 (data $11 (i32.const 1404) ",")
 (data $11.1 (i32.const 1416) "\02\00\00\00\0e\00\00\00e\00l\00e\00g\00a\00n\00t")
 (data $12 (i32.const 1452) "\1c")
 (data $12.1 (i32.const 1464) "\02\00\00\00\08\00\00\00e\00a\00s\00y")
 (data $13 (i32.const 1484) "\1c")
 (data $13.1 (i32.const 1496) "\02\00\00\00\n\00\00\00a\00n\00g\00r\00y")
 (data $14 (i32.const 1516) "\1c")
 (data $14.1 (i32.const 1528) "\02\00\00\00\n\00\00\00c\00r\00a\00z\00y")
 (data $15 (i32.const 1548) ",")
 (data $15.1 (i32.const 1560) "\02\00\00\00\0e\00\00\00h\00e\00l\00p\00f\00u\00l")
 (data $16 (i32.const 1596) "\1c")
 (data $16.1 (i32.const 1608) "\02\00\00\00\n\00\00\00m\00u\00s\00h\00y")
 (data $17 (i32.const 1628) "\1c")
 (data $17.1 (i32.const 1640) "\02\00\00\00\06\00\00\00o\00d\00d")
 (data $18 (i32.const 1660) ",")
 (data $18.1 (i32.const 1672) "\02\00\00\00\12\00\00\00u\00n\00s\00i\00g\00h\00t\00l\00y")
 (data $19 (i32.const 1708) ",")
 (data $19.1 (i32.const 1720) "\02\00\00\00\10\00\00\00a\00d\00o\00r\00a\00b\00l\00e")
 (data $20 (i32.const 1756) ",")
 (data $20.1 (i32.const 1768) "\02\00\00\00\12\00\00\00i\00m\00p\00o\00r\00t\00a\00n\00t")
 (data $21 (i32.const 1804) ",")
 (data $21.1 (i32.const 1816) "\02\00\00\00\16\00\00\00i\00n\00e\00x\00p\00e\00n\00s\00i\00v\00e")
 (data $22 (i32.const 1852) "\1c")
 (data $22.1 (i32.const 1864) "\02\00\00\00\n\00\00\00c\00h\00e\00a\00p")
 (data $23 (i32.const 1884) ",")
 (data $23.1 (i32.const 1896) "\02\00\00\00\12\00\00\00e\00x\00p\00e\00n\00s\00i\00v\00e")
 (data $24 (i32.const 1932) "\1c")
 (data $24.1 (i32.const 1944) "\02\00\00\00\n\00\00\00f\00a\00n\00c\00y")
 (data $25 (i32.const 1964) "|")
 (data $25.1 (i32.const 1976) "\01\00\00\00d\00\00\00 \04\00\00@\04\00\00`\04\00\00\80\04\00\00\a0\04\00\00\c0\04\00\00\e0\04\00\00\00\05\00\000\05\00\00P\05\00\00p\05\00\00\90\05\00\00\c0\05\00\00\e0\05\00\00\00\06\00\00 \06\00\00P\06\00\00p\06\00\00\90\06\00\00\c0\06\00\00\f0\06\00\00 \07\00\00P\07\00\00p\07\00\00\a0\07")
 (data $26 (i32.const 2092) "<")
 (data $26.1 (i32.const 2104) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $27 (i32.const 2156) "<")
 (data $27.1 (i32.const 2168) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $30 (i32.const 2284) "<")
 (data $30.1 (i32.const 2296) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $31 (i32.const 2348) ",")
 (data $31.1 (i32.const 2360) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $33 (i32.const 2428) "<")
 (data $33.1 (i32.const 2440) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $34 (i32.const 2492) "\1c")
 (data $34.1 (i32.const 2504) "\02\00\00\00\06\00\00\00r\00e\00d")
 (data $35 (i32.const 2524) "\1c")
 (data $35.1 (i32.const 2536) "\02\00\00\00\0c\00\00\00y\00e\00l\00l\00o\00w")
 (data $36 (i32.const 2556) "\1c")
 (data $36.1 (i32.const 2568) "\02\00\00\00\08\00\00\00b\00l\00u\00e")
 (data $37 (i32.const 2588) "\1c")
 (data $37.1 (i32.const 2600) "\02\00\00\00\n\00\00\00g\00r\00e\00e\00n")
 (data $38 (i32.const 2620) "\1c")
 (data $38.1 (i32.const 2632) "\02\00\00\00\08\00\00\00p\00i\00n\00k")
 (data $39 (i32.const 2652) "\1c")
 (data $39.1 (i32.const 2664) "\02\00\00\00\n\00\00\00b\00r\00o\00w\00n")
 (data $40 (i32.const 2684) "\1c")
 (data $40.1 (i32.const 2696) "\02\00\00\00\0c\00\00\00p\00u\00r\00p\00l\00e")
 (data $41 (i32.const 2716) "\1c")
 (data $41.1 (i32.const 2728) "\02\00\00\00\n\00\00\00w\00h\00i\00t\00e")
 (data $42 (i32.const 2748) "\1c")
 (data $42.1 (i32.const 2760) "\02\00\00\00\n\00\00\00b\00l\00a\00c\00k")
 (data $43 (i32.const 2780) "\1c")
 (data $43.1 (i32.const 2792) "\02\00\00\00\0c\00\00\00o\00r\00a\00n\00g\00e")
 (data $44 (i32.const 2812) "<")
 (data $44.1 (i32.const 2824) "\01\00\00\00,\00\00\00\d0\t\00\00\f0\t\00\00\10\n\00\000\n\00\00P\n\00\00p\n\00\00\90\n\00\00p\n\00\00\b0\n\00\00\d0\n\00\00\f0\n")
 (data $45 (i32.const 2876) "\1c")
 (data $45.1 (i32.const 2888) "\02\00\00\00\n\00\00\00t\00a\00b\00l\00e")
 (data $46 (i32.const 2908) "\1c")
 (data $46.1 (i32.const 2920) "\02\00\00\00\n\00\00\00c\00h\00a\00i\00r")
 (data $47 (i32.const 2940) "\1c")
 (data $47.1 (i32.const 2952) "\02\00\00\00\n\00\00\00h\00o\00u\00s\00e")
 (data $48 (i32.const 2972) "\1c")
 (data $48.1 (i32.const 2984) "\02\00\00\00\06\00\00\00b\00b\00q")
 (data $49 (i32.const 3004) "\1c")
 (data $49.1 (i32.const 3016) "\02\00\00\00\08\00\00\00d\00e\00s\00k")
 (data $50 (i32.const 3036) "\1c")
 (data $50.1 (i32.const 3048) "\02\00\00\00\06\00\00\00c\00a\00r")
 (data $51 (i32.const 3068) "\1c")
 (data $51.1 (i32.const 3080) "\02\00\00\00\08\00\00\00p\00o\00n\00y")
 (data $52 (i32.const 3100) "\1c")
 (data $52.1 (i32.const 3112) "\02\00\00\00\0c\00\00\00c\00o\00o\00k\00i\00e")
 (data $53 (i32.const 3132) ",")
 (data $53.1 (i32.const 3144) "\02\00\00\00\10\00\00\00s\00a\00n\00d\00w\00i\00c\00h")
 (data $54 (i32.const 3180) "\1c")
 (data $54.1 (i32.const 3192) "\02\00\00\00\0c\00\00\00b\00u\00r\00g\00e\00r")
 (data $55 (i32.const 3212) "\1c")
 (data $55.1 (i32.const 3224) "\02\00\00\00\n\00\00\00p\00i\00z\00z\00a")
 (data $56 (i32.const 3244) "\1c")
 (data $56.1 (i32.const 3256) "\02\00\00\00\n\00\00\00m\00o\00u\00s\00e")
 (data $57 (i32.const 3276) ",")
 (data $57.1 (i32.const 3288) "\02\00\00\00\10\00\00\00k\00e\00y\00b\00o\00a\00r\00d")
 (data $58 (i32.const 3324) "L")
 (data $58.1 (i32.const 3336) "\01\00\00\004\00\00\00P\0b\00\00p\0b\00\00\90\0b\00\00\b0\0b\00\00\d0\0b\00\00\f0\0b\00\00\10\0c\00\000\0c\00\00P\0c\00\00\80\0c\00\00\a0\0c\00\00\c0\0c\00\00\e0\0c")
 (data $59 (i32.const 3404) ",")
 (data $59.1 (i32.const 3416) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $60 (i32.const 3452) ",")
 (data $60.1 (i32.const 3464) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $61 (i32.const 3500) "|")
 (data $61.1 (i32.const 3512) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data $62 (i32.const 3628) "\1c")
 (data $62.1 (i32.const 3640) "\02\00\00\00\02\00\00\00 ")
 (data $63 (i32.const 3660) "\1c")
 (data $63.1 (i32.const 3672) "\02")
 (data $64 (i32.const 3692) "\1c")
 (data $64.1 (i32.const 3704) "\02\00\00\00\08\00\00\00 \00!\00!\00!")
 (data $65 (i32.const 3724) "<")
 (data $65.1 (i32.const 3736) "\02\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data $66 (i32.const 3788) "<")
 (data $66.1 (i32.const 3800) "\02\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data $67 (i32.const 3856) "\08\00\00\00 \00\00\00 \00\00\00 ")
 (data $67.1 (i32.const 3880) "\02A\00\00\02A\00\00\02\t")
 (export "buildData" (func $assembly/main/buildData@varargs))
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (export "updateData" (func $export:assembly/main/updateData@varargs))
 (export "updateDataForSwap" (func $export:assembly/main/updateDataForSwap))
 (start $~start)
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 2304
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 3424
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 3520
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 2112
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 3744
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 3808
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
     i32.const 2176
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
   i32.const 36660
   i32.lt_u
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 2176
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
   i32.const 2176
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
    i32.const 2176
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
   i32.const 3856
   i32.load $0
   i32.gt_u
   if
    i32.const 2304
    i32.const 2368
    i32.const 21
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   i32.const 2
   i32.shl
   i32.const 3860
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
   i32.const 2448
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
   i32.const 2448
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
   i32.const 2448
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
   i32.const 2448
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
   i32.const 2448
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
    i32.const 2448
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
   i32.const 2448
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
   i32.const 2448
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
   i32.const 2448
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
   i32.const 2448
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
    i32.const 2448
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
    i32.const 2448
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
  i32.const 36672
  i32.const 0
  i32.store $0
  i32.const 38240
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
    i32.const 36672
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
      i32.const 36672
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
  i32.const 36672
  i32.const 38244
  memory.size $0
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 36672
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
      i32.const 36660
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
     i32.const 2176
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 36660
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
     i32.const 36660
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
       i32.const 2448
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
   i32.const 2448
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
     i32.const 2448
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
   i32.const 2112
   i32.const 2176
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
   i32.const 2112
   i32.const 2448
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
    i32.const 2448
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
   i32.const 2448
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
   i32.const 2448
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
 (func $assembly/main/_random (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 f64)
  (local $5 i64)
  (local $6 f64)
  (local $7 i64)
  (local $8 i64)
  global.get $~lib/math/random_seeded
  i32.eqz
  if
   call $~lib/builtins/seed
   i64.reinterpret_f64
   local.tee $1
   i64.eqz
   if
    i64.const -7046029254386353131
    local.set $1
   end
   local.get $1
   local.get $1
   i64.const 33
   i64.shr_u
   i64.xor
   i64.const -49064778989728563
   i64.mul
   local.tee $1
   local.get $1
   i64.const 33
   i64.shr_u
   i64.xor
   i64.const -4265267296055464877
   i64.mul
   local.tee $1
   local.get $1
   i64.const 33
   i64.shr_u
   i64.xor
   global.set $~lib/math/random_state0_64
   global.get $~lib/math/random_state0_64
   i64.const -1
   i64.xor
   local.tee $1
   local.get $1
   i64.const 33
   i64.shr_u
   i64.xor
   i64.const -49064778989728563
   i64.mul
   local.tee $1
   local.get $1
   i64.const 33
   i64.shr_u
   i64.xor
   i64.const -4265267296055464877
   i64.mul
   local.tee $1
   local.get $1
   i64.const 33
   i64.shr_u
   i64.xor
   global.set $~lib/math/random_state1_64
   i32.const 1
   global.set $~lib/math/random_seeded
  end
  global.get $~lib/math/random_state0_64
  local.set $1
  global.get $~lib/math/random_state1_64
  local.tee $2
  global.set $~lib/math/random_state0_64
  local.get $2
  local.get $1
  local.get $1
  i64.const 23
  i64.shl
  i64.xor
  local.tee $1
  local.get $1
  i64.const 17
  i64.shr_u
  i64.xor
  i64.xor
  local.get $2
  i64.const 26
  i64.shr_u
  i64.xor
  global.set $~lib/math/random_state1_64
  block $__inlined_func$~lib/math/NativeMath.mod (result f64)
   local.get $2
   i64.const 12
   i64.shr_u
   i64.const 4607182418800017408
   i64.or
   f64.reinterpret_i64
   f64.const -1
   f64.add
   f64.const 1e3
   f64.mul
   local.tee $4
   f64.ceil
   local.tee $6
   local.get $6
   f64.const -1
   f64.add
   local.get $6
   f64.const -0.5
   f64.add
   local.get $4
   f64.le
   select
   local.tee $4
   local.get $4
   f64.trunc
   f64.sub
   local.get $4
   f64.copysign
   local.get $0
   f64.abs
   f64.const 1
   f64.eq
   br_if $__inlined_func$~lib/math/NativeMath.mod
   drop
   local.get $0
   i64.reinterpret_f64
   local.tee $3
   i64.const 52
   i64.shr_u
   i64.const 2047
   i64.and
   local.set $7
   local.get $3
   i64.const 1
   i64.shl
   local.tee $2
   i64.eqz
   local.get $4
   i64.reinterpret_f64
   local.tee $5
   i64.const 52
   i64.shr_u
   i64.const 2047
   i64.and
   local.tee $8
   i64.const 2047
   i64.eq
   i32.or
   local.get $0
   local.get $0
   f64.ne
   i32.or
   if
    local.get $4
    local.get $0
    f64.mul
    local.tee $0
    local.get $0
    f64.div
    br $__inlined_func$~lib/math/NativeMath.mod
   end
   local.get $5
   i64.const 1
   i64.shl
   local.tee $1
   local.get $2
   i64.le_u
   if
    local.get $4
    local.get $1
    local.get $2
    i64.ne
    f64.convert_i32_u
    f64.mul
    br $__inlined_func$~lib/math/NativeMath.mod
   end
   local.get $8
   i64.eqz
   if (result i64)
    local.get $5
    i64.const 1
    local.get $8
    local.get $5
    i64.const 12
    i64.shl
    i64.clz
    i64.sub
    local.tee $8
    i64.sub
    i64.shl
   else
    local.get $5
    i64.const 4503599627370495
    i64.and
    i64.const 4503599627370496
    i64.or
   end
   local.set $1
   local.get $7
   i64.eqz
   if (result i64)
    local.get $3
    i64.const 1
    local.get $7
    local.get $3
    i64.const 12
    i64.shl
    i64.clz
    i64.sub
    local.tee $7
    i64.sub
    i64.shl
   else
    local.get $3
    i64.const 4503599627370495
    i64.and
    i64.const 4503599627370496
    i64.or
   end
   local.set $2
   loop $while-continue|0
    local.get $7
    local.get $8
    i64.lt_s
    if
     local.get $1
     local.get $2
     i64.ge_u
     if (result i64)
      local.get $4
      f64.const 0
      f64.mul
      local.get $1
      local.get $2
      i64.eq
      br_if $__inlined_func$~lib/math/NativeMath.mod
      drop
      local.get $1
      local.get $2
      i64.sub
     else
      local.get $1
     end
     i64.const 1
     i64.shl
     local.set $1
     local.get $8
     i64.const 1
     i64.sub
     local.set $8
     br $while-continue|0
    end
   end
   local.get $1
   local.get $2
   i64.ge_u
   if
    local.get $4
    f64.const 0
    f64.mul
    local.get $1
    local.get $2
    i64.eq
    br_if $__inlined_func$~lib/math/NativeMath.mod
    drop
    local.get $1
    local.get $2
    i64.sub
    local.set $1
   end
   local.get $8
   local.get $1
   i64.const 11
   i64.shl
   i64.clz
   local.tee $3
   i64.sub
   local.set $2
   local.get $5
   i64.const -9223372036854775808
   i64.and
   local.get $1
   local.get $3
   i64.shl
   local.tee $1
   i64.const 4503599627370496
   i64.sub
   local.get $2
   i64.const 52
   i64.shl
   i64.or
   local.get $1
   i64.const 1
   local.get $2
   i64.sub
   i64.shr_u
   local.get $2
   i64.const 0
   i64.gt_s
   select
   i64.or
   f64.reinterpret_i64
  end
 )
 (func $assembly/main/buildData@varargs (param $0 f64) (param $1 f64) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    f64.const 1e3
    local.set $0
   end
   f64.const 1
   local.set $1
  end
  local.get $0
  local.get $1
  call $assembly/main/buildData
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
    i32.const 3744
    i32.const 2176
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
   i32.const 3808
   i32.const 2176
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
 (func $~lib/array/Array<assembly/main/RowElement>~visit (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3892
  i32.lt_s
  if
   i32.const 36688
   i32.const 36736
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
  loop $while-continue|0
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
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
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
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  block $invalid
   block $~lib/array/Array<i32>
    block $~lib/array/Array<~lib/string/String>
     block $~lib/array/Array<assembly/main/RowElement>
      block $assembly/main/RowElement
       block $~lib/arraybuffer/ArrayBufferView
        block $~lib/string/String
         block $~lib/arraybuffer/ArrayBuffer
          block $~lib/object/Object
           local.get $0
           i32.const 8
           i32.sub
           i32.load $0
           br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $assembly/main/RowElement $~lib/array/Array<assembly/main/RowElement> $~lib/array/Array<~lib/string/String> $~lib/array/Array<i32> $invalid
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
      i32.load $0 offset=8
      local.tee $0
      if
       local.get $0
       call $byn-split-outlined-A$~lib/rt/itcms/__visit
      end
      return
     end
     local.get $0
     call $~lib/array/Array<assembly/main/RowElement>~visit
     return
    end
    local.get $0
    call $~lib/array/Array<assembly/main/RowElement>~visit
    return
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3892
   i32.lt_s
   if
    i32.const 36688
    i32.const 36736
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
   return
  end
  unreachable
 )
 (func $~setArgumentsLength (param $0 i32)
  local.get $0
  global.set $~argumentsLength
 )
 (func $~start
  memory.size $0
  i32.const 16
  i32.shl
  i32.const 36660
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 2228
  i32.const 2224
  i32.store $0
  i32.const 2232
  i32.const 2224
  i32.store $0
  i32.const 2224
  global.set $~lib/rt/itcms/pinSpace
  i32.const 2260
  i32.const 2256
  i32.store $0
  i32.const 2264
  i32.const 2256
  i32.store $0
  i32.const 2256
  global.set $~lib/rt/itcms/toSpace
  i32.const 2404
  i32.const 2400
  i32.store $0
  i32.const 2408
  i32.const 2400
  i32.store $0
  i32.const 2400
  global.set $~lib/rt/itcms/fromSpace
 )
 (func $~lib/array/Array<~lib/string/String>#get:length (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3892
  i32.lt_s
  if
   i32.const 36688
   i32.const 36736
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
  i32.const 3892
  i32.lt_s
  if
   i32.const 36688
   i32.const 36736
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
   i32.const 2304
   i32.const 3472
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
   i32.const 3520
   i32.const 3472
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
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 3892
   i32.lt_s
   br_if $folding-inner0
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
   local.get $2
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3892
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store $0
   local.get $3
   local.get $0
   local.tee $2
   i32.store $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const -2
   i32.and
   local.set $4
   local.get $3
   local.get $1
   i32.store $0
   block $__inlined_func$~lib/string/String#concat
    local.get $1
    i32.const 20
    i32.sub
    i32.load $0 offset=16
    i32.const -2
    i32.and
    local.tee $3
    local.get $4
    i32.add
    local.tee $0
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 3680
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
    local.get $2
    local.get $4
    memory.copy $0 $0
    local.get $0
    local.get $4
    i32.add
    local.get $1
    local.get $3
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
   local.get $0
   return
  end
  i32.const 36688
  i32.const 36736
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<assembly/main/RowElement>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 3892
   i32.lt_s
   br_if $folding-inner0
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
     i32.const 2304
     i32.const 3472
     i32.const 130
     i32.const 22
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.const 1
    i32.add
    local.tee $6
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 3892
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $4
    i32.const 0
    i32.store $0
    local.get $4
    local.get $0
    i32.store $0
    local.get $3
    local.get $0
    i32.load $0 offset=8
    local.tee $4
    i32.const 2
    i32.shr_u
    i32.gt_u
    if
     local.get $3
     i32.const 268435455
     i32.gt_u
     if
      i32.const 3424
      i32.const 3472
      i32.const 19
      i32.const 48
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0
     block $__inlined_func$~lib/rt/itcms/__renew
      i32.const 1073741820
      local.get $4
      i32.const 1
      i32.shl
      local.tee $4
      local.get $4
      i32.const 1073741820
      i32.ge_u
      select
      local.tee $4
      i32.const 8
      local.get $3
      local.get $3
      i32.const 8
      i32.le_u
      select
      i32.const 2
      i32.shl
      local.tee $3
      local.get $3
      local.get $4
      i32.lt_u
      select
      local.tee $5
      local.get $0
      i32.load $0
      local.tee $4
      i32.const 20
      i32.sub
      local.tee $7
      i32.load $0
      i32.const -4
      i32.and
      i32.const 16
      i32.sub
      i32.le_u
      if
       local.get $7
       local.get $5
       i32.store $0 offset=16
       local.get $4
       local.set $3
       br $__inlined_func$~lib/rt/itcms/__renew
      end
      local.get $5
      local.get $7
      i32.load $0 offset=12
      call $~lib/rt/itcms/__new
      local.tee $3
      local.get $4
      local.get $5
      local.get $7
      i32.load $0 offset=16
      local.tee $7
      local.get $5
      local.get $7
      i32.lt_u
      select
      memory.copy $0 $0
     end
     local.get $3
     local.get $4
     i32.ne
     if
      local.get $0
      local.get $3
      i32.store $0
      local.get $0
      local.get $3
      i32.store $0 offset=4
      local.get $3
      if
       local.get $0
       local.get $3
       i32.const 0
       call $byn-split-outlined-A$~lib/rt/itcms/__link
      end
     end
     local.get $0
     local.get $5
     i32.store $0 offset=8
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $0
    local.get $6
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
   return
  end
  i32.const 36688
  i32.const 36736
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/main/buildData (param $0 f64) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 76
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 3892
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.const 76
   memory.fill $0
   local.get $2
   i32.const 25
   i32.const 1984
   call $~lib/rt/__newArray
   local.tee $4
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 11
   i32.const 2832
   call $~lib/rt/__newArray
   local.tee $5
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 13
   i32.const 3344
   call $~lib/rt/__newArray
   local.tee $6
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.set $8
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3892
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
   i32.const 16
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $9
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $9
   i32.store $0 offset=4
   local.get $9
   i32.const 0
   i32.store $0 offset=4
   local.get $2
   local.get $9
   i32.store $0 offset=4
   local.get $9
   i32.const 0
   i32.store $0 offset=8
   local.get $2
   local.get $9
   i32.store $0 offset=4
   local.get $9
   i32.const 0
   i32.store $0 offset=12
   local.get $0
   i32.trunc_sat_f64_s
   local.tee $10
   i32.const 268435455
   i32.gt_u
   if
    i32.const 3424
    i32.const 3472
    i32.const 70
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   local.get $10
   local.get $10
   i32.const 8
   i32.le_u
   select
   i32.const 2
   i32.shl
   local.tee $11
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=12
   local.get $9
   local.get $2
   i32.store $0
   local.get $2
   if
    local.get $9
    local.get $2
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $7
   local.get $9
   i32.store $0 offset=4
   local.get $9
   local.get $2
   i32.store $0 offset=4
   local.get $7
   local.get $9
   i32.store $0 offset=4
   local.get $9
   local.get $11
   i32.store $0 offset=8
   local.get $7
   local.get $9
   i32.store $0 offset=4
   local.get $9
   local.get $10
   i32.store $0 offset=12
   local.get $7
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $8
   local.get $9
   i32.store $0 offset=12
   loop $for-loop|0
    local.get $3
    f64.convert_i32_s
    local.get $0
    f64.lt
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $7
     local.get $9
     i32.store $0 offset=16
     local.get $7
     i32.const 8
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 3892
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     i64.const 0
     i64.store $0
     local.get $2
     i32.const 12
     i32.const 4
     call $~lib/rt/itcms/__new
     local.tee $2
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.tee $8
     local.get $2
     i32.store $0 offset=4
     local.get $8
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 3892
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.store $0
     local.get $2
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.const 0
      call $~lib/rt/itcms/__new
      local.tee $2
      i32.store $0
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $8
     local.get $2
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store $0 offset=4
     local.get $2
     f64.const 0
     f64.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store $0 offset=4
     local.get $2
     i32.const 0
     i32.store $0 offset=8
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $7
     local.get $2
     i32.store $0 offset=24
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store $0 offset=28
     local.get $2
     local.get $1
     local.get $3
     f64.convert_i32_s
     f64.add
     f64.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store $0 offset=28
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0 offset=68
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0 offset=72
     local.get $4
     local.get $4
     call $~lib/array/Array<~lib/string/String>#get:length
     f64.convert_i32_s
     call $assembly/main/_random
     i32.trunc_sat_f64_s
     call $~lib/array/Array<~lib/string/String>#__get
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store $0 offset=60
     global.get $~lib/memory/__stack_pointer
     i32.const 3648
     i32.store $0 offset=64
     local.get $7
     i32.const 3648
     call $~lib/string/String.__concat
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store $0 offset=52
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store $0 offset=60
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store $0 offset=64
     local.get $5
     local.get $5
     call $~lib/array/Array<~lib/string/String>#get:length
     f64.convert_i32_s
     call $assembly/main/_random
     i32.trunc_sat_f64_s
     call $~lib/array/Array<~lib/string/String>#__get
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store $0 offset=56
     local.get $7
     local.get $8
     call $~lib/string/String.__concat
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store $0 offset=44
     global.get $~lib/memory/__stack_pointer
     i32.const 3648
     i32.store $0 offset=48
     local.get $7
     i32.const 3648
     call $~lib/string/String.__concat
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store $0 offset=36
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0 offset=44
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0 offset=48
     local.get $6
     local.get $6
     call $~lib/array/Array<~lib/string/String>#get:length
     f64.convert_i32_s
     call $assembly/main/_random
     i32.trunc_sat_f64_s
     call $~lib/array/Array<~lib/string/String>#__get
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store $0 offset=40
     local.get $7
     local.get $8
     call $~lib/string/String.__concat
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store $0 offset=32
     local.get $2
     local.get $7
     i32.store $0 offset=8
     local.get $7
     if
      local.get $2
      local.get $7
      i32.const 0
      call $byn-split-outlined-A$~lib/rt/itcms/__link
     end
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store $0 offset=20
     local.get $9
     local.get $3
     local.get $2
     call $~lib/array/Array<assembly/main/RowElement>#__set
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 76
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $9
   return
  end
  i32.const 36688
  i32.const 36736
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3892
  i32.lt_s
  if
   i32.const 36688
   i32.const 36736
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  i32.const 0
  i32.store $0
  local.get $0
  i32.const 2
  i32.shl
  local.tee $3
  i32.const 1
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $1
  if
   local.get $2
   local.get $1
   local.get $3
   memory.copy $0 $0
  end
  local.get $4
  local.get $2
  i32.store $0
  i32.const 16
  i32.const 6
  call $~lib/rt/itcms/__new
  local.tee $1
  local.get $2
  i32.store $0
  local.get $2
  if
   local.get $1
   local.get $2
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $1
  local.get $2
  i32.store $0 offset=4
  local.get $1
  local.get $3
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
 (func $export:assembly/main/updateData@varargs (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 3892
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store $0
   local.get $3
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3892
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store $0
   block $1of1
    block $0of1
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of1 $1of1 $outOfRange
     end
     unreachable
    end
    f64.const 10
    local.set $1
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store $0
   local.get $3
   i32.const 28
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3892
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.const 28
   memory.fill $0
   local.get $3
   local.get $0
   i32.store $0
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0 offset=4
    local.get $0
    call $~lib/array/Array<~lib/string/String>#get:length
    local.get $2
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=12
     local.get $0
     local.get $2
     call $~lib/array/Array<~lib/string/String>#__get
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store $0 offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=24
     local.get $0
     local.get $2
     call $~lib/array/Array<~lib/string/String>#__get
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0 offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.load $0 offset=8
     local.tee $4
     i32.store $0 offset=12
     global.get $~lib/memory/__stack_pointer
     i32.const 3712
     i32.store $0 offset=16
     local.get $4
     i32.const 3712
     call $~lib/string/String.__concat
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0 offset=8
     local.get $3
     local.get $4
     i32.store $0 offset=8
     local.get $4
     if
      local.get $3
      local.get $4
      i32.const 0
      call $byn-split-outlined-A$~lib/rt/itcms/__link
     end
     local.get $2
     local.get $1
     i32.trunc_sat_f64_s
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 36688
  i32.const 36736
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:assembly/main/updateDataForSwap (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 3892
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0
   local.get $1
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3892
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   i64.const 0
   i64.store $0 offset=8
   local.get $1
   local.get $0
   i32.store $0
   local.get $0
   call $~lib/array/Array<~lib/string/String>#get:length
   local.tee $1
   i32.const 2
   i32.ge_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0
    local.get $2
    local.get $0
    i32.const 1
    call $~lib/array/Array<~lib/string/String>#__get
    local.tee $2
    i32.store $0 offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0 offset=12
    local.get $0
    local.get $1
    i32.const 2
    i32.sub
    local.tee $3
    call $~lib/array/Array<~lib/string/String>#__get
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0 offset=8
    local.get $0
    i32.const 1
    local.get $1
    call $~lib/array/Array<assembly/main/RowElement>#__set
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store $0 offset=8
    local.get $0
    local.get $3
    local.get $2
    call $~lib/array/Array<assembly/main/RowElement>#__set
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 36688
  i32.const 36736
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
   i32.const 2176
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
