(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (type $none_=>_f64 (func (result f64)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32)))
 (type $i32_=>_f64 (func (param i32) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "seed" (func $~lib/builtins/seed (result f64)))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $assembly/main/vtree (mut i32) (i32.const 0))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1_64 (mut i64) (i64.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 6640))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 39544))
 (memory $0 1)
 (data $0 (i32.const 1036) "<")
 (data $0.1 (i32.const 1048) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $2 (i32.const 1132) "<")
 (data $2.1 (i32.const 1144) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $3 (i32.const 1196) ",")
 (data $3.1 (i32.const 1208) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $4 (i32.const 1244) ",")
 (data $4.1 (i32.const 1256) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $5 (i32.const 1292) "|")
 (data $5.1 (i32.const 1304) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data $6 (i32.const 1420) "\1c")
 (data $6.1 (i32.const 1432) "\02")
 (data $7 (i32.const 1452) "<")
 (data $7.1 (i32.const 1464) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $10 (i32.const 1580) "<")
 (data $10.1 (i32.const 1592) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $11 (i32.const 1644) ",")
 (data $11.1 (i32.const 1656) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $12 (i32.const 1692) "<")
 (data $12.1 (i32.const 1704) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data $13 (i32.const 1756) "\1c")
 (data $13.1 (i32.const 1768) "\01")
 (data $14 (i32.const 1788) "\1c")
 (data $14.1 (i32.const 1800) "\01")
 (data $15 (i32.const 1820) "\1c")
 (data $15.1 (i32.const 1832) "\02\00\00\00\04\00\00\00i\00d")
 (data $16 (i32.const 1852) "\1c")
 (data $16.1 (i32.const 1864) "\02\00\00\00\n\00\00\00t\00b\00o\00d\00y")
 (data $17 (i32.const 1884) "\1c")
 (data $17.1 (i32.const 1896) "\01")
 (data $18 (i32.const 1916) "\1c")
 (data $18.1 (i32.const 1928) "\02\00\00\00\0c\00\00\00p\00r\00e\00t\00t\00y")
 (data $19 (i32.const 1948) "\1c")
 (data $19.1 (i32.const 1960) "\02\00\00\00\n\00\00\00l\00a\00r\00g\00e")
 (data $20 (i32.const 1980) "\1c")
 (data $20.1 (i32.const 1992) "\02\00\00\00\06\00\00\00b\00i\00g")
 (data $21 (i32.const 2012) "\1c")
 (data $21.1 (i32.const 2024) "\02\00\00\00\n\00\00\00s\00m\00a\00l\00l")
 (data $22 (i32.const 2044) "\1c")
 (data $22.1 (i32.const 2056) "\02\00\00\00\08\00\00\00t\00a\00l\00l")
 (data $23 (i32.const 2076) "\1c")
 (data $23.1 (i32.const 2088) "\02\00\00\00\n\00\00\00s\00h\00o\00r\00t")
 (data $24 (i32.const 2108) "\1c")
 (data $24.1 (i32.const 2120) "\02\00\00\00\08\00\00\00l\00o\00n\00g")
 (data $25 (i32.const 2140) ",")
 (data $25.1 (i32.const 2152) "\02\00\00\00\10\00\00\00h\00a\00n\00d\00s\00o\00m\00e")
 (data $26 (i32.const 2188) "\1c")
 (data $26.1 (i32.const 2200) "\02\00\00\00\n\00\00\00p\00l\00a\00i\00n")
 (data $27 (i32.const 2220) "\1c")
 (data $27.1 (i32.const 2232) "\02\00\00\00\0c\00\00\00q\00u\00a\00i\00n\00t")
 (data $28 (i32.const 2252) "\1c")
 (data $28.1 (i32.const 2264) "\02\00\00\00\n\00\00\00c\00l\00e\00a\00n")
 (data $29 (i32.const 2284) ",")
 (data $29.1 (i32.const 2296) "\02\00\00\00\0e\00\00\00e\00l\00e\00g\00a\00n\00t")
 (data $30 (i32.const 2332) "\1c")
 (data $30.1 (i32.const 2344) "\02\00\00\00\08\00\00\00e\00a\00s\00y")
 (data $31 (i32.const 2364) "\1c")
 (data $31.1 (i32.const 2376) "\02\00\00\00\n\00\00\00a\00n\00g\00r\00y")
 (data $32 (i32.const 2396) "\1c")
 (data $32.1 (i32.const 2408) "\02\00\00\00\n\00\00\00c\00r\00a\00z\00y")
 (data $33 (i32.const 2428) ",")
 (data $33.1 (i32.const 2440) "\02\00\00\00\0e\00\00\00h\00e\00l\00p\00f\00u\00l")
 (data $34 (i32.const 2476) "\1c")
 (data $34.1 (i32.const 2488) "\02\00\00\00\n\00\00\00m\00u\00s\00h\00y")
 (data $35 (i32.const 2508) "\1c")
 (data $35.1 (i32.const 2520) "\02\00\00\00\06\00\00\00o\00d\00d")
 (data $36 (i32.const 2540) ",")
 (data $36.1 (i32.const 2552) "\02\00\00\00\12\00\00\00u\00n\00s\00i\00g\00h\00t\00l\00y")
 (data $37 (i32.const 2588) ",")
 (data $37.1 (i32.const 2600) "\02\00\00\00\10\00\00\00a\00d\00o\00r\00a\00b\00l\00e")
 (data $38 (i32.const 2636) ",")
 (data $38.1 (i32.const 2648) "\02\00\00\00\12\00\00\00i\00m\00p\00o\00r\00t\00a\00n\00t")
 (data $39 (i32.const 2684) ",")
 (data $39.1 (i32.const 2696) "\02\00\00\00\16\00\00\00i\00n\00e\00x\00p\00e\00n\00s\00i\00v\00e")
 (data $40 (i32.const 2732) "\1c")
 (data $40.1 (i32.const 2744) "\02\00\00\00\n\00\00\00c\00h\00e\00a\00p")
 (data $41 (i32.const 2764) ",")
 (data $41.1 (i32.const 2776) "\02\00\00\00\12\00\00\00e\00x\00p\00e\00n\00s\00i\00v\00e")
 (data $42 (i32.const 2812) "\1c")
 (data $42.1 (i32.const 2824) "\02\00\00\00\n\00\00\00f\00a\00n\00c\00y")
 (data $43 (i32.const 2844) "|")
 (data $43.1 (i32.const 2856) "\01\00\00\00d\00\00\00\90\07\00\00\b0\07\00\00\d0\07\00\00\f0\07\00\00\10\08\00\000\08\00\00P\08\00\00p\08\00\00\a0\08\00\00\c0\08\00\00\e0\08\00\00\00\t\00\000\t\00\00P\t\00\00p\t\00\00\90\t\00\00\c0\t\00\00\e0\t\00\00\00\n\00\000\n\00\00`\n\00\00\90\n\00\00\c0\n\00\00\e0\n\00\00\10\0b")
 (data $44 (i32.const 2972) "\1c")
 (data $44.1 (i32.const 2984) "\02\00\00\00\06\00\00\00r\00e\00d")
 (data $45 (i32.const 3004) "\1c")
 (data $45.1 (i32.const 3016) "\02\00\00\00\0c\00\00\00y\00e\00l\00l\00o\00w")
 (data $46 (i32.const 3036) "\1c")
 (data $46.1 (i32.const 3048) "\02\00\00\00\08\00\00\00b\00l\00u\00e")
 (data $47 (i32.const 3068) "\1c")
 (data $47.1 (i32.const 3080) "\02\00\00\00\n\00\00\00g\00r\00e\00e\00n")
 (data $48 (i32.const 3100) "\1c")
 (data $48.1 (i32.const 3112) "\02\00\00\00\08\00\00\00p\00i\00n\00k")
 (data $49 (i32.const 3132) "\1c")
 (data $49.1 (i32.const 3144) "\02\00\00\00\n\00\00\00b\00r\00o\00w\00n")
 (data $50 (i32.const 3164) "\1c")
 (data $50.1 (i32.const 3176) "\02\00\00\00\0c\00\00\00p\00u\00r\00p\00l\00e")
 (data $51 (i32.const 3196) "\1c")
 (data $51.1 (i32.const 3208) "\02\00\00\00\n\00\00\00w\00h\00i\00t\00e")
 (data $52 (i32.const 3228) "\1c")
 (data $52.1 (i32.const 3240) "\02\00\00\00\n\00\00\00b\00l\00a\00c\00k")
 (data $53 (i32.const 3260) "\1c")
 (data $53.1 (i32.const 3272) "\02\00\00\00\0c\00\00\00o\00r\00a\00n\00g\00e")
 (data $54 (i32.const 3292) "<")
 (data $54.1 (i32.const 3304) "\01\00\00\00,\00\00\00\b0\0b\00\00\d0\0b\00\00\f0\0b\00\00\10\0c\00\000\0c\00\00P\0c\00\00p\0c\00\00P\0c\00\00\90\0c\00\00\b0\0c\00\00\d0\0c")
 (data $55 (i32.const 3356) "\1c")
 (data $55.1 (i32.const 3368) "\02\00\00\00\n\00\00\00t\00a\00b\00l\00e")
 (data $56 (i32.const 3388) "\1c")
 (data $56.1 (i32.const 3400) "\02\00\00\00\n\00\00\00c\00h\00a\00i\00r")
 (data $57 (i32.const 3420) "\1c")
 (data $57.1 (i32.const 3432) "\02\00\00\00\n\00\00\00h\00o\00u\00s\00e")
 (data $58 (i32.const 3452) "\1c")
 (data $58.1 (i32.const 3464) "\02\00\00\00\06\00\00\00b\00b\00q")
 (data $59 (i32.const 3484) "\1c")
 (data $59.1 (i32.const 3496) "\02\00\00\00\08\00\00\00d\00e\00s\00k")
 (data $60 (i32.const 3516) "\1c")
 (data $60.1 (i32.const 3528) "\02\00\00\00\06\00\00\00c\00a\00r")
 (data $61 (i32.const 3548) "\1c")
 (data $61.1 (i32.const 3560) "\02\00\00\00\08\00\00\00p\00o\00n\00y")
 (data $62 (i32.const 3580) "\1c")
 (data $62.1 (i32.const 3592) "\02\00\00\00\0c\00\00\00c\00o\00o\00k\00i\00e")
 (data $63 (i32.const 3612) ",")
 (data $63.1 (i32.const 3624) "\02\00\00\00\10\00\00\00s\00a\00n\00d\00w\00i\00c\00h")
 (data $64 (i32.const 3660) "\1c")
 (data $64.1 (i32.const 3672) "\02\00\00\00\0c\00\00\00b\00u\00r\00g\00e\00r")
 (data $65 (i32.const 3692) "\1c")
 (data $65.1 (i32.const 3704) "\02\00\00\00\n\00\00\00p\00i\00z\00z\00a")
 (data $66 (i32.const 3724) "\1c")
 (data $66.1 (i32.const 3736) "\02\00\00\00\n\00\00\00m\00o\00u\00s\00e")
 (data $67 (i32.const 3756) ",")
 (data $67.1 (i32.const 3768) "\02\00\00\00\10\00\00\00k\00e\00y\00b\00o\00a\00r\00d")
 (data $68 (i32.const 3804) "L")
 (data $68.1 (i32.const 3816) "\01\00\00\004\00\00\000\r\00\00P\r\00\00p\r\00\00\90\r\00\00\b0\r\00\00\d0\r\00\00\f0\r\00\00\10\0e\00\000\0e\00\00`\0e\00\00\80\0e\00\00\a0\0e\00\00\c0\0e")
 (data $69 (i32.const 3884) "\1c")
 (data $69.1 (i32.const 3896) "\02\00\00\00\02\00\00\00 ")
 (data $70 (i32.const 3916) "\1c")
 (data $70.1 (i32.const 3928) "\02\00\00\00\04\00\00\00t\00r")
 (data $71 (i32.const 3948) "\1c")
 (data $71.1 (i32.const 3960) "\02\00\00\00\04\00\00\00t\00d")
 (data $72 (i32.const 3980) "\1c")
 (data $72.1 (i32.const 3992) "\01")
 (data $73 (i32.const 4012) "|")
 (data $73.1 (i32.const 4024) "\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data $74 (i32.const 4140) "<")
 (data $74.1 (i32.const 4152) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data $75 (i32.const 4204) "\1c")
 (data $75.1 (i32.const 4216) "\02\00\00\00\02\00\00\000")
 (data $76 (i32.const 4236) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data $77 (i32.const 4636) "\1c\04")
 (data $77.1 (i32.const 4648) "\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data $78 (i32.const 5692) "\\")
 (data $78.1 (i32.const 5704) "\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data $79 (i32.const 5788) "\1c")
 (data $79.1 (i32.const 5800) "\02\00\00\00\02\00\00\00a")
 (data $80 (i32.const 5820) "\1c")
 (data $80.1 (i32.const 5832) "\16\00\00\00\08\00\00\00\01")
 (data $81 (i32.const 5852) "\1c")
 (data $81.1 (i32.const 5864) "\01")
 (data $82 (i32.const 5884) "\1c")
 (data $82.1 (i32.const 5896) "\01")
 (data $83 (i32.const 5916) "<")
 (data $83.1 (i32.const 5928) "\02\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data $84 (i32.const 5980) ",")
 (data $84.1 (i32.const 5992) "\02\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s")
 (data $85 (i32.const 6028) "\1c")
 (data $85.1 (i32.const 6040) "\02\00\00\00\0c\00\00\00i\00g\00n\00o\00r\00e")
 (data $86 (i32.const 6060) "\1c")
 (data $86.1 (i32.const 6072) "\01")
 (data $87 (i32.const 6092) "\1c")
 (data $87.1 (i32.const 6104) "\01")
 (data $88 (i32.const 6124) "\1c")
 (data $88.1 (i32.const 6136) "\01")
 (data $89 (i32.const 6156) "<")
 (data $89.1 (i32.const 6168) "\02\00\00\00 \00\00\00i\00n\00v\00a\00l\00i\00d\00 \00d\00o\00w\00n\00c\00a\00s\00t")
 (data $90 (i32.const 6220) "\\")
 (data $90.1 (i32.const 6232) "\02\00\00\00H\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00l\00i\00b\00/\00m\00a\00p\00p\00e\00r\00s\00/\00p\00a\00t\00c\00h\00.\00m\00a\00p\00p\00e\00r\00.\00t\00s")
 (data $91 (i32.const 6316) "\1c")
 (data $91.1 (i32.const 6328) "\16\00\00\00\08\00\00\00\02")
 (data $92 (i32.const 6348) "\1c")
 (data $92.1 (i32.const 6360) "\16\00\00\00\08\00\00\00\03")
 (data $93 (i32.const 6380) "\1c")
 (data $93.1 (i32.const 6392) "\02\00\00\00\08\00\00\00 \00!\00!\00!")
 (data $94 (i32.const 6412) "\1c")
 (data $94.1 (i32.const 6424) "\16\00\00\00\08\00\00\00\04")
 (data $95 (i32.const 6444) "\1c")
 (data $95.1 (i32.const 6456) "\16\00\00\00\08\00\00\00\05")
 (data $96 (i32.const 6476) "\1c")
 (data $96.1 (i32.const 6488) "\16\00\00\00\08\00\00\00\06")
 (data $97 (i32.const 6508) "<")
 (data $97.1 (i32.const 6520) "\02\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data $98 (i32.const 6572) "<")
 (data $98.1 (i32.const 6584) "\02\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data $99 (i32.const 6640) "!\00\00\00 \00\00\00 \00\00\00 ")
 (data $99.1 (i32.const 6664) "\10A\82\00\02A\00\00\00\00\00\00\02\t")
 (data $99.2 (i32.const 6688) "\02A\00\00\02A")
 (data $99.3 (i32.const 6708) "\02A\00\00\02A\00\00\02A\00\00\00\00\00\00\02A")
 (data $99.4 (i32.const 6736) " \00\00\00\02A\00\00\02A")
 (data $99.5 (i32.const 6764) "\02A")
 (table $0 7 7 funcref)
 (elem $0 (i32.const 1) $assembly/main/doRun~anonymous|0 $assembly/main/doRunLots~anonymous|0 $assembly/main/doAdd~anonymous|0 $assembly/main/doUpdate~anonymous|0 $assembly/main/doClearRows~anonymous|0 $assembly/main/doSwapRows~anonymous|0)
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "doRun" (func $export:assembly/main/doRun))
 (export "doRunLots" (func $export:assembly/main/doRunLots))
 (export "doAdd" (func $export:assembly/main/doAdd))
 (export "doUpdate" (func $export:assembly/main/doUpdate))
 (export "doClearRows" (func $export:assembly/main/doClearRows))
 (export "doSwapRows" (func $export:assembly/main/doSwapRows))
 (start $~start)
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
   i32.const 39544
   i32.lt_u
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1056
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
   i32.const 1056
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
    i32.const 1056
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
   i32.const 6640
   i32.load $0
   i32.gt_u
   if
    i32.const 1152
    i32.const 1216
    i32.const 21
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   i32.const 2
   i32.shl
   i32.const 6644
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
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  global.get $assembly/main/vtree
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  i32.const 1152
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1664
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1312
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 5936
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1472
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 6528
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 6592
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 4656
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 5712
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
     i32.const 1056
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
   i32.const 1600
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
   i32.const 1600
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
   i32.const 1600
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
   i32.const 1600
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
   i32.const 1600
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
    i32.const 1600
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
   i32.const 1600
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
   i32.const 1600
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
   i32.const 1600
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
   i32.const 1600
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
    i32.const 1600
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
    i32.const 1600
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
  i32.const 39552
  i32.const 0
  i32.store $0
  i32.const 41120
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
    i32.const 39552
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
      i32.const 39552
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
  i32.const 39552
  i32.const 41124
  memory.size $0
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 39552
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
      i32.const 39544
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
     i32.const 1056
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 39544
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
     i32.const 39544
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
       i32.const 1600
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
   i32.const 1600
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
     i32.const 1600
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
   i32.const 1472
   i32.const 1056
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
   i32.const 1472
   i32.const 1600
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
    i32.const 1600
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
   i32.const 1600
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
   i32.const 1600
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
 (func $assembly/main/_random (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 f64)
  (local $3 f64)
  (local $4 i64)
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
   i64.const 33
   i64.shr_u
   local.get $1
   i64.xor
   i64.const -4265267296055464877
   i64.mul
   local.tee $1
   i64.const 33
   i64.shr_u
   local.get $1
   i64.xor
   global.set $~lib/math/random_state0_64
   global.get $~lib/math/random_state0_64
   i64.const -1
   i64.xor
   local.tee $1
   i64.const 33
   i64.shr_u
   local.get $1
   i64.xor
   i64.const -49064778989728563
   i64.mul
   local.tee $1
   i64.const 33
   i64.shr_u
   local.get $1
   i64.xor
   i64.const -4265267296055464877
   i64.mul
   local.tee $1
   i64.const 33
   i64.shr_u
   local.get $1
   i64.xor
   global.set $~lib/math/random_state1_64
   i32.const 1
   global.set $~lib/math/random_seeded
  end
  global.get $~lib/math/random_state0_64
  local.set $4
  global.get $~lib/math/random_state1_64
  local.tee $1
  global.set $~lib/math/random_state0_64
  local.get $1
  local.get $4
  local.get $4
  i64.const 23
  i64.shl
  i64.xor
  local.tee $4
  i64.const 17
  i64.shr_u
  local.get $4
  i64.xor
  i64.xor
  local.get $1
  i64.const 26
  i64.shr_u
  i64.xor
  global.set $~lib/math/random_state1_64
  local.get $1
  i64.const 12
  i64.shr_u
  i64.const 4607182418800017408
  i64.or
  f64.reinterpret_i64
  f64.const -1
  f64.add
  f64.const 1e3
  f64.mul
  local.tee $3
  f64.ceil
  local.tee $2
  local.get $2
  f64.const -1
  f64.add
  local.get $2
  f64.const -0.5
  f64.add
  local.get $3
  f64.le
  select
  i32.trunc_sat_f64_s
  local.get $0
  i32.rem_s
 )
 (func $~lib/number/I32#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  block $__inlined_func$~lib/util/number/itoa32
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 4224
    local.set $2
    br $__inlined_func$~lib/util/number/itoa32
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   local.get $0
   i32.sub
   local.get $0
   local.get $0
   i32.const 31
   i32.shr_u
   i32.const 1
   i32.shl
   local.tee $3
   select
   local.tee $0
   i32.const 100000
   i32.lt_u
   if (result i32)
    local.get $0
    i32.const 100
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 10
     i32.ge_u
     i32.const 1
     i32.add
    else
     local.get $0
     i32.const 10000
     i32.ge_u
     i32.const 3
     i32.add
     local.get $0
     i32.const 1000
     i32.ge_u
     i32.add
    end
   else
    local.get $0
    i32.const 10000000
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 1000000
     i32.ge_u
     i32.const 6
     i32.add
    else
     local.get $0
     i32.const 1000000000
     i32.ge_u
     i32.const 8
     i32.add
     local.get $0
     i32.const 100000000
     i32.ge_u
     i32.add
    end
   end
   local.tee $1
   i32.const 1
   i32.shl
   local.get $3
   i32.add
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store $0
   local.get $2
   local.get $3
   i32.add
   local.set $5
   loop $while-continue|0
    local.get $0
    i32.const 10000
    i32.ge_u
    if
     local.get $0
     i32.const 10000
     i32.rem_u
     local.set $4
     local.get $0
     i32.const 10000
     i32.div_u
     local.set $0
     local.get $5
     local.get $1
     i32.const 4
     i32.sub
     local.tee $1
     i32.const 1
     i32.shl
     i32.add
     local.get $4
     i32.const 100
     i32.div_u
     i32.const 2
     i32.shl
     i32.const 4236
     i32.add
     i64.load32_u $0
     local.get $4
     i32.const 100
     i32.rem_u
     i32.const 2
     i32.shl
     i32.const 4236
     i32.add
     i64.load32_u $0
     i64.const 32
     i64.shl
     i64.or
     i64.store $0
     br $while-continue|0
    end
   end
   local.get $0
   i32.const 100
   i32.ge_u
   if
    local.get $5
    local.get $1
    i32.const 2
    i32.sub
    local.tee $1
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 4236
    i32.add
    i32.load $0
    i32.store $0
    local.get $0
    i32.const 100
    i32.div_u
    local.set $0
   end
   local.get $0
   i32.const 10
   i32.ge_u
   if
    local.get $5
    local.get $1
    i32.const 2
    i32.sub
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    i32.const 2
    i32.shl
    i32.const 4236
    i32.add
    i32.load $0
    i32.store $0
   else
    local.get $5
    local.get $1
    i32.const 1
    i32.sub
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    i32.const 48
    i32.add
    i32.store16 $0
   end
   local.get $3
   if
    local.get $2
    i32.const 45
    i32.store16 $0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $2
 )
 (func $assembly/main/doClearRows~anonymous|0
  call $assembly/main/_removeAllRows
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
    i32.const 6528
    i32.const 1056
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
   i32.const 6592
   i32.const 1056
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
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner9
   block $folding-inner8
    block $folding-inner7
     block $folding-inner6
      block $folding-inner5
       block $folding-inner4
        block $folding-inner3
         block $folding-inner2
          block $folding-inner1
           block $invalid
            block $assembly/lib/models/patch.model/Patch
             block $~lib/function/Function<%28%29=>void>
              block $assembly/lib/models/patch.copied.model/CopiedPatch
               block $~lib/array/Array<i32>
                block $~lib/map/Map<~lib/string/String,~lib/string/String>
                 block $~lib/arraybuffer/ArrayBufferView
                  block $~lib/string/String
                   block $~lib/arraybuffer/ArrayBuffer
                    block $~lib/object/Object
                     local.get $0
                     i32.const 8
                     i32.sub
                     i32.load $0
                     br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $folding-inner1 $~lib/map/Map<~lib/string/String,~lib/string/String> $folding-inner2 $folding-inner1 $~lib/array/Array<i32> $folding-inner1 $folding-inner3 $folding-inner2 $folding-inner2 $folding-inner3 $assembly/lib/models/patch.copied.model/CopiedPatch $folding-inner9 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner4 $folding-inner2 $folding-inner1 $~lib/function/Function<%28%29=>void> $assembly/lib/models/patch.model/Patch $folding-inner2 $folding-inner2 $folding-inner4 $folding-inner4 $folding-inner3 $folding-inner9 $folding-inner2 $folding-inner4 $folding-inner4 $invalid
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
                global.get $~lib/memory/__stack_pointer
                i32.const 4
                i32.sub
                global.set $~lib/memory/__stack_pointer
                global.get $~lib/memory/__stack_pointer
                i32.const 6776
                i32.lt_s
                br_if $folding-inner5
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
                br $folding-inner7
               end
               global.get $~lib/memory/__stack_pointer
               i32.const 4
               i32.sub
               global.set $~lib/memory/__stack_pointer
               global.get $~lib/memory/__stack_pointer
               i32.const 6776
               i32.lt_s
               br_if $folding-inner5
               global.get $~lib/memory/__stack_pointer
               local.tee $1
               i32.const 0
               i32.store $0
               local.get $1
               local.get $0
               i32.store $0
               br $folding-inner6
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
              i32.load $0 offset=12
              local.tee $1
              if
               local.get $1
               call $byn-split-outlined-A$~lib/rt/itcms/__visit
              end
              br $folding-inner8
             end
             global.get $~lib/memory/__stack_pointer
             i32.const 4
             i32.sub
             global.set $~lib/memory/__stack_pointer
             global.get $~lib/memory/__stack_pointer
             i32.const 6776
             i32.lt_s
             br_if $folding-inner5
             global.get $~lib/memory/__stack_pointer
             local.tee $1
             i32.const 0
             i32.store $0
             local.get $1
             local.get $0
             i32.store $0
             local.get $0
             i32.load $0 offset=4
             local.tee $0
             if
              local.get $0
              call $byn-split-outlined-A$~lib/rt/itcms/__visit
             end
             br $folding-inner7
            end
            return
           end
           unreachable
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
          br $folding-inner8
         end
         global.get $~lib/memory/__stack_pointer
         i32.const 4
         i32.sub
         global.set $~lib/memory/__stack_pointer
         global.get $~lib/memory/__stack_pointer
         i32.const 6776
         i32.lt_s
         br_if $folding-inner5
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
         br $folding-inner6
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
       i32.load $0 offset=4
       local.tee $0
       if
        local.get $0
        call $byn-split-outlined-A$~lib/rt/itcms/__visit
       end
       return
      end
      i32.const 39568
      i32.const 39616
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
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   local.get $0
   i32.load $0 offset=16
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
 )
 (func $~start
  i32.const 1108
  i32.const 1104
  i32.store $0
  i32.const 1112
  i32.const 1104
  i32.store $0
  i32.const 1104
  global.set $~lib/rt/itcms/toSpace
  memory.size $0
  i32.const 16
  i32.shl
  i32.const 39544
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1524
  i32.const 1520
  i32.store $0
  i32.const 1528
  i32.const 1520
  i32.store $0
  i32.const 1520
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1556
  i32.const 1552
  i32.store $0
  i32.const 1560
  i32.const 1552
  i32.store $0
  i32.const 1552
  global.set $~lib/rt/itcms/fromSpace
  call $assembly/lib/models/v-element.model/EmptyVElement#constructor
  global.set $assembly/main/vtree
 )
 (func $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
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
 (func $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
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
   i32.const 1152
   i32.const 1264
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
   i32.const 1312
   i32.const 1264
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
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
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
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
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
 (func $assembly/lib/models/v-element.model/VElement#isText (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
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
  i32.const 1440
  i32.store $0 offset=4
  local.get $0
  i32.const 1440
  call $~lib/string/String.__ne
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
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
   i32.const 6776
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
   i32.const 6776
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
     i32.const 1440
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
  i32.const 39568
  i32.const 39616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
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
 (func $assembly/lib/models/v-element.model/VElement#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
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
  i32.const 1440
  i32.store $0 offset=8
  local.get $0
  i32.const 1440
  i32.store $0
  local.get $0
  i32.const 1440
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
  i32.const 1776
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
  i32.const 1440
  i32.store $0 offset=8
  local.get $0
  i32.const 1440
  i32.store $0 offset=16
  local.get $0
  i32.const 1440
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
  local.get $1
  local.get $2
  i32.store $0 offset=8
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
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $1
  local.get $3
  i32.store $0 offset=8
  local.get $0
  local.get $3
  i32.store $0 offset=8
  local.get $3
  if
   local.get $0
   local.get $3
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  i32.const 0
  local.set $2
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=4
   local.get $3
   call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length
   local.get $4
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $3
    i32.store $0 offset=4
    local.get $1
    local.get $3
    local.get $4
    call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
    local.tee $1
    i32.store $0 offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0 offset=4
    local.get $1
    call $assembly/lib/models/v-element.model/VElement#isText
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store $0 offset=16
     local.get $3
     local.get $4
     call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store $0 offset=4
     global.get $~lib/memory/__stack_pointer
     i32.const 1440
     i32.store $0 offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store $0 offset=24
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.load $0 offset=16
     local.tee $1
     i32.store $0 offset=20
     i32.const 1440
     local.get $1
     call $~lib/string/String.__concat
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store $0 offset=8
     local.get $5
     local.get $1
     i32.store $0 offset=16
     local.get $1
     if
      local.get $5
      local.get $1
      i32.const 0
      call $byn-split-outlined-A$~lib/rt/itcms/__link
     end
    else
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store $0 offset=4
     local.get $2
     local.get $1
     i32.load $0 offset=12
     i32.add
     local.set $2
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  local.get $2
  i32.store $0 offset=12
  local.get $1
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/lib/models/v-element.model/EmptyVElement#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
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
  i32.const 7
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $2
  i32.store $0 offset=4
  local.get $3
  i32.const 1440
  i32.store $0 offset=8
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=12
  i32.const 0
  i32.const 6
  i32.const 1808
  call $~lib/rt/__newArray
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=16
  local.get $3
  local.get $2
  i32.const 1440
  local.get $0
  local.get $1
  call $assembly/lib/models/v-element.model/VElement#constructor
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 20
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
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
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
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
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
   i32.const 6776
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
     i32.const 6776
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
  i32.const 39568
  i32.const 39616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/main/_removeAllRows
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
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
  i64.const 0
  i64.store $0 offset=8
  local.get $0
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#constructor
  local.tee $1
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1840
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1872
  i32.store $0 offset=12
  local.get $1
  i32.const 1840
  i32.const 1872
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#set
  global.get $~lib/memory/__stack_pointer
  i32.const 1872
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  i32.const 0
  i32.const 6
  i32.const 1904
  call $~lib/rt/__newArray
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=12
  i32.const 0
  i32.const 1872
  local.get $1
  local.get $0
  call $assembly/lib/models/v-element.model/VElement#constructor
  global.set $assembly/main/vtree
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<assembly/main/RowElement>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
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
  i64.const 0
  i64.store $0 offset=8
  local.get $1
  i32.const 16
  i32.const 20
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  i32.store $0 offset=4
  local.get $1
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  i32.store $0 offset=8
  local.get $1
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  i32.store $0 offset=12
  local.get $0
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1664
   i32.const 1264
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
  local.tee $1
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=12
  local.get $2
  local.get $3
  i32.store $0
  local.get $3
  if
   local.get $2
   local.get $3
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $3
  i32.store $0 offset=4
  local.get $4
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $1
  i32.store $0 offset=8
  local.get $4
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.store $0 offset=12
  local.get $4
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $assembly/main/RowElement#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
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
  i32.const 8
  i32.const 19
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $1
  local.get $0
  call $~lib/object/Object#constructor
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
  i32.const 8
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
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
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
    i32.const 1664
    i32.const 1264
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
 (func $~lib/array/Array<assembly/main/RowElement>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
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
    i32.const 1152
    i32.const 1264
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
 (func $assembly/main/buildData (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 76
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.const 76
  memory.fill $0
  local.get $2
  i32.const 25
  i32.const 11
  i32.const 2864
  call $~lib/rt/__newArray
  local.tee $6
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 11
  i32.const 11
  i32.const 3312
  call $~lib/rt/__newArray
  local.tee $2
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 13
  i32.const 11
  i32.const 3824
  call $~lib/rt/__newArray
  local.tee $3
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/array/Array<assembly/main/RowElement>#constructor
  local.tee $5
  i32.store $0 offset=12
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $7
    local.get $5
    i32.store $0 offset=16
    local.get $7
    call $assembly/main/RowElement#constructor
    local.tee $7
    i32.store $0 offset=24
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store $0 offset=28
    local.get $7
    local.get $1
    local.get $4
    i32.add
    i32.store $0
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store $0 offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0 offset=68
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0 offset=72
    local.get $6
    local.get $6
    call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length
    call $assembly/main/_random
    call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0 offset=60
    global.get $~lib/memory/__stack_pointer
    i32.const 3904
    i32.store $0 offset=64
    local.get $8
    i32.const 3904
    call $~lib/string/String.__concat
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0 offset=52
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store $0 offset=60
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store $0 offset=64
    local.get $2
    local.get $2
    call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length
    call $assembly/main/_random
    call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store $0 offset=56
    local.get $8
    local.get $9
    call $~lib/string/String.__concat
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0 offset=44
    global.get $~lib/memory/__stack_pointer
    i32.const 3904
    i32.store $0 offset=48
    local.get $8
    i32.const 3904
    call $~lib/string/String.__concat
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0 offset=36
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=44
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=48
    local.get $3
    local.get $3
    call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length
    call $assembly/main/_random
    call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store $0 offset=40
    local.get $8
    local.get $9
    call $~lib/string/String.__concat
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0 offset=32
    local.get $7
    local.get $8
    i32.store $0 offset=4
    local.get $8
    if
     local.get $7
     local.get $8
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store $0 offset=20
    local.get $5
    local.get $4
    local.get $7
    call $~lib/array/Array<assembly/main/RowElement>#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 76
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
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
  i64.const 0
  i64.store $0 offset=8
  local.get $1
  i32.const 16
  i32.const 6
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  i32.store $0 offset=4
  local.get $1
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  i32.store $0 offset=8
  local.get $1
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  i32.store $0 offset=12
  local.get $0
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1664
   i32.const 1264
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
  local.tee $1
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=12
  local.get $2
  local.get $3
  i32.store $0
  local.get $3
  if
   local.get $2
   local.get $3
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $3
  i32.store $0 offset=4
  local.get $4
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $1
  i32.store $0 offset=8
  local.get $4
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.store $0 offset=12
  local.get $4
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $assembly/lib/models/v-element.model/TextVElement#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.const 20
  memory.fill $0
  local.get $1
  i32.const 21
  i32.const 21
  call $~lib/rt/itcms/__new
  local.tee $4
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $4
  i32.store $0 offset=4
  local.get $1
  i32.const 1440
  i32.store $0 offset=8
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  i32.const 0
  i32.const 6
  i32.const 4000
  call $~lib/rt/__newArray
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=16
  local.get $1
  local.get $4
  i32.const 1440
  local.get $2
  local.get $3
  call $assembly/lib/models/v-element.model/VElement#constructor
  local.tee $1
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=8
  local.get $1
  local.get $0
  i32.store $0 offset=16
  local.get $0
  if
   local.get $1
   local.get $0
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $assembly/main/_appendRows (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.const 28
   memory.fill $0
   local.get $2
   local.get $0
   i32.store $0
   local.get $0
   call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#constructor
   local.tee $5
   i32.store $0 offset=4
   loop $for-loop|0
    local.get $1
    local.get $2
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $0
     i32.store $0
     local.get $3
     local.get $0
     local.get $1
     call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
     local.tee $6
     i32.store $0 offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 76
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 6776
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     i32.const 0
     i32.const 76
     memory.fill $0
     local.get $3
     i32.const 3936
     i32.store $0
     call $~lib/map/Map<~lib/string/String,~lib/string/String>#constructor
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store $0 offset=4
     global.get $~lib/memory/__stack_pointer
     i32.const 2
     i32.const 6
     i32.const 0
     call $~lib/rt/__newArray
     local.tee $3
     i32.store $0 offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.load $0 offset=4
     i32.store $0 offset=16
     global.get $~lib/memory/__stack_pointer
     i32.const 3968
     i32.store $0 offset=20
     call $~lib/map/Map<~lib/string/String,~lib/string/String>#constructor
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0 offset=24
     global.get $~lib/memory/__stack_pointer
     i32.const 1
     i32.const 6
     i32.const 0
     call $~lib/rt/__newArray
     local.tee $8
     i32.store $0 offset=32
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.load $0 offset=4
     i32.store $0 offset=36
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0 offset=44
     local.get $6
     i32.load $0
     call $~lib/number/I32#toString
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=40
     local.get $8
     i32.const 0
     local.get $9
     call $assembly/lib/models/v-element.model/TextVElement#constructor
     call $~lib/array/Array<assembly/main/RowElement>#__set
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store $0 offset=28
     local.get $3
     i32.const 0
     i32.const 0
     i32.const 3968
     local.get $4
     local.get $8
     call $assembly/lib/models/v-element.model/VElement#constructor
     call $~lib/array/Array<assembly/main/RowElement>#__set
     global.get $~lib/memory/__stack_pointer
     i32.const 3968
     i32.store $0 offset=20
     call $~lib/map/Map<~lib/string/String,~lib/string/String>#constructor
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store $0 offset=24
     global.get $~lib/memory/__stack_pointer
     i32.const 1
     i32.const 6
     i32.const 0
     call $~lib/rt/__newArray
     local.tee $9
     i32.store $0 offset=48
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.load $0 offset=4
     i32.store $0 offset=52
     global.get $~lib/memory/__stack_pointer
     i32.const 5808
     i32.store $0 offset=40
     call $~lib/map/Map<~lib/string/String,~lib/string/String>#constructor
     local.set $10
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=44
     global.get $~lib/memory/__stack_pointer
     i32.const 1
     i32.const 6
     i32.const 0
     call $~lib/rt/__newArray
     local.tee $4
     i32.store $0 offset=60
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.load $0 offset=4
     i32.store $0 offset=64
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0 offset=72
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.load $0 offset=4
     local.tee $6
     i32.store $0 offset=68
     local.get $4
     i32.const 0
     local.get $6
     call $assembly/lib/models/v-element.model/TextVElement#constructor
     call $~lib/array/Array<assembly/main/RowElement>#__set
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0 offset=56
     local.get $9
     i32.const 0
     i32.const 0
     i32.const 5808
     local.get $10
     local.get $4
     call $assembly/lib/models/v-element.model/VElement#constructor
     call $~lib/array/Array<assembly/main/RowElement>#__set
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=28
     local.get $3
     i32.const 1
     i32.const 0
     i32.const 3968
     local.get $8
     local.get $9
     call $assembly/lib/models/v-element.model/VElement#constructor
     call $~lib/array/Array<assembly/main/RowElement>#__set
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store $0 offset=8
     i32.const 0
     i32.const 3936
     local.get $7
     local.get $3
     call $assembly/lib/models/v-element.model/VElement#constructor
     local.set $3
     global.get $~lib/memory/__stack_pointer
     i32.const 76
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $3
     i32.store $0 offset=12
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     local.get $5
     i32.store $0
     local.get $4
     local.get $3
     i32.store $0 offset=16
     local.get $5
     local.get $1
     local.get $3
     call $~lib/array/Array<assembly/main/RowElement>#__set
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   call $~lib/map/Map<~lib/string/String,~lib/string/String>#constructor
   local.tee $0
   i32.store $0 offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 1840
   i32.store $0 offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 1872
   i32.store $0 offset=24
   local.get $0
   i32.const 1840
   i32.const 1872
   call $~lib/map/Map<~lib/string/String,~lib/string/String>#set
   global.get $~lib/memory/__stack_pointer
   i32.const 1872
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store $0 offset=24
   i32.const 0
   i32.const 1872
   local.get $0
   local.get $5
   call $assembly/lib/models/v-element.model/VElement#constructor
   global.set $assembly/main/vtree
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 39568
  i32.const 39616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/main/doRun~anonymous|0
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  call $assembly/main/_removeAllRows
  global.get $~lib/memory/__stack_pointer
  i32.const 1000
  i32.const 1
  call $assembly/main/buildData
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  local.get $0
  call $assembly/main/_appendRows
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/lib/mappers/v-element.mapper/toVElement (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.const 40
   memory.fill $0
   local.get $3
   call $assembly/lib/models/v-element.model/EmptyVElement#constructor
   local.tee $3
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load $0
   local.tee $4
   i32.store $0 offset=8
   local.get $3
   local.get $4
   i32.store $0
   local.get $4
   if
    local.get $3
    local.get $4
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $0
   i32.store $0 offset=4
   local.get $4
   local.get $0
   i32.load $0 offset=4
   local.tee $5
   i32.store $0 offset=16
   local.get $4
   local.get $5
   i32.store $0 offset=4
   local.get $4
   i32.const 32
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $6
   i32.const 0
   i32.const 32
   memory.fill $0
   local.get $6
   local.get $5
   i32.store $0
   local.get $6
   local.get $5
   i32.load $0
   local.tee $7
   i32.store $0 offset=4
   local.get $6
   local.get $5
   i32.store $0
   local.get $6
   local.get $5
   i32.load $0 offset=4
   local.tee $8
   i32.store $0 offset=8
   local.get $6
   local.get $7
   i32.store $0
   local.get $7
   call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length
   local.set $6
   global.get $~lib/memory/__stack_pointer
   call $~lib/map/Map<~lib/string/String,~lib/string/String>#constructor
   local.tee $9
   i32.store $0 offset=12
   loop $for-loop|0
    local.get $2
    local.get $6
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $5
     local.get $7
     i32.store $0
     local.get $5
     local.get $7
     local.get $2
     call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
     local.tee $10
     i32.store $0 offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $8
     local.get $2
     call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
     local.tee $5
     i32.store $0 offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=24
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store $0 offset=28
     local.get $9
     local.get $10
     local.get $5
     call $~lib/map/Map<~lib/string/String,~lib/string/String>#set
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   local.get $9
   i32.store $0 offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=8
   local.get $3
   local.get $9
   i32.store $0 offset=4
   local.get $9
   if
    local.get $3
    local.get $9
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store $0 offset=4
   local.get $2
   local.get $0
   i32.load $0 offset=8
   local.tee $4
   i32.store $0 offset=24
   local.get $2
   local.get $4
   i32.store $0 offset=4
   local.get $4
   call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#constructor
   local.tee $5
   i32.store $0 offset=28
   loop $for-loop|03
    local.get $1
    local.get $2
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $6
     local.get $4
     i32.store $0 offset=4
     local.get $6
     local.get $4
     local.get $1
     call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
     local.tee $6
     i32.store $0 offset=32
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0 offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $6
     call $assembly/lib/mappers/v-element.mapper/toVElement
     local.tee $6
     i32.store $0 offset=36
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store $0 offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0 offset=8
     local.get $5
     local.get $1
     local.get $6
     call $~lib/array/Array<assembly/main/RowElement>#__set
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|03
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $3
   i32.store $0 offset=4
   local.get $1
   local.get $5
   i32.store $0 offset=8
   local.get $3
   local.get $5
   i32.store $0 offset=8
   local.get $5
   if
    local.get $3
    local.get $5
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $3
   i32.store $0 offset=4
   local.get $1
   local.get $0
   i32.store $0 offset=8
   local.get $3
   local.get $0
   i32.load $0 offset=12
   i32.store $0 offset=12
   local.get $1
   local.get $3
   i32.store $0 offset=4
   local.get $1
   local.get $0
   i32.store $0 offset=12
   local.get $1
   local.get $0
   i32.load $0 offset=16
   local.tee $1
   i32.store $0 offset=8
   local.get $3
   local.get $1
   i32.store $0 offset=16
   local.get $1
   if
    local.get $3
    local.get $1
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $3
   i32.store $0 offset=4
   local.get $1
   local.get $0
   i32.store $0 offset=8
   local.get $3
   local.get $0
   i32.load8_u $0 offset=20
   i32.store8 $0 offset=20
   local.get $1
   i32.const 40
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  i32.const 39568
  i32.const 39616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<assembly/lib/models/patch.model/Patch>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
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
 (func $~lib/array/Array<~lib/string/String>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
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
  i64.const 0
  i64.store $0 offset=8
  local.get $1
  i32.const 16
  i32.const 11
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  i32.store $0 offset=4
  local.get $1
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  i32.store $0 offset=8
  local.get $1
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  i32.store $0 offset=12
  local.get $0
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1664
   i32.const 1264
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
  local.tee $1
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=12
  local.get $2
  local.get $3
  i32.store $0
  local.get $3
  if
   local.get $2
   local.get $3
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $3
  i32.store $0 offset=4
  local.get $4
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $1
  i32.store $0 offset=8
  local.get $4
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.store $0 offset=12
  local.get $4
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/array/Array<~lib/string/String>#set:length (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/array/ensureCapacity
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  i32.store $0 offset=12
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
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  i64.const 0
  i64.store $0
  local.get $4
  i32.const 0
  i32.store $0 offset=8
  local.get $4
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=8
  local.set $3
  local.get $4
  local.get $0
  i32.store $0
  local.get $4
  local.get $0
  i32.load $0 offset=16
  local.tee $4
  call $~lib/array/Array<~lib/string/String>#constructor
  local.tee $5
  i32.store $0 offset=4
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $3
    local.get $2
    i32.const 12
    i32.mul
    i32.add
    local.tee $6
    i32.load $0 offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     local.get $5
     i32.store $0
     local.get $0
     local.get $6
     i32.load $0
     local.tee $0
     i32.store $0 offset=8
     local.get $5
     local.get $1
     local.get $0
     call $~lib/array/Array<assembly/main/RowElement>#__set
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
  local.get $5
  i32.store $0
  local.get $5
  local.get $1
  call $~lib/array/Array<~lib/string/String>#set:length
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>#get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
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
   i32.const 5936
   i32.const 6000
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
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
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
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
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
   call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length
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
    call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
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
   call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length
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
    call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
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
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
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
  i32.const 29
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
 (func $assembly/lib/list-diff2/diff (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.const 48
   memory.fill $0
   local.get $3
   i32.const 0
   i32.const 30
   i32.const 6080
   call $~lib/rt/__newArray
   local.tee $7
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 6
   i32.const 6112
   call $~lib/rt/__newArray
   local.tee $5
   i32.store $0 offset=4
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0 offset=8
    local.get $0
    call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length
    local.get $8
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $0
     i32.store $0 offset=8
     local.get $3
     local.get $0
     local.get $8
     call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
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
     call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
     local.tee $3
     i32.store $0 offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store $0 offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store $0 offset=20
     local.get $5
     local.get $3
     call $~lib/array/Array<assembly/lib/models/patch.model/Patch>#push
     local.get $8
     i32.const 1
     i32.add
     local.set $8
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $5
   i32.store $0 offset=8
   i32.const 1
   global.set $~argumentsLength
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
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
    local.set $6
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $5
   i32.store $0
   local.get $2
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store $0
   local.get $2
   local.get $5
   i32.store $0
   local.get $5
   i32.load $0 offset=12
   local.tee $3
   i32.const 0
   local.get $3
   i32.const 0
   i32.le_s
   select
   local.set $8
   local.get $6
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $3
    local.get $6
    i32.add
    local.tee $3
    i32.const 0
    local.get $3
    i32.const 0
    i32.gt_s
    select
   else
    local.get $6
    local.get $3
    local.get $3
    local.get $6
    i32.gt_s
    select
   end
   local.set $3
   i32.const 0
   local.set $6
   local.get $2
   local.get $3
   local.get $8
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
   local.tee $9
   local.get $3
   i32.store $0
   local.get $3
   i32.load $0 offset=4
   local.set $10
   local.get $9
   local.get $5
   i32.store $0
   local.get $5
   i32.load $0 offset=4
   local.get $8
   i32.const 2
   i32.shl
   i32.add
   local.set $8
   local.get $2
   i32.const 2
   i32.shl
   local.set $2
   loop $while-continue|01
    local.get $2
    local.get $6
    i32.gt_u
    if
     local.get $6
     local.get $10
     i32.add
     local.get $6
     local.get $8
     i32.add
     i32.load $0
     local.tee $9
     i32.store $0
     local.get $9
     if
      local.get $3
      local.get $9
      i32.const 1
      call $byn-split-outlined-A$~lib/rt/itcms/__link
     end
     local.get $6
     i32.const 4
     i32.add
     local.set $6
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
   local.set $8
   loop $while-continue|1
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=8
    local.get $3
    call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length
    local.get $8
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store $0 offset=8
     local.get $3
     local.get $8
     call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
     if
      local.get $8
      i32.const 1
      i32.add
      local.set $8
     else
      global.get $~lib/memory/__stack_pointer
      local.set $0
      call $assembly/lib/models/v-element.model/EmptyVElement#constructor
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store $0 offset=8
      local.get $0
      local.get $8
      local.get $2
      i32.const 0
      call $assembly/lib/models/list-diff2.model/Move#constructor
      local.tee $0
      i32.store $0 offset=28
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store $0 offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store $0 offset=20
      local.get $7
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
      i32.const 6776
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
      local.get $8
      i32.const 0
      i32.lt_s
      if (result i32)
       local.get $0
       local.get $8
       i32.add
       local.tee $2
       i32.const 0
       local.get $2
       i32.const 0
       i32.gt_s
       select
      else
       local.get $8
       local.get $0
       local.get $0
       local.get $8
       i32.gt_s
       select
      end
      local.tee $2
      i32.sub
      local.tee $6
      local.get $6
      i32.const 1
      i32.gt_s
      select
      local.tee $6
      i32.const 0
      local.get $6
      i32.const 0
      i32.gt_s
      select
      local.tee $6
      i32.const 6
      i32.const 0
      call $~lib/rt/__newArray
      local.tee $9
      i32.store $0 offset=4
      global.get $~lib/memory/__stack_pointer
      local.tee $10
      local.get $9
      i32.store $0
      local.get $9
      i32.load $0 offset=4
      local.set $9
      local.get $10
      local.get $3
      i32.store $0
      local.get $9
      local.get $3
      i32.load $0 offset=4
      local.tee $9
      local.get $2
      i32.const 2
      i32.shl
      i32.add
      local.tee $10
      local.get $6
      i32.const 2
      i32.shl
      memory.copy $0 $0
      local.get $2
      local.get $6
      i32.add
      local.tee $2
      local.get $0
      i32.ne
      if
       local.get $10
       local.get $9
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
      local.get $6
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
   local.set $8
   loop $while-continue|2
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0 offset=8
    local.get $1
    call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length
    local.get $8
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     local.get $1
     i32.store $0 offset=8
     local.get $0
     local.get $1
     local.get $8
     call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
     local.tee $0
     i32.store $0 offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store $0 offset=8
     local.get $3
     call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $2
      local.get $3
      i32.store $0 offset=8
      local.get $2
      local.get $3
      local.get $4
      call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
      local.tee $2
      i32.store $0 offset=32
      local.get $2
      if
       local.get $4
       i32.const 1
       i32.add
       local.set $4
      else
       global.get $~lib/memory/__stack_pointer
       local.tee $2
       local.get $0
       i32.store $0 offset=8
       local.get $2
       local.get $8
       local.get $0
       i32.const 1
       call $assembly/lib/models/list-diff2.model/Move#constructor
       local.tee $0
       i32.store $0 offset=36
       global.get $~lib/memory/__stack_pointer
       local.get $7
       i32.store $0 offset=8
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store $0 offset=20
       local.get $7
       local.get $0
       call $~lib/array/Array<assembly/lib/models/patch.model/Patch>#push
      end
     else
      global.get $~lib/memory/__stack_pointer
      local.tee $2
      local.get $0
      i32.store $0 offset=8
      local.get $2
      local.get $8
      local.get $0
      i32.const 1
      call $assembly/lib/models/list-diff2.model/Move#constructor
      local.tee $0
      i32.store $0 offset=40
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store $0 offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store $0 offset=20
      local.get $7
      local.get $0
      call $~lib/array/Array<assembly/lib/models/patch.model/Patch>#push
     end
     local.get $8
     i32.const 1
     i32.add
     local.set $8
     br $while-continue|2
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=8
   local.get $3
   call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length
   local.get $4
   i32.sub
   local.set $2
   loop $while-continue|3
    local.get $4
    local.tee $0
    i32.const 1
    i32.add
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=8
    local.get $3
    call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length
    local.get $0
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     call $assembly/lib/models/v-element.model/EmptyVElement#constructor
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store $0 offset=8
     local.get $0
     local.get $8
     local.get $2
     i32.const 1
     i32.sub
     local.tee $2
     i32.add
     local.get $1
     i32.const 0
     call $assembly/lib/models/list-diff2.model/Move#constructor
     local.tee $0
     i32.store $0 offset=44
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store $0 offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=20
     local.get $7
     local.get $0
     call $~lib/array/Array<assembly/lib/models/patch.model/Patch>#push
     br $while-continue|3
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $7
   i32.store $0 offset=8
   local.get $0
   local.get $5
   i32.store $0 offset=20
   local.get $0
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
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
   i32.const 28
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
   local.get $7
   i32.store $0 offset=8
   local.get $0
   local.get $7
   i32.store $0
   local.get $7
   if
    local.get $0
    local.get $7
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0 offset=4
   local.get $1
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
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 39568
  i32.const 39616
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
   i32.const 6776
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
   call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length
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
    i32.const 6776
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
    i32.const 31
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
   call $assembly/lib/models/v-element.model/EmptyVElement#constructor
   local.tee $4
   i32.store $0 offset=20
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $0
    call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length
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
     call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
     local.tee $1
     i32.store $0 offset=24
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $6
     local.get $5
     call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
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
     i32.const 6776
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
  i32.const 39568
  i32.const 39616
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
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 0
   i32.const 28
   memory.fill $0
   local.get $4
   i32.const 0
   i32.const 24
   i32.const 5904
   call $~lib/rt/__newArray
   local.tee $4
   i32.store $0
   local.get $1
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0 offset=4
    local.get $0
    call $assembly/lib/models/v-element.model/VElement#isText
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store $0 offset=4
     local.get $1
     call $assembly/lib/models/v-element.model/VElement#isText
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
      i32.const 6776
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
      i32.const 26
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
      i32.const 6776
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
       i32.const 6776
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
       i32.const 27
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
      i32.const 6776
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
       i32.const 6048
       i32.store $0 offset=4
       local.get $6
       i32.const 6048
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
      i32.const 6776
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
      i32.const 32
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
   call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length
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
    call $~lib/array/Array<assembly/main/RowElement>#__set
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 39568
  i32.const 39616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/lib/mappers/v-element.mapper/toCopiedPropsType (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.const 24
   memory.fill $0
   local.get $3
   local.get $0
   i32.store $0
   local.get $3
   local.get $0
   call $~lib/map/Map<~lib/string/String,~lib/string/String>#keys
   local.tee $3
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
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
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=8
   local.set $6
   local.get $5
   local.get $0
   i32.store $0
   local.get $5
   local.get $0
   i32.load $0 offset=16
   local.tee $7
   call $~lib/array/Array<~lib/string/String>#constructor
   local.tee $0
   i32.store $0 offset=4
   loop $for-loop|0
    local.get $2
    local.get $7
    i32.lt_s
    if
     local.get $6
     local.get $2
     i32.const 12
     i32.mul
     i32.add
     local.tee $5
     i32.load $0 offset=8
     i32.const 1
     i32.and
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $8
      local.get $0
      i32.store $0
      local.get $8
      local.get $5
      i32.load $0 offset=4
      local.tee $5
      i32.store $0 offset=8
      local.get $0
      local.get $1
      local.get $5
      call $~lib/array/Array<assembly/main/RowElement>#__set
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
   local.get $0
   i32.store $0
   local.get $0
   local.get $1
   call $~lib/array/Array<~lib/string/String>#set:length
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   local.get $0
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i64.const 0
   i64.store $0
   local.get $4
   i32.const 8
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $4
   i32.store $0 offset=4
   local.get $5
   local.get $4
   call $~lib/object/Object#constructor
   local.tee $4
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0 offset=4
   local.get $4
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0 offset=4
   local.get $4
   i32.const 0
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   local.get $4
   i32.store $0 offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=16
   local.get $4
   local.get $3
   i32.store $0
   local.get $3
   if
    local.get $4
    local.get $3
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $4
   i32.store $0
   local.get $2
   local.get $0
   i32.store $0 offset=16
   local.get $4
   local.get $0
   i32.store $0 offset=4
   local.get $0
   if
    local.get $4
    local.get $0
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   local.get $1
   local.get $4
   i32.store $0 offset=20
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  end
  i32.const 39568
  i32.const 39616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/lib/mappers/v-element.mapper/toCopiedVElement (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.const 40
   memory.fill $0
   local.get $3
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store $0
   local.get $2
   i32.const 21
   i32.const 9
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $2
   i32.store $0 offset=4
   local.get $4
   local.get $2
   call $~lib/object/Object#constructor
   local.tee $2
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   local.get $2
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   local.get $2
   i32.const 0
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   local.get $2
   i32.const 0
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $2
   i32.store $0 offset=4
   local.get $2
   i32.const 0
   i32.store $0 offset=12
   local.get $4
   local.get $2
   i32.store $0 offset=4
   local.get $2
   i32.const 0
   i32.store $0 offset=16
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $2
   i32.store $0 offset=4
   local.get $2
   i32.const 0
   i32.store8 $0 offset=20
   local.get $4
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $2
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load $0
   local.tee $4
   i32.store $0 offset=8
   local.get $2
   local.get $4
   i32.store $0
   local.get $4
   if
    local.get $2
    local.get $4
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $2
   i32.store $0 offset=4
   local.get $4
   local.get $0
   i32.store $0 offset=16
   local.get $4
   local.get $0
   i32.load $0 offset=4
   local.tee $4
   i32.store $0 offset=12
   local.get $4
   call $assembly/lib/mappers/v-element.mapper/toCopiedPropsType
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0 offset=8
   local.get $2
   local.get $4
   i32.store $0 offset=4
   local.get $4
   if
    local.get $2
    local.get $4
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   i32.const 0
   i32.const 12
   i32.const 6144
   call $~lib/rt/__newArray
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0 offset=8
   local.get $2
   local.get $4
   i32.store $0 offset=8
   local.get $4
   if
    local.get $2
    local.get $4
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $2
   i32.store $0 offset=4
   local.get $4
   local.get $0
   i32.store $0 offset=8
   local.get $2
   local.get $0
   i32.load $0 offset=12
   i32.store $0 offset=12
   local.get $4
   local.get $2
   i32.store $0 offset=4
   local.get $4
   local.get $0
   i32.store $0 offset=12
   local.get $4
   local.get $0
   i32.load $0 offset=16
   local.tee $4
   i32.store $0 offset=8
   local.get $2
   local.get $4
   i32.store $0 offset=16
   local.get $4
   if
    local.get $2
    local.get $4
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $2
   i32.store $0 offset=4
   local.get $4
   local.get $0
   i32.store $0 offset=8
   local.get $2
   local.get $0
   i32.load8_u $0 offset=20
   i32.store8 $0 offset=20
   local.get $3
   local.get $2
   i32.store $0 offset=20
   local.get $4
   local.get $0
   i32.store $0 offset=4
   local.get $4
   local.get $0
   i32.load $0 offset=8
   local.tee $5
   i32.store $0 offset=24
   local.get $4
   local.get $5
   i32.store $0 offset=4
   local.get $5
   call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store $0
   local.get $3
   i64.const 0
   i64.store $0 offset=8
   local.get $3
   i32.const 16
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=4
   local.get $3
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
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
   local.get $4
   local.get $3
   i32.store $0 offset=4
   local.get $3
   i32.const 0
   i32.store $0 offset=12
   local.get $0
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1664
    i32.const 1264
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
   local.tee $7
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0 offset=12
   local.get $3
   local.get $4
   i32.store $0
   local.get $4
   if
    local.get $3
    local.get $4
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $8
   local.get $3
   i32.store $0 offset=4
   local.get $3
   local.get $4
   i32.store $0 offset=4
   local.get $8
   local.get $3
   i32.store $0 offset=4
   local.get $3
   local.get $7
   i32.store $0 offset=8
   local.get $8
   local.get $3
   i32.store $0 offset=4
   local.get $3
   local.get $0
   i32.store $0 offset=12
   local.get $8
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   local.get $3
   i32.store $0 offset=28
   loop $for-loop|0
    local.get $0
    local.get $1
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     local.get $5
     i32.store $0 offset=4
     local.get $4
     local.get $5
     local.get $1
     call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
     local.tee $4
     i32.store $0 offset=32
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0 offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     call $assembly/lib/mappers/v-element.mapper/toCopiedVElement
     local.tee $4
     i32.store $0 offset=36
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store $0 offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0 offset=8
     local.get $3
     local.get $1
     local.get $4
     call $~lib/array/Array<assembly/main/RowElement>#__set
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $2
   i32.store $0 offset=4
   local.get $0
   local.get $3
   i32.store $0 offset=8
   local.get $2
   local.get $3
   i32.store $0 offset=8
   local.get $3
   if
    local.get $2
    local.get $3
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 40
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 39568
  i32.const 39616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/lib/mappers/list-diff2.mapper/toCopiedMoves (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.const 20
   memory.fill $0
   local.get $1
   local.get $0
   i32.store $0
   local.get $0
   call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i64.const 0
   i64.store $0
   local.get $4
   i64.const 0
   i64.store $0 offset=8
   local.get $4
   i32.const 16
   i32.const 16
   call $~lib/rt/itcms/__new
   local.tee $6
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0 offset=4
   local.get $4
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0 offset=8
   local.get $4
   local.get $6
   i32.store $0 offset=4
   local.get $6
   i32.const 0
   i32.store $0 offset=12
   local.get $1
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1664
    i32.const 1264
    i32.const 70
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   local.get $1
   local.get $1
   i32.const 8
   i32.le_u
   select
   i32.const 2
   i32.shl
   local.tee $4
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store $0 offset=12
   local.get $6
   local.get $5
   i32.store $0
   local.get $5
   if
    local.get $6
    local.get $5
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $7
   local.get $6
   i32.store $0 offset=4
   local.get $6
   local.get $5
   i32.store $0 offset=4
   local.get $7
   local.get $6
   i32.store $0 offset=4
   local.get $6
   local.get $4
   i32.store $0 offset=8
   local.get $7
   local.get $6
   i32.store $0 offset=4
   local.get $6
   local.get $1
   i32.store $0 offset=12
   local.get $7
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $6
   i32.store $0 offset=4
   loop $for-loop|0
    local.get $1
    local.get $2
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $0
     i32.store $0
     local.get $3
     local.get $0
     local.get $2
     call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
     local.tee $7
     i32.store $0 offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.set $8
     global.get $~lib/memory/__stack_pointer
     i32.const 20
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 6776
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     i32.const 0
     i32.const 20
     memory.fill $0
     local.get $3
     local.get $7
     i32.store $0 offset=4
     local.get $3
     local.get $7
     i32.load $0 offset=8
     local.tee $4
     i32.store $0
     local.get $3
     local.get $4
     call $assembly/lib/mappers/v-element.mapper/toCopiedVElement
     local.tee $9
     i32.store $0 offset=8
     global.get $~lib/memory/__stack_pointer
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.set $4
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 6776
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     local.tee $5
     i64.const 0
     i64.store $0
     local.get $5
     i32.const 12
     i32.const 15
     call $~lib/rt/itcms/__new
     local.tee $10
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.tee $5
     local.get $10
     i32.store $0 offset=4
     local.get $5
     local.get $10
     call $~lib/object/Object#constructor
     local.tee $5
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store $0 offset=4
     local.get $5
     i32.const 0
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store $0 offset=4
     local.get $5
     i32.const 0
     i32.store $0 offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store $0 offset=4
     local.get $5
     i32.const 0
     i32.store $0 offset=8
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $4
     local.get $5
     i32.store $0 offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store $0 offset=4
     local.get $5
     local.get $7
     i32.load $0
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store $0 offset=4
     local.get $5
     local.get $7
     i32.load $0 offset=4
     i32.store $0 offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     local.get $5
     local.get $9
     i32.store $0 offset=8
     local.get $9
     if
      local.get $5
      local.get $9
      i32.const 0
      call $byn-split-outlined-A$~lib/rt/itcms/__link
     end
     local.get $3
     local.get $5
     i32.store $0 offset=16
     global.get $~lib/memory/__stack_pointer
     i32.const 20
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $8
     local.get $5
     i32.store $0 offset=12
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $6
     i32.store $0
     local.get $3
     local.get $5
     i32.store $0 offset=16
     local.get $6
     local.get $2
     local.get $5
     call $~lib/array/Array<assembly/main/RowElement>#__set
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  i32.const 39568
  i32.const 39616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/lib/mappers/patch.mapper/toCopiedPatch (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const -64
  i32.add
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.const 64
   memory.fill $0
   local.get $1
   local.get $0
   i32.store $0
   block $__inlined_func$assembly/lib/models/patch.model/Patch#get:type@override
    block $default
     local.get $0
     i32.const 8
     i32.sub
     i32.load $0
     i32.const 26
     i32.sub
     br_table $__inlined_func$assembly/lib/models/patch.model/Patch#get:type@override $__inlined_func$assembly/lib/models/patch.model/Patch#get:type@override $default $default $default $__inlined_func$assembly/lib/models/patch.model/Patch#get:type@override $__inlined_func$assembly/lib/models/patch.model/Patch#get:type@override $default
    end
    unreachable
   end
   local.get $0
   i32.load $0
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   i32.const 20
   i32.const 14
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $1
   i32.store $0 offset=4
   local.get $4
   local.get $1
   call $~lib/object/Object#constructor
   local.tee $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=4
   local.get $1
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=4
   local.get $1
   i32.const 0
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=4
   local.get $1
   i32.const 0
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=4
   local.get $1
   i32.const 0
   i32.store $0 offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=4
   local.get $1
   i32.const 0
   i32.store $0 offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $1
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0
   local.get $1
   local.get $2
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0
   local.get $1
   i32.const 0
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0
   local.get $1
   i32.const 0
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0
   local.get $1
   i32.const 0
   i32.store $0 offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0
   local.get $1
   i32.const 0
   i32.store $0 offset=16
   local.get $3
   local.get $1
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   block $__inlined_func$assembly/lib/models/patch.model/Patch#get:type@override0
    block $default1
     local.get $0
     i32.const 8
     i32.sub
     i32.load $0
     i32.const 26
     i32.sub
     br_table $__inlined_func$assembly/lib/models/patch.model/Patch#get:type@override0 $__inlined_func$assembly/lib/models/patch.model/Patch#get:type@override0 $default1 $default1 $default1 $__inlined_func$assembly/lib/models/patch.model/Patch#get:type@override0 $__inlined_func$assembly/lib/models/patch.model/Patch#get:type@override0 $default1
    end
    unreachable
   end
   block $break|0
    block $case3|0
     block $case2|0
      block $case1|0
       block $case0|0
        local.get $0
        i32.load $0
        br_table $case0|0 $case1|0 $case2|0 $case3|0 $break|0
       end
       block $__inlined_func$~instanceof|assembly/lib/models/patch.model/ReplacePatch (result i32)
        global.get $~lib/memory/__stack_pointer
        local.tee $2
        local.get $0
        i32.store $0 offset=12
        i32.const 0
        local.get $0
        i32.const 8
        i32.sub
        i32.load $0
        i32.const 32
        i32.ne
        br_if $__inlined_func$~instanceof|assembly/lib/models/patch.model/ReplacePatch
        drop
        i32.const 1
       end
       i32.eqz
       if
        i32.const 6176
        i32.const 6240
        i32.const 22
        i32.const 46
        call $~lib/builtins/abort
        unreachable
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $3
       local.get $0
       i32.store $0
       local.get $2
       local.get $0
       i32.load $0 offset=4
       local.tee $0
       i32.store $0 offset=16
       local.get $3
       local.get $0
       i32.store $0
       local.get $3
       local.get $0
       call $assembly/lib/mappers/v-element.mapper/toCopiedVElement
       local.tee $0
       i32.store $0 offset=20
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store $0
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store $0 offset=24
       local.get $1
       local.get $0
       i32.store $0 offset=4
       local.get $0
       if
        local.get $1
        local.get $0
        i32.const 0
        call $byn-split-outlined-A$~lib/rt/itcms/__link
       end
       br $break|0
      end
      block $__inlined_func$~instanceof|assembly/lib/models/patch.model/ReorderPatch (result i32)
       global.get $~lib/memory/__stack_pointer
       local.tee $2
       local.get $0
       i32.store $0 offset=28
       i32.const 0
       local.get $0
       i32.const 8
       i32.sub
       i32.load $0
       i32.const 31
       i32.ne
       br_if $__inlined_func$~instanceof|assembly/lib/models/patch.model/ReorderPatch
       drop
       i32.const 1
      end
      i32.eqz
      if
       i32.const 6176
       i32.const 6240
       i32.const 27
       i32.const 36
       call $~lib/builtins/abort
       unreachable
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $3
      local.get $0
      i32.store $0
      local.get $2
      local.get $0
      i32.load $0 offset=4
      local.tee $0
      i32.store $0 offset=32
      local.get $3
      local.get $0
      i32.store $0
      local.get $3
      local.get $0
      call $assembly/lib/mappers/list-diff2.mapper/toCopiedMoves
      local.tee $0
      i32.store $0 offset=36
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store $0 offset=24
      local.get $1
      local.get $0
      i32.store $0 offset=8
      local.get $0
      if
       local.get $1
       local.get $0
       i32.const 0
       call $byn-split-outlined-A$~lib/rt/itcms/__link
      end
      br $break|0
     end
     block $__inlined_func$~instanceof|assembly/lib/models/patch.model/PropsPatch (result i32)
      global.get $~lib/memory/__stack_pointer
      local.tee $2
      local.get $0
      i32.store $0 offset=40
      i32.const 0
      local.get $0
      i32.const 8
      i32.sub
      i32.load $0
      i32.const 27
      i32.ne
      br_if $__inlined_func$~instanceof|assembly/lib/models/patch.model/PropsPatch
      drop
      i32.const 1
     end
     i32.eqz
     if
      i32.const 6176
      i32.const 6240
      i32.const 32
      i32.const 39
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $0
     i32.store $0
     local.get $2
     local.get $0
     i32.load $0 offset=4
     local.tee $0
     i32.store $0 offset=44
     local.get $3
     local.get $0
     i32.store $0
     local.get $3
     local.get $0
     call $assembly/lib/mappers/v-element.mapper/toCopiedPropsType
     local.tee $0
     i32.store $0 offset=48
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=24
     local.get $1
     local.get $0
     i32.store $0 offset=12
     local.get $0
     if
      local.get $1
      local.get $0
      i32.const 0
      call $byn-split-outlined-A$~lib/rt/itcms/__link
     end
     br $break|0
    end
    block $__inlined_func$~instanceof|assembly/lib/models/patch.model/TextPatch (result i32)
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $0
     i32.store $0 offset=52
     i32.const 0
     local.get $0
     i32.const 8
     i32.sub
     i32.load $0
     i32.const 26
     i32.ne
     br_if $__inlined_func$~instanceof|assembly/lib/models/patch.model/TextPatch
     drop
     i32.const 1
    end
    i32.eqz
    if
     i32.const 6176
     i32.const 6240
     i32.const 37
     i32.const 40
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $0
    i32.store $0
    local.get $2
    local.get $0
    i32.load $0 offset=4
    local.tee $0
    i32.store $0 offset=56
    local.get $3
    local.get $0
    i32.store $0
    local.get $3
    local.get $0
    call $assembly/lib/mappers/v-element.mapper/toCopiedVElement
    local.tee $0
    i32.store $0 offset=60
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0 offset=24
    local.get $1
    local.get $0
    i32.store $0 offset=16
    local.get $0
    if
     local.get $1
     local.get $0
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const -64
   i32.sub
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 39568
  i32.const 39616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/lib/mappers/patch.mapper/toCopiedPatches (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   block $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 6776
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    i32.const 0
    i32.const 28
    memory.fill $0
    local.get $1
    local.get $0
    i32.store $0
    local.get $0
    call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 6776
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
    i32.const 18
    call $~lib/rt/itcms/__new
    local.tee $6
    i32.store $0
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0 offset=4
    local.get $6
    i32.const 0
    i32.store $0
    global.get $~lib/memory/__stack_pointer
    local.tee $4
    local.get $6
    i32.store $0 offset=4
    local.get $6
    i32.const 0
    i32.store $0 offset=4
    local.get $4
    local.get $6
    i32.store $0 offset=4
    local.get $6
    i32.const 0
    i32.store $0 offset=8
    local.get $4
    local.get $6
    i32.store $0 offset=4
    local.get $6
    i32.const 0
    i32.store $0 offset=12
    local.get $2
    i32.const 268435455
    i32.gt_u
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    local.get $2
    local.get $2
    i32.const 8
    i32.le_u
    select
    i32.const 2
    i32.shl
    local.tee $4
    i32.const 1
    call $~lib/rt/itcms/__new
    local.tee $5
    i32.store $0 offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0 offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store $0 offset=12
    local.get $6
    local.get $5
    i32.store $0
    local.get $5
    if
     local.get $6
     local.get $5
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $7
    local.get $6
    i32.store $0 offset=4
    local.get $6
    local.get $5
    i32.store $0 offset=4
    local.get $7
    local.get $6
    i32.store $0 offset=4
    local.get $6
    local.get $4
    i32.store $0 offset=8
    local.get $7
    local.get $6
    i32.store $0 offset=4
    local.get $6
    local.get $2
    i32.store $0 offset=12
    local.get $7
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $1
    local.get $6
    i32.store $0 offset=4
    loop $for-loop|0
     local.get $2
     local.get $3
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $0
      i32.store $0
      local.get $1
      local.get $0
      local.get $3
      call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
      local.tee $7
      i32.store $0 offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store $0
      local.get $7
      call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.set $9
      global.get $~lib/memory/__stack_pointer
      i32.const 16
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 6776
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
      i32.const 16
      i32.const 17
      call $~lib/rt/itcms/__new
      local.tee $4
      i32.store $0
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store $0 offset=4
      local.get $4
      i32.const 0
      i32.store $0
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $4
      i32.store $0 offset=4
      local.get $4
      i32.const 0
      i32.store $0 offset=4
      local.get $1
      local.get $4
      i32.store $0 offset=4
      local.get $4
      i32.const 0
      i32.store $0 offset=8
      local.get $1
      local.get $4
      i32.store $0 offset=4
      local.get $4
      i32.const 0
      i32.store $0 offset=12
      local.get $8
      i32.const 268435455
      i32.gt_u
      br_if $folding-inner1
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      local.get $8
      local.get $8
      i32.const 8
      i32.le_u
      select
      i32.const 2
      i32.shl
      local.tee $10
      i32.const 1
      call $~lib/rt/itcms/__new
      local.tee $1
      i32.store $0 offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store $0 offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0 offset=12
      local.get $4
      local.get $1
      i32.store $0
      local.get $1
      if
       local.get $4
       local.get $1
       i32.const 0
       call $byn-split-outlined-A$~lib/rt/itcms/__link
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $5
      local.get $4
      i32.store $0 offset=4
      local.get $4
      local.get $1
      i32.store $0 offset=4
      local.get $5
      local.get $4
      i32.store $0 offset=4
      local.get $4
      local.get $10
      i32.store $0 offset=8
      local.get $5
      local.get $4
      i32.store $0 offset=4
      local.get $4
      local.get $8
      i32.store $0 offset=12
      local.get $5
      i32.const 16
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $9
      local.get $4
      i32.store $0 offset=12
      i32.const 0
      local.set $1
      loop $for-loop|1
       local.get $1
       local.get $8
       i32.lt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.tee $5
        local.get $7
        i32.store $0
        local.get $5
        local.get $7
        local.get $1
        call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
        local.tee $5
        i32.store $0 offset=16
        global.get $~lib/memory/__stack_pointer
        local.get $5
        i32.store $0
        global.get $~lib/memory/__stack_pointer
        local.get $5
        call $assembly/lib/mappers/patch.mapper/toCopiedPatch
        local.tee $5
        i32.store $0 offset=20
        global.get $~lib/memory/__stack_pointer
        local.get $4
        i32.store $0
        global.get $~lib/memory/__stack_pointer
        local.get $5
        i32.store $0 offset=24
        local.get $4
        local.get $1
        local.get $5
        call $~lib/array/Array<assembly/main/RowElement>#__set
        local.get $1
        i32.const 1
        i32.add
        local.set $1
        br $for-loop|1
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $6
      i32.store $0
      local.get $1
      local.get $4
      i32.store $0 offset=24
      local.get $6
      local.get $3
      local.get $4
      call $~lib/array/Array<assembly/main/RowElement>#__set
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|0
     end
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 28
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $6
    return
   end
   i32.const 39568
   i32.const 39616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1664
  i32.const 1264
  i32.const 70
  i32.const 60
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/main/mutateAndGetDiff (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.const 32
   memory.fill $0
   local.get $2
   local.get $0
   i32.store $0
   local.get $2
   local.get $0
   call $assembly/lib/mappers/v-element.mapper/toVElement
   local.tee $0
   i32.store $0 offset=4
   local.get $0
   global.set $assembly/main/vtree
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/main/vtree
   local.tee $0
   i32.store $0 offset=8
   i32.const 0
   global.set $~argumentsLength
   local.get $1
   i32.load $0
   call_indirect $0 (type $none_=>_none)
   global.get $~lib/memory/__stack_pointer
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/main/vtree
   local.tee $2
   i32.store $0 offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store $0
   local.get $3
   i64.const 0
   i64.store $0 offset=8
   local.get $3
   i32.const 0
   i32.const 25
   i32.const 5872
   call $~lib/rt/__newArray
   local.tee $3
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=12
   local.get $0
   local.get $2
   i32.const 0
   local.get $3
   call $assembly/lib/diff/dfsWalk
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.get $3
   i32.store $0 offset=16
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/main/vtree
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $assembly/lib/mappers/v-element.mapper/toCopiedVElement
   local.tee $1
   i32.store $0 offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $3
   call $assembly/lib/mappers/patch.mapper/toCopiedPatches
   local.tee $2
   i32.store $0 offset=24
   global.get $~lib/memory/__stack_pointer
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store $0
   local.get $0
   i32.const 8
   i32.const 13
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $0
   i32.store $0 offset=4
   local.get $4
   local.get $0
   call $~lib/object/Object#constructor
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
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $0
   i32.store $0 offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=12
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
   i32.store $0
   local.get $1
   local.get $2
   i32.store $0 offset=12
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
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 39568
  i32.const 39616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/main/doRunLots~anonymous|0
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  call $assembly/main/_removeAllRows
  global.get $~lib/memory/__stack_pointer
  i32.const 10000
  i32.const 1
  call $assembly/main/buildData
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  local.get $0
  call $assembly/main/_appendRows
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/main/doAdd~anonymous|0
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store $0
   local.get $0
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   global.get $assembly/main/vtree
   local.tee $0
   i32.store $0 offset=4
   local.get $1
   local.get $0
   i32.load $0 offset=8
   local.tee $0
   i32.store $0
   local.get $0
   call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1000
   local.get $0
   i32.const 1
   i32.add
   call $assembly/main/buildData
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   call $assembly/main/_appendRows
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 39568
  i32.const 39616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/util/string/strtol<f64> (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
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
  block $folding-inner0
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const 1
   i32.shr_u
   local.tee $1
   i32.eqz
   br_if $folding-inner0
   local.get $0
   local.tee $2
   i32.load16_u $0
   local.set $0
   loop $while-continue|0
    block $__inlined_func$~lib/util/string/isSpace (result i32)
     local.get $0
     i32.const 128
     i32.or
     i32.const 160
     i32.eq
     local.get $0
     i32.const 9
     i32.sub
     i32.const 4
     i32.le_u
     i32.or
     local.get $0
     i32.const 5760
     i32.lt_u
     br_if $__inlined_func$~lib/util/string/isSpace
     drop
     i32.const 1
     local.get $0
     i32.const -8192
     i32.add
     i32.const 10
     i32.le_u
     br_if $__inlined_func$~lib/util/string/isSpace
     drop
     block $break|0
      block $case0|0
       local.get $0
       i32.const 5760
       i32.eq
       br_if $case0|0
       local.get $0
       i32.const 8232
       i32.eq
       br_if $case0|0
       local.get $0
       i32.const 8233
       i32.eq
       br_if $case0|0
       local.get $0
       i32.const 8239
       i32.eq
       br_if $case0|0
       local.get $0
       i32.const 8287
       i32.eq
       br_if $case0|0
       local.get $0
       i32.const 12288
       i32.eq
       br_if $case0|0
       local.get $0
       i32.const 65279
       i32.eq
       br_if $case0|0
       br $break|0
      end
      i32.const 1
      br $__inlined_func$~lib/util/string/isSpace
     end
     i32.const 0
    end
    if
     local.get $2
     i32.const 2
     i32.add
     local.tee $2
     i32.load16_u $0
     local.set $0
     local.get $1
     i32.const 1
     i32.sub
     local.set $1
     br $while-continue|0
    end
   end
   f64.const 1
   local.set $4
   local.get $0
   i32.const 43
   i32.eq
   local.get $0
   i32.const 45
   i32.eq
   i32.or
   if (result i32)
    local.get $1
    i32.const 1
    i32.sub
    local.tee $1
    i32.eqz
    br_if $folding-inner0
    f64.const -1
    f64.const 1
    local.get $0
    i32.const 45
    i32.eq
    select
    local.set $4
    local.get $2
    i32.const 2
    i32.add
    local.tee $2
    i32.load16_u $0
   else
    local.get $0
   end
   i32.const 48
   i32.eq
   local.get $1
   i32.const 2
   i32.gt_s
   i32.and
   if
    block $break|1
     block $case2|1
      block $case1|1
       local.get $2
       i32.load16_u $0 offset=2
       i32.const 32
       i32.or
       local.tee $0
       i32.const 98
       i32.ne
       if
        local.get $0
        i32.const 111
        i32.eq
        br_if $case1|1
        local.get $0
        i32.const 120
        i32.eq
        br_if $case2|1
        br $break|1
       end
       local.get $2
       i32.const 4
       i32.add
       local.set $2
       local.get $1
       i32.const 2
       i32.sub
       local.set $1
       i32.const 2
       local.set $3
       br $break|1
      end
      local.get $2
      i32.const 4
      i32.add
      local.set $2
      local.get $1
      i32.const 2
      i32.sub
      local.set $1
      i32.const 8
      local.set $3
      br $break|1
     end
     local.get $2
     i32.const 4
     i32.add
     local.set $2
     local.get $1
     i32.const 2
     i32.sub
     local.set $1
     i32.const 16
     local.set $3
    end
   end
   local.get $3
   i32.const 10
   local.get $3
   select
   local.set $3
   local.get $1
   i32.const 1
   i32.sub
   local.set $6
   loop $while-continue|2
    local.get $1
    local.tee $0
    i32.const 1
    i32.sub
    local.set $1
    local.get $0
    if
     block $while-break|2
      local.get $3
      local.get $2
      i32.load16_u $0
      local.tee $0
      i32.const 48
      i32.sub
      i32.const 10
      i32.lt_u
      if (result i32)
       local.get $0
       i32.const 48
       i32.sub
      else
       local.get $0
       i32.const 65
       i32.sub
       i32.const 25
       i32.le_u
       if (result i32)
        local.get $0
        i32.const 55
        i32.sub
       else
        local.get $0
        i32.const 87
        i32.sub
        local.get $0
        local.get $0
        i32.const 97
        i32.sub
        i32.const 25
        i32.le_u
        select
       end
      end
      local.tee $0
      i32.le_u
      if
       local.get $1
       local.get $6
       i32.eq
       br_if $folding-inner0
       br $while-break|2
      end
      local.get $5
      local.get $3
      f64.convert_i32_s
      f64.mul
      local.get $0
      f64.convert_i32_u
      f64.add
      local.set $5
      local.get $2
      i32.const 2
      i32.add
      local.set $2
      br $while-continue|2
     end
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   local.get $5
   f64.mul
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  f64.const nan:0x8000000000000
 )
 (func $assembly/main/_getTableRows (result i32)
  (local $0 i32)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.const 48
   memory.fill $0
   local.get $2
   global.get $assembly/main/vtree
   local.tee $3
   i32.store $0 offset=4
   local.get $2
   local.get $3
   i32.load $0 offset=8
   local.tee $3
   i32.store $0
   local.get $2
   local.get $3
   call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length
   call $~lib/array/Array<assembly/main/RowElement>#constructor
   local.tee $3
   i32.store $0 offset=8
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    global.get $assembly/main/vtree
    local.tee $4
    i32.store $0 offset=4
    local.get $2
    local.get $4
    i32.load $0 offset=8
    local.tee $2
    i32.store $0
    local.get $2
    call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length
    local.get $0
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     global.get $assembly/main/vtree
     local.tee $4
     i32.store $0 offset=4
     local.get $2
     local.get $4
     i32.load $0 offset=8
     local.tee $4
     i32.store $0
     local.get $2
     local.get $4
     local.get $0
     call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
     local.tee $2
     i32.store $0 offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store $0 offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.load $0 offset=8
     local.tee $2
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.const 0
     call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
     local.tee $2
     i32.store $0 offset=16
     global.get $~lib/memory/__stack_pointer
     local.set $4
     global.get $~lib/memory/__stack_pointer
     global.get $assembly/main/vtree
     local.tee $5
     i32.store $0 offset=32
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.load $0 offset=8
     local.tee $5
     i32.store $0 offset=28
     local.get $5
     local.get $0
     call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store $0 offset=24
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.load $0 offset=8
     local.tee $5
     i32.store $0 offset=20
     local.get $5
     i32.const 1
     call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store $0 offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.load $0 offset=8
     local.tee $5
     i32.store $0
     local.get $4
     local.get $5
     i32.const 0
     call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
     local.tee $4
     i32.store $0 offset=36
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     call $assembly/main/RowElement#constructor
     local.tee $5
     i32.store $0 offset=40
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store $0 offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store $0 offset=44
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.load $0 offset=8
     local.tee $2
     i32.store $0 offset=32
     local.get $2
     i32.const 0
     call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store $0 offset=28
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.load $0 offset=16
     local.tee $6
     i32.store $0 offset=24
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 6776
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     i32.const 0
     i32.store $0
     local.get $2
     local.get $6
     i32.store $0
     local.get $6
     call $~lib/util/string/strtol<f64>
     local.set $1
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $5
     local.get $1
     i32.trunc_sat_f64_s
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store $0 offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0 offset=44
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.load $0 offset=8
     local.tee $2
     i32.store $0 offset=32
     local.get $2
     i32.const 0
     call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store $0 offset=28
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.load $0 offset=16
     local.tee $2
     i32.store $0 offset=24
     local.get $5
     local.get $2
     i32.store $0 offset=4
     local.get $2
     if
      local.get $5
      local.get $2
      i32.const 0
      call $byn-split-outlined-A$~lib/rt/itcms/__link
     end
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store $0 offset=4
     local.get $3
     local.get $0
     local.get $5
     call $~lib/array/Array<assembly/main/RowElement>#__set
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  i32.const 39568
  i32.const 39616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/main/doUpdate~anonymous|0
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   i32.const 0
   i32.store $0 offset=8
   local.get $1
   call $assembly/main/_getTableRows
   local.tee $2
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.const 28
   memory.fill $0
   local.get $3
   local.get $2
   i32.store $0
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store $0 offset=4
    local.get $2
    call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length
    local.get $0
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store $0 offset=12
     local.get $2
     local.get $0
     call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store $0 offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store $0 offset=24
     local.get $2
     local.get $0
     call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0 offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.load $0 offset=4
     local.tee $4
     i32.store $0 offset=12
     global.get $~lib/memory/__stack_pointer
     i32.const 6400
     i32.store $0 offset=16
     local.get $4
     i32.const 6400
     call $~lib/string/String.__concat
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0 offset=8
     local.get $3
     local.get $4
     i32.store $0 offset=4
     local.get $4
     if
      local.get $3
      local.get $4
      i32.const 0
      call $byn-split-outlined-A$~lib/rt/itcms/__link
     end
     local.get $0
     i32.const 10
     i32.add
     local.set $0
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.get $2
   i32.store $0 offset=8
   call $assembly/main/_removeAllRows
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   local.get $2
   call $assembly/main/_appendRows
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 39568
  i32.const 39616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/main/doSwapRows~anonymous|0
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
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
   call $assembly/main/_getTableRows
   local.tee $2
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
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
   local.get $2
   i32.store $0
   local.get $2
   call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#get:length
   local.tee $1
   i32.const 2
   i32.ge_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $2
    i32.store $0
    local.get $3
    local.get $2
    i32.const 1
    call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
    local.tee $3
    i32.store $0 offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store $0
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store $0 offset=12
    local.get $2
    local.get $1
    i32.const 2
    i32.sub
    local.tee $4
    call $~lib/array/Array<assembly/lib/models/v-element.model/VElement>#__get
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0 offset=8
    local.get $2
    i32.const 1
    local.get $1
    call $~lib/array/Array<assembly/main/RowElement>#__set
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store $0
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=8
    local.get $2
    local.get $4
    local.get $3
    call $~lib/array/Array<assembly/main/RowElement>#__set
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $2
   i32.store $0 offset=8
   call $assembly/main/_removeAllRows
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   local.get $2
   call $assembly/main/_appendRows
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 39568
  i32.const 39616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
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
   i32.const 1664
   i32.const 1712
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
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
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
 (func $~lib/object/Object#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6776
  i32.lt_s
  if
   i32.const 39568
   i32.const 39616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/main/doRun (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0
   local.get $1
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   i32.const 0
   i32.store $0 offset=8
   local.get $1
   local.get $0
   i32.store $0
   local.get $1
   i32.const 5840
   i32.store $0 offset=4
   local.get $1
   local.get $0
   i32.const 5840
   call $assembly/main/mutateAndGetDiff
   local.tee $0
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 39568
  i32.const 39616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:assembly/main/doRunLots (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0
   local.get $1
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   local.get $0
   i32.store $0
   local.get $1
   i32.const 6336
   i32.store $0 offset=4
   local.get $0
   i32.const 6336
   call $assembly/main/mutateAndGetDiff
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 39568
  i32.const 39616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:assembly/main/doAdd (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0
   local.get $1
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   local.get $0
   i32.store $0
   local.get $1
   i32.const 6368
   i32.store $0 offset=4
   local.get $0
   i32.const 6368
   call $assembly/main/mutateAndGetDiff
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 39568
  i32.const 39616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:assembly/main/doUpdate (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0
   local.get $1
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   local.get $0
   i32.store $0
   local.get $1
   i32.const 6432
   i32.store $0 offset=4
   local.get $0
   i32.const 6432
   call $assembly/main/mutateAndGetDiff
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 39568
  i32.const 39616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:assembly/main/doClearRows (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0
   local.get $1
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   local.get $0
   i32.store $0
   local.get $1
   i32.const 6464
   i32.store $0 offset=4
   local.get $0
   i32.const 6464
   call $assembly/main/mutateAndGetDiff
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 39568
  i32.const 39616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:assembly/main/doSwapRows (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0
   local.get $1
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6776
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   local.get $0
   i32.store $0
   local.get $1
   i32.const 6496
   i32.store $0 offset=4
   local.get $0
   i32.const 6496
   call $assembly/main/mutateAndGetDiff
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 39568
  i32.const 39616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1056
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
)
