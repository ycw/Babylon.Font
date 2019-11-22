(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$iiiid (func (param i32 i32 i32 f64) (result i32)))
 (type $FUNCSIG$iid (func (param i32 f64) (result i32)))
 (type $FUNCSIG$ddd (func (param f64 f64) (result f64)))
 (type $FUNCSIG$idd (func (param f64 f64) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 2)
 (data (i32.const 65536) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 65584) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 65640) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s")
 (data (i32.const 65688) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 65744) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 65788) "\01")
 (data (i32.const 65800) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 65848) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 65896) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data (i32.const 66008) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 66068) "\01")
 (data (i32.const 66084) "\01")
 (data (i32.const 66100) "\01")
 (data (i32.const 66116) "\01")
 (data (i32.const 66128) "\t\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\93 \00\00\02\00\00\00\93 \00\00\02\00\00\00\93\04\00\00\02\00\00\00\10")
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/collectLock (mut i32) (i32.const 0))
 (global $~lib/rt/pure/ROOTS (mut i32) (i32.const 0))
 (global $~lib/rt/pure/CUR (mut i32) (i32.const 0))
 (global $~lib/rt/pure/END (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 66128))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/tlsf/__alloc))
 (export "__retain" (func $~lib/rt/pure/__retain))
 (export "__release" (func $~lib/rt/pure/__release))
 (export "__collect" (func $~lib/rt/pure/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "compile" (func $assembly/index/compile))
 (func $~lib/rt/tlsf/removeBlock (; 1 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 65552
   i32.const 277
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $2
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 65552
   i32.const 279
   i32.const 13
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
   local.set $2
   i32.const 0
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $2
   local.get $3
   i32.const 7
   i32.sub
  end
  local.tee $3
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 65552
   i32.const 292
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=20
  local.set $4
  local.get $1
  i32.load offset=16
  local.tee $5
  if
   local.get $5
   local.get $4
   i32.store offset=20
  end
  local.get $4
  if
   local.get $4
   local.get $5
   i32.store offset=16
  end
  local.get $3
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
  local.get $1
  i32.eq
  if
   local.get $3
   i32.const 4
   i32.shl
   local.get $2
   i32.add
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   local.get $4
   i32.store offset=96
   local.get $4
   i32.eqz
   if
    local.get $3
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.get $3
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=4
    i32.const 1
    local.get $2
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $3
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (; 2 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 65552
   i32.const 205
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 65552
   i32.const 207
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 16
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $5
  i32.const 1
  i32.and
  if
   local.get $3
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $5
   i32.const -4
   i32.and
   i32.add
   local.tee $2
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $3
    i32.const 3
    i32.and
    local.get $2
    i32.or
    local.tee $3
    i32.store
    local.get $1
    i32.const 16
    i32.add
    local.get $1
    i32.load
    i32.const -4
    i32.and
    i32.add
    local.tee $4
    i32.load
    local.set $5
   end
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $2
   i32.load
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 65552
    i32.const 228
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $6
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $7
   i32.const 1073741808
   i32.lt_u
   if (result i32)
    local.get $0
    local.get $2
    call $~lib/rt/tlsf/removeBlock
    local.get $2
    local.get $6
    i32.const 3
    i32.and
    local.get $7
    i32.or
    local.tee $3
    i32.store
    local.get $2
   else
    local.get $1
   end
   local.set $1
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $2
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 65552
   i32.const 243
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $1
  i32.const 16
  i32.add
  local.get $2
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 65552
   i32.const 244
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $4
   i32.const 0
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $4
   local.get $2
   i32.const 7
   i32.sub
  end
  local.tee $3
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $4
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 65552
   i32.const 260
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 4
  i32.shl
  local.get $4
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
  local.set $2
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $2
  i32.store offset=20
  local.get $2
  if
   local.get $2
   local.get $1
   i32.store offset=16
  end
  local.get $3
  i32.const 4
  i32.shl
  local.get $4
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $3
  i32.shl
  i32.or
  i32.store
  local.get $3
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.get $3
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $4
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (; 3 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  local.get $2
  i32.le_u
  select
  select
  i32.eqz
  if
   i32.const 0
   i32.const 65552
   i32.const 386
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=1568
  local.tee $3
  if
   local.get $1
   local.get $3
   i32.const 16
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 65552
    i32.const 396
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $3
   i32.eq
   if
    local.get $3
    i32.load
    local.set $4
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 65552
    i32.const 408
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.tee $2
  i32.const 48
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $2
  i32.const 32
  i32.sub
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $2
  i32.add
  i32.const 16
  i32.sub
  local.tee $2
  i32.const 2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initializeRoot (; 4 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 2
  memory.size
  local.tee $0
  i32.gt_s
  if (result i32)
   i32.const 2
   local.get $0
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 66208
  i32.const 0
  i32.store
  i32.const 67776
  i32.const 0
  i32.store
  i32.const 0
  local.set $0
  loop $loop|0
   block $break|0
    local.get $0
    i32.const 23
    i32.ge_u
    br_if $break|0
    local.get $0
    i32.const 2
    i32.shl
    i32.const 66208
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $1
    loop $loop|1
     block $break|1
      local.get $1
      i32.const 16
      i32.ge_u
      br_if $break|1
      local.get $0
      i32.const 4
      i32.shl
      local.get $1
      i32.add
      i32.const 2
      i32.shl
      i32.const 66208
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  i32.const 66208
  i32.const 67792
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 66208
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/prepareSize (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 65600
   i32.const 65552
   i32.const 457
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $0
  i32.const 16
  local.get $0
  i32.const 16
  i32.gt_u
  select
 )
 (func $~lib/rt/tlsf/searchBlock (; 6 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
   i32.const 0
  else
   local.get $1
   i32.const 536870904
   i32.lt_u
   if
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    local.get $1
    i32.add
    i32.const 1
    i32.sub
    local.set $1
   end
   local.get $1
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
  end
  local.tee $2
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 65552
   i32.const 338
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 65552
     i32.const 351
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/pure/markGray (; 7 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.ne
  if
   local.get $0
   local.get $1
   i32.const -1879048193
   i32.and
   i32.const 268435456
   i32.or
   i32.store offset=4
   local.get $0
   i32.const 16
   i32.add
   i32.const 2
   call $~lib/rt/__visit_members
  end
 )
 (func $~lib/rt/tlsf/freeBlock (; 8 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   i32.const 0
   i32.const 65552
   i32.const 563
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/pure/scanBlack (; 9 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const -1879048193
  i32.and
  i32.store offset=4
  local.get $0
  i32.const 16
  i32.add
  i32.const 4
  call $~lib/rt/__visit_members
 )
 (func $~lib/rt/pure/scan (; 10 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.eq
  if
   local.get $1
   i32.const 268435455
   i32.and
   i32.const 0
   i32.gt_u
   if
    local.get $0
    call $~lib/rt/pure/scanBlack
   else
    local.get $0
    local.get $1
    i32.const -1879048193
    i32.and
    i32.const 536870912
    i32.or
    i32.store offset=4
    local.get $0
    i32.const 16
    i32.add
    i32.const 3
    call $~lib/rt/__visit_members
   end
  end
 )
 (func $~lib/rt/pure/collectWhite (; 11 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const 1879048192
  i32.and
  i32.const 536870912
  i32.eq
  if (result i32)
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $1
   i32.const -1879048193
   i32.and
   i32.store offset=4
   local.get $0
   i32.const 16
   i32.add
   i32.const 5
   call $~lib/rt/__visit_members
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/freeBlock
  end
 )
 (func $~lib/rt/pure/__collect (; 12 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/pure/ROOTS
  local.tee $5
  local.tee $2
  local.set $3
  global.get $~lib/rt/pure/CUR
  local.set $0
  loop $loop|0
   block $break|0
    local.get $3
    local.get $0
    i32.ge_u
    br_if $break|0
    local.get $3
    i32.load
    local.tee $4
    i32.load offset=4
    local.tee $1
    i32.const 1879048192
    i32.and
    i32.const 805306368
    i32.eq
    if (result i32)
     local.get $1
     i32.const 268435455
     i32.and
     i32.const 0
     i32.gt_u
    else
     i32.const 0
    end
    if
     local.get $4
     call $~lib/rt/pure/markGray
     local.get $2
     local.get $4
     i32.store
     local.get $2
     i32.const 4
     i32.add
     local.set $2
    else
     i32.const 0
     local.get $1
     i32.const 268435455
     i32.and
     i32.eqz
     local.get $1
     i32.const 1879048192
     i32.and
     select
     if
      global.get $~lib/rt/tlsf/ROOT
      local.get $4
      call $~lib/rt/tlsf/freeBlock
     else
      local.get $4
      local.get $1
      i32.const 2147483647
      i32.and
      i32.store offset=4
     end
    end
    local.get $3
    i32.const 4
    i32.add
    local.set $3
    br $loop|0
   end
  end
  local.get $2
  global.set $~lib/rt/pure/CUR
  local.get $5
  local.set $0
  loop $loop|1
   block $break|1
    local.get $0
    local.get $2
    i32.ge_u
    br_if $break|1
    local.get $0
    i32.load
    call $~lib/rt/pure/scan
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    br $loop|1
   end
  end
  local.get $5
  local.set $0
  loop $loop|2
   block $break|2
    local.get $0
    local.get $2
    i32.ge_u
    br_if $break|2
    local.get $0
    i32.load
    local.tee $1
    local.get $1
    i32.load offset=4
    i32.const 2147483647
    i32.and
    i32.store offset=4
    local.get $1
    call $~lib/rt/pure/collectWhite
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    br $loop|2
   end
  end
  local.get $5
  global.set $~lib/rt/pure/CUR
 )
 (func $~lib/rt/tlsf/growMemory (; 13 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  memory.size
  local.tee $2
  local.get $1
  i32.const 536870904
  i32.lt_u
  if (result i32)
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   local.get $1
   i32.add
  else
   local.get $1
  end
  i32.const 16
  local.get $0
  i32.load offset=1568
  local.get $2
  i32.const 16
  i32.shl
  i32.const 16
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
  local.tee $1
  local.get $2
  local.get $1
  i32.gt_s
  select
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $1
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  local.get $0
  local.get $2
  i32.const 16
  i32.shl
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
 )
 (func $~lib/rt/tlsf/prepareBlock (; 14 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 65552
   i32.const 365
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $4
  i32.const 32
  i32.ge_u
  if
   local.get $1
   local.get $3
   i32.const 2
   i32.and
   local.get $2
   i32.or
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.get $2
   i32.add
   local.tee $1
   local.get $4
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const -2
   i32.and
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.get $1
   i32.const 16
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (; 15 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/tlsf/collectLock
  if
   i32.const 0
   i32.const 65552
   i32.const 486
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.tee $3
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   i32.const 1
   global.set $~lib/rt/tlsf/collectLock
   call $~lib/rt/pure/__collect
   i32.const 0
   global.set $~lib/rt/tlsf/collectLock
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/growMemory
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/searchBlock
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 65552
     i32.const 498
     i32.const 19
     call $~lib/builtins/abort
     unreachable
    end
   end
  end
  local.get $2
  i32.load
  i32.const -4
  i32.and
  local.get $3
  i32.lt_u
  if
   i32.const 0
   i32.const 65552
   i32.const 506
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $2
  local.get $3
  call $~lib/rt/tlsf/prepareBlock
  local.get $2
 )
 (func $~lib/rt/tlsf/__alloc (; 16 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  local.tee $2
  if (result i32)
   local.get $2
  else
   call $~lib/rt/tlsf/initializeRoot
   global.get $~lib/rt/tlsf/ROOT
  end
  local.get $0
  call $~lib/rt/tlsf/allocateBlock
  local.tee $0
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 16
  i32.add
 )
 (func $~lib/rt/pure/increment (; 17 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const -268435456
  i32.and
  local.get $1
  i32.const 1
  i32.add
  i32.const -268435456
  i32.and
  i32.ne
  if
   i32.const 0
   i32.const 65656
   i32.const 104
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $0
  i32.load
  i32.const 1
  i32.and
  if
   i32.const 0
   i32.const 65656
   i32.const 107
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/pure/__retain (; 18 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 66204
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/increment
  end
  local.get $0
 )
 (func $~lib/rt/__typeinfo (; 19 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 66128
  i32.load
  i32.gt_u
  if
   i32.const 65704
   i32.const 65760
   i32.const 22
   i32.const 27
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.shl
  i32.const 66132
  i32.add
  i32.load
 )
 (func $~lib/util/memory/memcpy (; 20 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  loop $continue|0
   local.get $1
   i32.const 3
   i32.and
   i32.const 0
   local.get $2
   select
   if
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.eqz
  if
   loop $continue|1
    local.get $2
    i32.const 16
    i32.lt_u
    i32.eqz
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     i32.const 4
     i32.add
     local.get $1
     i32.const 4
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 8
     i32.add
     local.get $1
     i32.const 8
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 12
     i32.add
     local.get $1
     i32.const 12
     i32.add
     i32.load
     i32.store
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $continue|1
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.get $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    local.get $0
    i32.const 8
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    local.get $0
    i32.const 4
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.get $1
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      local.get $0
      i32.const 3
      i32.and
      local.tee $3
      i32.const 1
      i32.ne
      if
       local.get $3
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $3
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $5
      local.get $0
      local.get $1
      i32.load8_u
      i32.store8
      local.get $0
      i32.const 1
      i32.add
      local.tee $0
      local.get $1
      i32.const 1
      i32.add
      local.tee $1
      i32.load8_u
      i32.store8
      local.get $0
      i32.const 1
      i32.add
      local.tee $3
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      i32.const 1
      i32.add
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $3
      local.get $4
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $continue|3
       local.get $2
       i32.const 17
       i32.lt_u
       i32.eqz
       if
        local.get $0
        local.get $1
        i32.const 1
        i32.add
        i32.load
        local.tee $3
        i32.const 8
        i32.shl
        local.get $5
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $0
        i32.const 4
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $1
        i32.const 5
        i32.add
        i32.load
        local.tee $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $0
        i32.const 8
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $1
        i32.const 9
        i32.add
        i32.load
        local.tee $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $0
        i32.const 12
        i32.add
        local.get $1
        i32.const 13
        i32.add
        i32.load
        local.tee $5
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $5
     local.get $0
     local.get $1
     i32.load8_u
     i32.store8
     local.get $0
     i32.const 1
     i32.add
     local.tee $3
     i32.const 1
     i32.add
     local.set $0
     local.get $1
     i32.const 1
     i32.add
     local.tee $4
     i32.const 1
     i32.add
     local.set $1
     local.get $3
     local.get $4
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $continue|4
      local.get $2
      i32.const 18
      i32.lt_u
      i32.eqz
      if
       local.get $0
       local.get $1
       i32.const 2
       i32.add
       i32.load
       local.tee $3
       i32.const 16
       i32.shl
       local.get $5
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $0
       i32.const 4
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $1
       i32.const 6
       i32.add
       i32.load
       local.tee $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $0
       i32.const 8
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $1
       i32.const 10
       i32.add
       i32.load
       local.tee $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $0
       i32.const 12
       i32.add
       local.get $1
       i32.const 14
       i32.add
       i32.load
       local.tee $5
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $5
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $continue|5
     local.get $2
     i32.const 19
     i32.lt_u
     i32.eqz
     if
      local.get $0
      local.get $1
      i32.const 3
      i32.add
      i32.load
      local.tee $3
      i32.const 24
      i32.shl
      local.get $5
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $0
      i32.const 4
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $1
      i32.const 7
      i32.add
      i32.load
      local.tee $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $0
      i32.const 8
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $1
      i32.const 11
      i32.add
      i32.load
      local.tee $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $0
      i32.const 12
      i32.add
      local.get $1
      i32.const 15
      i32.add
      i32.load
      local.tee $5
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $continue|5
     end
    end
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (; 21 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $3
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   i32.const 1
   local.get $0
   local.get $3
   i32.add
   local.get $1
   i32.le_u
   local.get $1
   local.get $3
   i32.add
   local.get $0
   i32.le_u
   select
   if
    local.get $0
    local.get $1
    local.get $3
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $4
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $4
       i32.load8_u
       i32.store8
       br $continue|0
      end
     end
     loop $continue|1
      local.get $3
      i32.const 8
      i32.lt_u
      i32.eqz
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $continue|1
      end
     end
    end
    loop $continue|2
     local.get $3
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $4
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $continue|2
     end
    end
   else
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $continue|3
      local.get $0
      local.get $3
      i32.add
      i32.const 7
      i32.and
      if
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $0
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $1
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $continue|3
      end
     end
     loop $continue|4
      local.get $3
      i32.const 8
      i32.lt_u
      i32.eqz
      if
       local.get $0
       local.get $3
       i32.const 8
       i32.sub
       local.tee $3
       i32.add
       local.get $1
       local.get $3
       i32.add
       i64.load
       i64.store
       br $continue|4
      end
     end
    end
    loop $continue|5
     local.get $3
     if
      local.get $0
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $1
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/tlsf/__free (; 22 ;) (type $FUNCSIG$vi) (param $0 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   i32.const 0
   i32.const 65552
   i32.const 593
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $0
  select
  i32.eqz
  if
   i32.const 0
   i32.const 65552
   i32.const 594
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.sub
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/pure/growRoots (; 23 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/pure/CUR
  global.get $~lib/rt/pure/ROOTS
  local.tee $1
  i32.sub
  local.tee $2
  i32.const 1
  i32.shl
  local.tee $0
  i32.const 256
  local.get $0
  i32.const 256
  i32.gt_u
  select
  local.tee $3
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $0
  local.get $1
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  if
   local.get $1
   call $~lib/rt/tlsf/__free
  end
  local.get $0
  global.set $~lib/rt/pure/ROOTS
  local.get $0
  local.get $2
  i32.add
  global.set $~lib/rt/pure/CUR
  local.get $0
  local.get $3
  i32.add
  global.set $~lib/rt/pure/END
 )
 (func $~lib/rt/pure/appendRoot (; 24 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  global.get $~lib/rt/pure/CUR
  local.tee $1
  global.get $~lib/rt/pure/END
  i32.ge_u
  if
   call $~lib/rt/pure/growRoots
   global.get $~lib/rt/pure/CUR
   local.set $1
  end
  local.get $1
  local.get $0
  i32.store
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/rt/pure/CUR
 )
 (func $~lib/rt/pure/decrement (; 25 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 268435455
  i32.and
  local.set $1
  local.get $0
  i32.load
  i32.const 1
  i32.and
  if
   i32.const 0
   i32.const 65656
   i32.const 115
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.const 16
   i32.add
   i32.const 1
   call $~lib/rt/__visit_members
   local.get $2
   i32.const -2147483648
   i32.and
   if
    local.get $0
    i32.const -2147483648
    i32.store offset=4
   else
    global.get $~lib/rt/tlsf/ROOT
    local.get $0
    call $~lib/rt/tlsf/freeBlock
   end
  else
   local.get $1
   i32.const 0
   i32.le_u
   if
    i32.const 0
    i32.const 65656
    i32.const 124
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=8
   call $~lib/rt/__typeinfo
   i32.const 16
   i32.and
   if
    local.get $0
    local.get $1
    i32.const 1
    i32.sub
    local.get $2
    i32.const -268435456
    i32.and
    i32.or
    i32.store offset=4
   else
    local.get $0
    local.get $1
    i32.const 1
    i32.sub
    i32.const -1342177280
    i32.or
    i32.store offset=4
    local.get $2
    i32.const -2147483648
    i32.and
    i32.eqz
    if
     local.get $0
     call $~lib/rt/pure/appendRoot
    end
   end
  end
 )
 (func $~lib/rt/pure/__release (; 26 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 66204
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/rt/__allocArray (; 27 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 16
  local.get $1
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $0
  i32.const 2
  i32.shl
  local.tee $3
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $4
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $4
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $2
  if
   local.get $4
   local.get $2
   local.get $3
   call $~lib/memory/memory.copy
  end
  local.get $1
 )
 (func $~lib/rt/tlsf/reallocateBlock (; 28 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $2
  call $~lib/rt/tlsf/prepareSize
  local.set $3
  local.get $1
  i32.load
  local.tee $4
  i32.const 1
  i32.and
  if (result i32)
   i32.const 0
  else
   local.get $1
   i32.load offset=4
   i32.const -268435456
   i32.and
   i32.eqz
  end
  i32.eqz
  if
   i32.const 0
   i32.const 65552
   i32.const 521
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i32.const -4
  i32.and
  i32.le_u
  if
   local.get $0
   local.get $1
   local.get $3
   call $~lib/rt/tlsf/prepareBlock
   local.get $1
   local.get $2
   i32.store offset=12
   local.get $1
   return
  end
  local.get $1
  i32.const 16
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $6
  i32.load
  local.tee $5
  i32.const 1
  i32.and
  if
   local.get $4
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $5
   i32.const -4
   i32.and
   i32.add
   local.tee $5
   local.get $3
   i32.ge_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $4
    i32.const 3
    i32.and
    local.get $5
    i32.or
    i32.store
    local.get $1
    local.get $2
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $3
    call $~lib/rt/tlsf/prepareBlock
    local.get $1
    return
   end
  end
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/allocateBlock
  local.tee $3
  local.get $1
  i32.load offset=8
  i32.store offset=8
  local.get $3
  i32.const 16
  i32.add
  local.get $1
  i32.const 16
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  local.get $4
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
  local.get $3
 )
 (func $~lib/rt/tlsf/__realloc (; 29 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   i32.const 0
   i32.const 65552
   i32.const 585
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $0
  select
  i32.eqz
  if
   i32.const 0
   i32.const 65552
   i32.const 586
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.sub
  local.get $1
  call $~lib/rt/tlsf/reallocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/memory/memory.fill (; 30 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   i32.const 1
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 1
   i32.add
   i32.const 0
   i32.store8
   local.get $0
   i32.const 2
   i32.add
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 2
   i32.sub
   i32.const 0
   i32.store8
   local.get $2
   i32.const 3
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 3
   i32.add
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   i32.const 4
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $1
   i32.sub
   local.get $0
   local.get $1
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   i32.const -4
   i32.and
   local.tee $1
   local.get $0
   i32.add
   i32.const 4
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 4
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 8
   i32.add
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 12
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 8
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 12
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 16
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 20
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 24
   i32.add
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 28
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 24
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 20
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 16
   i32.sub
   i32.const 0
   i32.store
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $2
   local.get $0
   i32.add
   local.set $0
   local.get $1
   local.get $2
   i32.sub
   local.set $1
   loop $continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store
     local.get $0
     i32.const 8
     i32.add
     i64.const 0
     i64.store
     local.get $0
     i32.const 16
     i32.add
     i64.const 0
     i64.store
     local.get $0
     i32.const 24
     i32.add
     i64.const 0
     i64.store
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $continue|0
    end
   end
  end
 )
 (func $~lib/array/ensureSize (; 31 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 268435452
   i32.gt_u
   if
    i32.const 65816
    i32.const 65864
    i32.const 14
    i32.const 47
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.tee $4
   local.get $1
   i32.const 2
   i32.shl
   local.tee $3
   call $~lib/rt/tlsf/__realloc
   local.tee $1
   local.get $2
   i32.add
   local.get $3
   local.get $2
   i32.sub
   call $~lib/memory/memory.fill
   local.get $1
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $1
    call $~lib/rt/pure/__retain
    i32.store
    local.get $0
    local.get $1
    i32.store offset=4
   end
   local.get $0
   local.get $3
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__unchecked_set (; 32 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  i32.load
  local.tee $1
  local.get $2
  i32.ne
  if
   local.get $0
   local.get $2
   call $~lib/rt/pure/__retain
   i32.store
   local.get $1
   call $~lib/rt/pure/__release
  end
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__set (; 33 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__unchecked_set
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_s
  if
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=12
  end
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get (; 34 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 65704
   i32.const 65864
   i32.const 92
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.eqz
  if
   local.get $0
   call $~lib/rt/pure/__release
   i32.const 65912
   i32.const 65864
   i32.const 96
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/array/Array<assembly/index/Vertex>#push (; 35 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 1
  i32.add
  local.tee $2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $2
  i32.store offset=12
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 36 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 268435452
  i32.gt_u
  if
   i32.const 65816
   i32.const 66024
   i32.const 23
   i32.const 56
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.tee $2
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $2
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $1
  local.get $0
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/array/Array<assembly/index/Vertex>#constructor (; 37 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 16
  i32.const 4
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $1
  i32.const 0
  i32.store offset=12
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $1
 )
 (func $assembly/index/dedup (; 38 ;) (type $FUNCSIG$iid) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
  local.set $9
  i32.const 1
  i32.const 4
  i32.const 0
  call $~lib/rt/__allocArray
  local.tee $2
  i32.load offset=4
  local.get $9
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $12
  i32.const 1
  local.set $10
  local.get $0
  i32.load offset=12
  local.set $7
  i32.const 0
  local.set $2
  local.get $9
  call $~lib/rt/pure/__retain
  local.set $6
  loop $continue|0
   block $break|0
    local.get $7
    i32.const 1
    i32.le_s
    br_if $break|0
    local.get $0
    local.get $7
    i32.const 1
    i32.sub
    call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
    local.set $3
    local.get $9
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $3
    f64.load offset=8
    local.get $4
    f64.load offset=8
    f64.sub
    local.set $5
    local.get $3
    f64.load
    local.get $4
    f64.load
    f64.sub
    local.tee $8
    f64.const 0
    f64.eq
    if (result i32)
     local.get $5
     f64.const 0
     f64.eq
    else
     i32.const 0
    end
    if (result i32)
     i32.const 1
    else
     local.get $8
     local.get $8
     f64.mul
     local.get $5
     local.get $5
     f64.mul
     f64.add
     local.get $1
     local.get $1
     f64.mul
     f64.le
    end
    local.get $4
    call $~lib/rt/pure/__release
    local.get $3
    call $~lib/rt/pure/__release
    i32.eqz
    br_if $break|0
    local.get $7
    i32.const 1
    i32.sub
    local.set $7
    br $continue|0
   end
  end
  loop $continue|1
   local.get $10
   local.get $7
   i32.lt_s
   if
    local.get $0
    local.get $10
    call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
    local.get $2
    call $~lib/rt/pure/__release
    local.tee $2
    call $~lib/rt/pure/__retain
    local.set $3
    local.get $6
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $3
    f64.load offset=8
    local.get $4
    f64.load offset=8
    f64.sub
    local.set $5
    local.get $3
    f64.load
    local.get $4
    f64.load
    f64.sub
    local.tee $8
    f64.const 0
    f64.eq
    if (result i32)
     local.get $5
     f64.const 0
     f64.eq
    else
     i32.const 0
    end
    if (result i32)
     i32.const 1
    else
     local.get $8
     local.get $8
     f64.mul
     local.get $5
     local.get $5
     f64.mul
     f64.add
     local.get $1
     local.get $1
     f64.mul
     f64.le
    end
    local.get $4
    call $~lib/rt/pure/__release
    local.get $3
    call $~lib/rt/pure/__release
    i32.eqz
    if
     local.get $12
     local.get $2
     call $~lib/array/Array<assembly/index/Vertex>#push
     drop
     local.get $2
     local.get $6
     i32.ne
     if
      local.get $2
      call $~lib/rt/pure/__retain
      drop
      local.get $6
      call $~lib/rt/pure/__release
     end
     local.get $2
     local.set $6
    end
    local.get $10
    i32.const 1
    i32.add
    local.set $10
    br $continue|1
   end
  end
  local.get $9
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $12
 )
 (func $~lib/math/NativeMath.hypot (; 39 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
  (local $2 i64)
  (local $3 f64)
  (local $4 i64)
  (local $5 i32)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 i32)
  (local $10 f64)
  (local $11 i64)
  local.get $0
  i64.reinterpret_f64
  i64.const 9223372036854775807
  i64.and
  local.tee $4
  local.get $1
  i64.reinterpret_f64
  i64.const 9223372036854775807
  i64.and
  local.tee $2
  i64.lt_u
  if
   local.get $4
   local.get $2
   local.set $4
   local.set $2
  end
  local.get $4
  i64.const 52
  i64.shr_u
  i32.wrap_i64
  local.set $5
  local.get $2
  f64.reinterpret_i64
  local.set $1
  local.get $2
  i64.const 52
  i64.shr_u
  i32.wrap_i64
  local.tee $9
  i32.const 2047
  i32.eq
  if
   local.get $1
   return
  end
  local.get $4
  f64.reinterpret_i64
  local.set $0
  i32.const 1
  local.get $2
  i64.const 0
  i64.eq
  local.get $5
  i32.const 2047
  i32.eq
  select
  if
   local.get $0
   return
  end
  local.get $5
  local.get $9
  i32.sub
  i32.const 64
  i32.gt_s
  if
   local.get $0
   local.get $1
   f64.add
   return
  end
  f64.const 1
  local.set $6
  local.get $5
  i32.const 1533
  i32.gt_s
  if (result f64)
   f64.const 5260135901548373507240989e186
   local.set $6
   local.get $1
   f64.const 1.90109156629516e-211
   f64.mul
   local.set $1
   local.get $0
   f64.const 1.90109156629516e-211
   f64.mul
  else
   local.get $9
   i32.const 573
   i32.lt_s
   if (result f64)
    f64.const 1.90109156629516e-211
    local.set $6
    local.get $1
    f64.const 5260135901548373507240989e186
    f64.mul
    local.set $1
    local.get $0
    f64.const 5260135901548373507240989e186
    f64.mul
   else
    local.get $0
   end
  end
  local.tee $0
  local.get $0
  local.get $0
  f64.const 134217729
  f64.mul
  local.tee $3
  f64.sub
  local.get $3
  f64.add
  local.tee $7
  f64.sub
  local.set $10
  local.get $1
  local.get $1
  local.get $1
  f64.const 134217729
  f64.mul
  local.tee $3
  f64.sub
  local.get $3
  f64.add
  local.tee $8
  f64.sub
  local.set $3
  local.get $6
  local.get $8
  local.get $8
  f64.mul
  local.get $1
  local.get $1
  f64.mul
  local.tee $1
  f64.sub
  f64.const 2
  local.get $8
  f64.mul
  local.get $3
  f64.add
  local.get $3
  f64.mul
  f64.add
  local.get $7
  local.get $7
  f64.mul
  local.get $0
  local.get $0
  f64.mul
  local.tee $0
  f64.sub
  f64.const 2
  local.get $7
  f64.mul
  local.get $10
  f64.add
  local.get $10
  f64.mul
  f64.add
  f64.add
  local.get $1
  f64.add
  local.get $0
  f64.add
  f64.sqrt
  f64.mul
 )
 (func $assembly/index/tinystep (; 40 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  f64.load
  local.get $0
  f64.load
  local.tee $4
  f64.sub
  local.tee $5
  local.get $1
  f64.load offset=8
  local.get $0
  f64.load offset=8
  local.tee $6
  f64.sub
  local.tee $7
  call $~lib/math/NativeMath.hypot
  local.set $3
  i32.const 16
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $2
  local.get $4
  local.get $5
  local.get $3
  f64.div
  f64.const 0.001
  f64.mul
  f64.add
  f64.store
  local.get $2
  local.get $6
  local.get $7
  local.get $3
  f64.div
  f64.const 0.001
  f64.mul
  f64.add
  f64.store offset=8
  local.get $2
  call $~lib/rt/pure/__retain
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $assembly/index/Vertex#constructor (; 41 ;) (type $FUNCSIG$idd) (param $0 f64) (param $1 f64) (result i32)
  (local $2 i32)
  i32.const 16
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $2
  local.get $0
  f64.store
  local.get $2
  local.get $1
  f64.store offset=8
  local.get $2
 )
 (func $assembly/index/pickAPoint (; 42 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $3
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
  local.tee $5
  f64.load
  local.set $6
  i32.const 1
  local.set $1
  loop $continue|0
   local.get $1
   local.get $3
   i32.le_s
   if
    local.get $0
    local.get $1
    call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
    local.get $5
    call $~lib/rt/pure/__release
    local.tee $5
    f64.load
    local.get $6
    f64.gt
    if
     local.get $5
     f64.load
     local.set $6
     local.get $1
     local.set $2
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $continue|0
   end
  end
  local.get $0
  local.get $2
  call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
  local.set $1
  local.get $0
  local.get $2
  i32.const 1
  i32.sub
  local.get $3
  local.get $2
  select
  call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
  local.set $7
  local.get $1
  local.get $0
  i32.const 0
  local.get $2
  i32.const 1
  i32.add
  local.get $2
  local.get $3
  i32.eq
  select
  call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
  local.tee $3
  call $assembly/index/tinystep
  local.set $2
  local.get $1
  local.get $7
  call $assembly/index/tinystep
  local.set $4
  local.get $2
  f64.load
  local.get $4
  f64.load
  f64.add
  local.get $1
  f64.load
  f64.add
  f64.const 3
  f64.div
  local.get $2
  f64.load offset=8
  local.get $4
  f64.load offset=8
  f64.add
  local.get $1
  f64.load offset=8
  f64.add
  f64.const 3
  f64.div
  call $assembly/index/Vertex#constructor
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $assembly/index/isHole_oddeven (; 43 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  f64.const 1e10
  local.get $0
  call $assembly/index/pickAPoint
  local.tee $15
  f64.load offset=8
  call $assembly/index/Vertex#constructor
  local.set $16
  local.get $1
  i32.load offset=12
  local.set $20
  loop $loop|0
   local.get $12
   local.get $20
   i32.lt_s
   if
    local.get $1
    local.get $12
    call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
    local.get $7
    call $~lib/rt/pure/__release
    i32.const 0
    local.set $6
    local.tee $7
    i32.load offset=12
    i32.const 1
    i32.sub
    local.set $17
    loop $loop|1
     local.get $6
     local.get $17
     i32.le_s
     if
      local.get $7
      local.get $6
      call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
      local.get $18
      call $~lib/rt/pure/__release
      local.get $7
      i32.const 0
      local.get $6
      i32.const 1
      i32.add
      local.get $6
      local.get $17
      i32.eq
      select
      call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
      local.set $2
      local.get $19
      call $~lib/rt/pure/__release
      local.get $15
      call $~lib/rt/pure/__retain
      local.set $8
      local.get $16
      call $~lib/rt/pure/__retain
      local.set $9
      local.tee $18
      call $~lib/rt/pure/__retain
      local.set $10
      local.get $2
      local.tee $19
      call $~lib/rt/pure/__retain
      local.set $11
      local.get $8
      call $~lib/rt/pure/__retain
      local.set $2
      local.get $9
      call $~lib/rt/pure/__retain
      local.set $3
      local.get $10
      call $~lib/rt/pure/__retain
      local.set $4
      local.get $3
      f64.load
      local.get $2
      f64.load
      f64.sub
      local.get $4
      f64.load offset=8
      local.get $2
      f64.load offset=8
      f64.sub
      f64.mul
      local.get $3
      f64.load offset=8
      local.get $2
      f64.load offset=8
      f64.sub
      local.get $4
      f64.load
      local.get $2
      f64.load
      f64.sub
      f64.mul
      f64.sub
      f64.const 0
      f64.lt
      if (result i32)
       i32.const -1
      else
       i32.const 1
      end
      local.get $4
      call $~lib/rt/pure/__release
      local.get $3
      call $~lib/rt/pure/__release
      local.get $2
      call $~lib/rt/pure/__release
      local.get $8
      call $~lib/rt/pure/__retain
      local.set $2
      local.get $9
      call $~lib/rt/pure/__retain
      local.set $3
      local.get $11
      call $~lib/rt/pure/__retain
      local.set $4
      local.get $3
      f64.load
      local.get $2
      f64.load
      f64.sub
      local.get $4
      f64.load offset=8
      local.get $2
      f64.load offset=8
      f64.sub
      f64.mul
      local.get $3
      f64.load offset=8
      local.get $2
      f64.load offset=8
      f64.sub
      local.get $4
      f64.load
      local.get $2
      f64.load
      f64.sub
      f64.mul
      f64.sub
      f64.const 0
      f64.lt
      if (result i32)
       i32.const -1
      else
       i32.const 1
      end
      local.get $4
      call $~lib/rt/pure/__release
      local.get $3
      call $~lib/rt/pure/__release
      local.get $2
      call $~lib/rt/pure/__release
      i32.ne
      if (result i32)
       local.get $10
       call $~lib/rt/pure/__retain
       local.set $2
       local.get $11
       call $~lib/rt/pure/__retain
       local.set $3
       local.get $8
       call $~lib/rt/pure/__retain
       local.set $4
       local.get $3
       f64.load
       local.get $2
       f64.load
       f64.sub
       local.get $4
       f64.load offset=8
       local.get $2
       f64.load offset=8
       f64.sub
       f64.mul
       local.get $3
       f64.load offset=8
       local.get $2
       f64.load offset=8
       f64.sub
       local.get $4
       f64.load
       local.get $2
       f64.load
       f64.sub
       f64.mul
       f64.sub
       f64.const 0
       f64.lt
       if (result i32)
        i32.const -1
       else
        i32.const 1
       end
       local.get $4
       call $~lib/rt/pure/__release
       local.get $3
       call $~lib/rt/pure/__release
       local.get $2
       call $~lib/rt/pure/__release
       local.get $10
       call $~lib/rt/pure/__retain
       local.set $2
       local.get $11
       call $~lib/rt/pure/__retain
       local.set $3
       local.get $9
       call $~lib/rt/pure/__retain
       local.set $4
       local.get $3
       f64.load
       local.get $2
       f64.load
       f64.sub
       local.get $4
       f64.load offset=8
       local.get $2
       f64.load offset=8
       f64.sub
       f64.mul
       local.get $3
       f64.load offset=8
       local.get $2
       f64.load offset=8
       f64.sub
       local.get $4
       f64.load
       local.get $2
       f64.load
       f64.sub
       f64.mul
       f64.sub
       f64.const 0
       f64.lt
       if (result i32)
        i32.const -1
       else
        i32.const 1
       end
       local.get $4
       call $~lib/rt/pure/__release
       local.get $3
       call $~lib/rt/pure/__release
       local.get $2
       call $~lib/rt/pure/__release
       i32.ne
      else
       i32.const 0
      end
      local.set $5
      local.get $11
      call $~lib/rt/pure/__release
      local.get $10
      call $~lib/rt/pure/__release
      local.get $9
      call $~lib/rt/pure/__release
      local.get $8
      call $~lib/rt/pure/__release
      local.get $14
      i32.const 1
      i32.add
      local.get $14
      local.get $5
      select
      local.set $14
      local.get $6
      i32.const 1
      i32.add
      local.set $6
      br $loop|1
     end
    end
    local.get $12
    i32.const 1
    i32.add
    local.set $12
    br $loop|0
   end
  end
  local.get $15
  call $~lib/rt/pure/__release
  local.get $16
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $18
  call $~lib/rt/pure/__release
  local.get $19
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $14
  i32.const 1
  i32.and
  i32.eqz
 )
 (func $assembly/index/isHole_nonzero (; 44 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  f64.const 1e10
  local.get $0
  call $assembly/index/pickAPoint
  local.tee $12
  f64.load offset=8
  call $assembly/index/Vertex#constructor
  local.set $18
  local.get $1
  i32.load offset=12
  local.set $20
  loop $loop|0
   local.get $13
   local.get $20
   i32.lt_s
   if
    local.get $1
    local.get $13
    call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
    local.get $9
    call $~lib/rt/pure/__release
    i32.const 0
    local.set $7
    local.tee $9
    i32.load offset=12
    i32.const 1
    i32.sub
    local.set $19
    loop $loop|1
     local.get $7
     local.get $19
     i32.le_s
     if
      local.get $9
      local.get $7
      call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
      local.get $14
      call $~lib/rt/pure/__release
      local.get $9
      i32.const 0
      local.get $7
      i32.const 1
      i32.add
      local.get $7
      local.get $19
      i32.eq
      select
      call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
      local.set $2
      local.get $15
      call $~lib/rt/pure/__release
      local.get $12
      call $~lib/rt/pure/__retain
      local.set $6
      local.get $18
      call $~lib/rt/pure/__retain
      local.set $8
      local.tee $14
      call $~lib/rt/pure/__retain
      local.set $10
      local.get $2
      local.tee $15
      call $~lib/rt/pure/__retain
      local.set $11
      local.get $6
      call $~lib/rt/pure/__retain
      local.set $2
      local.get $8
      call $~lib/rt/pure/__retain
      local.set $4
      local.get $10
      call $~lib/rt/pure/__retain
      local.set $5
      local.get $4
      f64.load
      local.get $2
      f64.load
      f64.sub
      local.get $5
      f64.load offset=8
      local.get $2
      f64.load offset=8
      f64.sub
      f64.mul
      local.get $4
      f64.load offset=8
      local.get $2
      f64.load offset=8
      f64.sub
      local.get $5
      f64.load
      local.get $2
      f64.load
      f64.sub
      f64.mul
      f64.sub
      f64.const 0
      f64.lt
      if (result i32)
       i32.const -1
      else
       i32.const 1
      end
      local.get $5
      call $~lib/rt/pure/__release
      local.get $4
      call $~lib/rt/pure/__release
      local.get $2
      call $~lib/rt/pure/__release
      local.get $6
      call $~lib/rt/pure/__retain
      local.set $2
      local.get $8
      call $~lib/rt/pure/__retain
      local.set $4
      local.get $11
      call $~lib/rt/pure/__retain
      local.set $5
      local.get $4
      f64.load
      local.get $2
      f64.load
      f64.sub
      local.get $5
      f64.load offset=8
      local.get $2
      f64.load offset=8
      f64.sub
      f64.mul
      local.get $4
      f64.load offset=8
      local.get $2
      f64.load offset=8
      f64.sub
      local.get $5
      f64.load
      local.get $2
      f64.load
      f64.sub
      f64.mul
      f64.sub
      f64.const 0
      f64.lt
      if (result i32)
       i32.const -1
      else
       i32.const 1
      end
      local.get $5
      call $~lib/rt/pure/__release
      local.get $4
      call $~lib/rt/pure/__release
      local.get $2
      call $~lib/rt/pure/__release
      i32.ne
      if (result i32)
       local.get $10
       call $~lib/rt/pure/__retain
       local.set $2
       local.get $11
       call $~lib/rt/pure/__retain
       local.set $4
       local.get $6
       call $~lib/rt/pure/__retain
       local.set $5
       local.get $4
       f64.load
       local.get $2
       f64.load
       f64.sub
       local.get $5
       f64.load offset=8
       local.get $2
       f64.load offset=8
       f64.sub
       f64.mul
       local.get $4
       f64.load offset=8
       local.get $2
       f64.load offset=8
       f64.sub
       local.get $5
       f64.load
       local.get $2
       f64.load
       f64.sub
       f64.mul
       f64.sub
       f64.const 0
       f64.lt
       if (result i32)
        i32.const -1
       else
        i32.const 1
       end
       local.get $5
       call $~lib/rt/pure/__release
       local.get $4
       call $~lib/rt/pure/__release
       local.get $2
       call $~lib/rt/pure/__release
       local.get $10
       call $~lib/rt/pure/__retain
       local.set $2
       local.get $11
       call $~lib/rt/pure/__retain
       local.set $4
       local.get $8
       call $~lib/rt/pure/__retain
       local.set $5
       local.get $4
       f64.load
       local.get $2
       f64.load
       f64.sub
       local.get $5
       f64.load offset=8
       local.get $2
       f64.load offset=8
       f64.sub
       f64.mul
       local.get $4
       f64.load offset=8
       local.get $2
       f64.load offset=8
       f64.sub
       local.get $5
       f64.load
       local.get $2
       f64.load
       f64.sub
       f64.mul
       f64.sub
       f64.const 0
       f64.lt
       if (result i32)
        i32.const -1
       else
        i32.const 1
       end
       local.get $5
       call $~lib/rt/pure/__release
       local.get $4
       call $~lib/rt/pure/__release
       local.get $2
       call $~lib/rt/pure/__release
       i32.ne
      else
       i32.const 0
      end
      local.get $11
      call $~lib/rt/pure/__release
      local.get $10
      call $~lib/rt/pure/__release
      local.get $8
      call $~lib/rt/pure/__release
      local.get $6
      call $~lib/rt/pure/__release
      if
       local.get $12
       call $~lib/rt/pure/__retain
       local.set $3
       local.get $14
       call $~lib/rt/pure/__retain
       local.set $2
       local.get $15
       call $~lib/rt/pure/__retain
       local.set $6
       local.get $2
       f64.load
       local.get $3
       f64.load
       f64.sub
       local.get $6
       f64.load offset=8
       local.get $3
       f64.load offset=8
       f64.sub
       f64.mul
       local.get $2
       f64.load offset=8
       local.get $3
       f64.load offset=8
       f64.sub
       local.get $6
       f64.load
       local.get $3
       f64.load
       f64.sub
       f64.mul
       f64.sub
       f64.const 0
       f64.lt
       if (result i32)
        i32.const -1
       else
        i32.const 1
       end
       local.get $6
       call $~lib/rt/pure/__release
       local.get $2
       call $~lib/rt/pure/__release
       local.get $3
       call $~lib/rt/pure/__release
       local.get $17
       i32.add
       local.set $17
      end
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $loop|1
     end
    end
    local.get $13
    i32.const 1
    i32.add
    local.set $13
    br $loop|0
   end
  end
  local.get $12
  call $~lib/rt/pure/__release
  local.get $18
  call $~lib/rt/pure/__release
  local.get $15
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $17
  i32.const 1
  i32.and
  i32.eqz
 )
 (func $assembly/index/boundingBoxOf (; 45 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  f64.const inf
  local.set $3
  f64.const inf
  local.set $4
  f64.const -inf
  local.set $5
  f64.const -inf
  local.set $6
  local.get $0
  i32.load offset=12
  local.set $8
  loop $loop|0
   local.get $1
   local.get $8
   i32.lt_s
   if
    local.get $0
    local.get $1
    call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
    local.tee $2
    f64.load
    local.tee $7
    local.get $3
    f64.min
    local.set $3
    local.get $7
    local.get $5
    f64.max
    local.set $5
    local.get $2
    f64.load offset=8
    local.tee $7
    local.get $4
    f64.min
    local.set $4
    local.get $7
    local.get $6
    f64.max
    local.set $6
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    local.get $2
    call $~lib/rt/pure/__release
    br $loop|0
   end
  end
  i32.const 32
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $1
  local.get $3
  f64.store
  local.get $1
  local.get $4
  f64.store offset=8
  local.get $1
  local.get $5
  f64.store offset=16
  local.get $1
  local.get $6
  f64.store offset=24
  local.get $1
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $assembly/index/isPointInsidePolygon (; 46 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  f64.const 1e10
  local.get $0
  f64.load offset=8
  call $assembly/index/Vertex#constructor
  local.set $15
  local.get $1
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $16
  loop $loop|0
   local.get $8
   local.get $16
   i32.le_s
   if
    local.get $1
    local.get $8
    call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
    local.set $11
    local.get $1
    i32.const 0
    local.get $8
    i32.const 1
    i32.add
    local.get $8
    local.get $16
    i32.eq
    select
    call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
    local.set $12
    local.get $0
    call $~lib/rt/pure/__retain
    local.set $6
    local.get $15
    call $~lib/rt/pure/__retain
    local.set $7
    local.get $11
    call $~lib/rt/pure/__retain
    local.set $9
    local.get $12
    call $~lib/rt/pure/__retain
    local.set $10
    local.get $6
    call $~lib/rt/pure/__retain
    local.set $2
    local.get $7
    call $~lib/rt/pure/__retain
    local.set $3
    local.get $9
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $3
    f64.load
    local.get $2
    f64.load
    f64.sub
    local.get $4
    f64.load offset=8
    local.get $2
    f64.load offset=8
    f64.sub
    f64.mul
    local.get $3
    f64.load offset=8
    local.get $2
    f64.load offset=8
    f64.sub
    local.get $4
    f64.load
    local.get $2
    f64.load
    f64.sub
    f64.mul
    f64.sub
    f64.const 0
    f64.lt
    if (result i32)
     i32.const -1
    else
     i32.const 1
    end
    local.get $4
    call $~lib/rt/pure/__release
    local.get $3
    call $~lib/rt/pure/__release
    local.get $2
    call $~lib/rt/pure/__release
    local.get $6
    call $~lib/rt/pure/__retain
    local.set $2
    local.get $7
    call $~lib/rt/pure/__retain
    local.set $3
    local.get $10
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $3
    f64.load
    local.get $2
    f64.load
    f64.sub
    local.get $4
    f64.load offset=8
    local.get $2
    f64.load offset=8
    f64.sub
    f64.mul
    local.get $3
    f64.load offset=8
    local.get $2
    f64.load offset=8
    f64.sub
    local.get $4
    f64.load
    local.get $2
    f64.load
    f64.sub
    f64.mul
    f64.sub
    f64.const 0
    f64.lt
    if (result i32)
     i32.const -1
    else
     i32.const 1
    end
    local.get $4
    call $~lib/rt/pure/__release
    local.get $3
    call $~lib/rt/pure/__release
    local.get $2
    call $~lib/rt/pure/__release
    i32.ne
    if (result i32)
     local.get $9
     call $~lib/rt/pure/__retain
     local.set $2
     local.get $10
     call $~lib/rt/pure/__retain
     local.set $3
     local.get $6
     call $~lib/rt/pure/__retain
     local.set $4
     local.get $3
     f64.load
     local.get $2
     f64.load
     f64.sub
     local.get $4
     f64.load offset=8
     local.get $2
     f64.load offset=8
     f64.sub
     f64.mul
     local.get $3
     f64.load offset=8
     local.get $2
     f64.load offset=8
     f64.sub
     local.get $4
     f64.load
     local.get $2
     f64.load
     f64.sub
     f64.mul
     f64.sub
     f64.const 0
     f64.lt
     if (result i32)
      i32.const -1
     else
      i32.const 1
     end
     local.get $4
     call $~lib/rt/pure/__release
     local.get $3
     call $~lib/rt/pure/__release
     local.get $2
     call $~lib/rt/pure/__release
     local.get $9
     call $~lib/rt/pure/__retain
     local.set $2
     local.get $10
     call $~lib/rt/pure/__retain
     local.set $3
     local.get $7
     call $~lib/rt/pure/__retain
     local.set $4
     local.get $3
     f64.load
     local.get $2
     f64.load
     f64.sub
     local.get $4
     f64.load offset=8
     local.get $2
     f64.load offset=8
     f64.sub
     f64.mul
     local.get $3
     f64.load offset=8
     local.get $2
     f64.load offset=8
     f64.sub
     local.get $4
     f64.load
     local.get $2
     f64.load
     f64.sub
     f64.mul
     f64.sub
     f64.const 0
     f64.lt
     if (result i32)
      i32.const -1
     else
      i32.const 1
     end
     local.get $4
     call $~lib/rt/pure/__release
     local.get $3
     call $~lib/rt/pure/__release
     local.get $2
     call $~lib/rt/pure/__release
     i32.ne
    else
     i32.const 0
    end
    local.get $10
    call $~lib/rt/pure/__release
    local.get $9
    call $~lib/rt/pure/__release
    local.get $7
    call $~lib/rt/pure/__release
    local.get $6
    call $~lib/rt/pure/__release
    if
     local.get $0
     call $~lib/rt/pure/__retain
     local.set $5
     local.get $11
     call $~lib/rt/pure/__retain
     local.set $2
     local.get $12
     call $~lib/rt/pure/__retain
     local.set $6
     local.get $2
     f64.load
     local.get $5
     f64.load
     f64.sub
     local.get $6
     f64.load offset=8
     local.get $5
     f64.load offset=8
     f64.sub
     f64.mul
     local.get $2
     f64.load offset=8
     local.get $5
     f64.load offset=8
     f64.sub
     local.get $6
     f64.load
     local.get $5
     f64.load
     f64.sub
     f64.mul
     f64.sub
     f64.const 0
     f64.lt
     if (result i32)
      i32.const -1
     else
      i32.const 1
     end
     local.get $6
     call $~lib/rt/pure/__release
     local.get $2
     call $~lib/rt/pure/__release
     local.get $5
     call $~lib/rt/pure/__release
     local.get $14
     i32.add
     local.set $14
    end
    local.get $8
    i32.const 1
    i32.add
    local.set $8
    local.get $11
    call $~lib/rt/pure/__release
    local.get $12
    call $~lib/rt/pure/__release
    br $loop|0
   end
  end
  local.get $15
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $14
  i32.const 1
  i32.and
  i32.const 0
  i32.ne
 )
 (func $assembly/index/isPolygonInsidePolygon (; 47 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $assembly/index/boundingBoxOf
  local.set $6
  local.get $1
  call $assembly/index/boundingBoxOf
  local.set $7
  local.get $6
  f64.load offset=16
  local.get $7
  f64.load
  f64.lt
  if (result i32)
   i32.const 1
  else
   local.get $6
   f64.load
   local.get $7
   f64.load offset=16
   f64.gt
  end
  if (result i32)
   i32.const 1
  else
   local.get $6
   f64.load offset=24
   local.get $7
   f64.load offset=8
   f64.lt
  end
  if (result i32)
   i32.const 1
  else
   local.get $6
   f64.load offset=8
   local.get $7
   f64.load offset=24
   f64.gt
  end
  if
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $6
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $19
  loop $loop|0
   local.get $9
   local.get $19
   i32.le_s
   if
    local.get $0
    local.get $9
    call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
    local.set $14
    local.get $0
    i32.const 0
    local.get $9
    i32.const 1
    i32.add
    local.get $9
    local.get $19
    i32.eq
    select
    call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
    local.set $15
    i32.const 0
    local.set $5
    local.get $1
    i32.load offset=12
    i32.const 1
    i32.sub
    local.set $20
    loop $loop|1
     local.get $5
     local.get $20
     i32.le_s
     if
      local.get $1
      local.get $5
      call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
      local.set $16
      local.get $1
      i32.const 0
      local.get $5
      i32.const 1
      i32.add
      local.get $5
      local.get $20
      i32.eq
      select
      call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
      local.set $17
      local.get $14
      call $~lib/rt/pure/__retain
      local.set $10
      local.get $15
      call $~lib/rt/pure/__retain
      local.set $11
      local.get $16
      call $~lib/rt/pure/__retain
      local.set $12
      local.get $17
      call $~lib/rt/pure/__retain
      local.set $13
      local.get $10
      call $~lib/rt/pure/__retain
      local.set $2
      local.get $11
      call $~lib/rt/pure/__retain
      local.set $3
      local.get $12
      call $~lib/rt/pure/__retain
      local.set $4
      local.get $3
      f64.load
      local.get $2
      f64.load
      f64.sub
      local.get $4
      f64.load offset=8
      local.get $2
      f64.load offset=8
      f64.sub
      f64.mul
      local.get $3
      f64.load offset=8
      local.get $2
      f64.load offset=8
      f64.sub
      local.get $4
      f64.load
      local.get $2
      f64.load
      f64.sub
      f64.mul
      f64.sub
      f64.const 0
      f64.lt
      if (result i32)
       i32.const -1
      else
       i32.const 1
      end
      local.get $4
      call $~lib/rt/pure/__release
      local.get $3
      call $~lib/rt/pure/__release
      local.get $2
      call $~lib/rt/pure/__release
      local.get $10
      call $~lib/rt/pure/__retain
      local.set $2
      local.get $11
      call $~lib/rt/pure/__retain
      local.set $3
      local.get $13
      call $~lib/rt/pure/__retain
      local.set $4
      local.get $3
      f64.load
      local.get $2
      f64.load
      f64.sub
      local.get $4
      f64.load offset=8
      local.get $2
      f64.load offset=8
      f64.sub
      f64.mul
      local.get $3
      f64.load offset=8
      local.get $2
      f64.load offset=8
      f64.sub
      local.get $4
      f64.load
      local.get $2
      f64.load
      f64.sub
      f64.mul
      f64.sub
      f64.const 0
      f64.lt
      if (result i32)
       i32.const -1
      else
       i32.const 1
      end
      local.get $4
      call $~lib/rt/pure/__release
      local.get $3
      call $~lib/rt/pure/__release
      local.get $2
      call $~lib/rt/pure/__release
      i32.ne
      if (result i32)
       local.get $12
       call $~lib/rt/pure/__retain
       local.set $2
       local.get $13
       call $~lib/rt/pure/__retain
       local.set $3
       local.get $10
       call $~lib/rt/pure/__retain
       local.set $4
       local.get $3
       f64.load
       local.get $2
       f64.load
       f64.sub
       local.get $4
       f64.load offset=8
       local.get $2
       f64.load offset=8
       f64.sub
       f64.mul
       local.get $3
       f64.load offset=8
       local.get $2
       f64.load offset=8
       f64.sub
       local.get $4
       f64.load
       local.get $2
       f64.load
       f64.sub
       f64.mul
       f64.sub
       f64.const 0
       f64.lt
       if (result i32)
        i32.const -1
       else
        i32.const 1
       end
       local.get $4
       call $~lib/rt/pure/__release
       local.get $3
       call $~lib/rt/pure/__release
       local.get $2
       call $~lib/rt/pure/__release
       local.get $12
       call $~lib/rt/pure/__retain
       local.set $2
       local.get $13
       call $~lib/rt/pure/__retain
       local.set $3
       local.get $11
       call $~lib/rt/pure/__retain
       local.set $4
       local.get $3
       f64.load
       local.get $2
       f64.load
       f64.sub
       local.get $4
       f64.load offset=8
       local.get $2
       f64.load offset=8
       f64.sub
       f64.mul
       local.get $3
       f64.load offset=8
       local.get $2
       f64.load offset=8
       f64.sub
       local.get $4
       f64.load
       local.get $2
       f64.load
       f64.sub
       f64.mul
       f64.sub
       f64.const 0
       f64.lt
       if (result i32)
        i32.const -1
       else
        i32.const 1
       end
       local.get $4
       call $~lib/rt/pure/__release
       local.get $3
       call $~lib/rt/pure/__release
       local.get $2
       call $~lib/rt/pure/__release
       i32.ne
      else
       i32.const 0
      end
      local.get $13
      call $~lib/rt/pure/__release
      local.get $12
      call $~lib/rt/pure/__release
      local.get $11
      call $~lib/rt/pure/__release
      local.get $10
      call $~lib/rt/pure/__release
      if
       local.get $0
       call $~lib/rt/pure/__release
       local.get $1
       call $~lib/rt/pure/__release
       local.get $6
       call $~lib/rt/pure/__release
       local.get $7
       call $~lib/rt/pure/__release
       local.get $14
       call $~lib/rt/pure/__release
       local.get $15
       call $~lib/rt/pure/__release
       local.get $16
       call $~lib/rt/pure/__release
       local.get $17
       call $~lib/rt/pure/__release
       i32.const 0
       return
      else
       local.get $5
       i32.const 1
       i32.add
       local.set $5
       local.get $16
       call $~lib/rt/pure/__release
       local.get $17
       call $~lib/rt/pure/__release
       br $loop|1
      end
      unreachable
     end
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    local.get $14
    call $~lib/rt/pure/__release
    local.get $15
    call $~lib/rt/pure/__release
    br $loop|0
   end
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
  local.tee $8
  local.get $1
  call $assembly/index/isPointInsidePolygon
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#indexOf (; 48 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  local.tee $3
  if (result i32)
   i32.const 0
   local.get $3
   i32.ge_s
  else
   i32.const 1
  end
  if
   local.get $1
   call $~lib/rt/pure/__release
   i32.const -1
   return
  end
  local.get $0
  i32.load offset=4
  local.set $0
  loop $continue|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $2
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load
    local.get $1
    i32.eq
    if
     local.get $1
     call $~lib/rt/pure/__release
     local.get $2
     return
    else
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $continue|0
    end
    unreachable
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  i32.const -1
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#splice (; 49 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  i32.const 1
  local.get $0
  i32.load offset=12
  local.tee $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.lt_s
   select
  end
  local.tee $1
  i32.sub
  local.tee $2
  i32.const 1
  local.get $2
  i32.lt_s
  select
  local.tee $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $4
  i32.const 5
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  i32.load offset=4
  local.set $7
  local.get $0
  i32.load offset=4
  local.tee $8
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.set $5
  i32.const 0
  local.set $2
  loop $loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $2
    i32.const 2
    i32.shl
    local.tee $9
    local.get $7
    i32.add
    local.get $5
    local.get $9
    i32.add
    i32.load
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
  local.get $1
  local.get $4
  i32.add
  local.tee $1
  local.get $3
  i32.ne
  if
   local.get $5
   local.get $1
   i32.const 2
   i32.shl
   local.get $8
   i32.add
   local.get $3
   local.get $1
   i32.sub
   i32.const 2
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $0
  local.get $3
  local.get $4
  i32.sub
  i32.store offset=12
  local.get $6
 )
 (func $assembly/index/linkUp (; 50 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  i32.const 6
  i32.const 66112
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $11
  call $~lib/rt/pure/__retain
  local.set $10
  local.get $0
  i32.load offset=12
  local.set $12
  loop $loop|0
   local.get $9
   local.get $12
   i32.lt_s
   if
    local.get $0
    local.get $9
    call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
    local.get $8
    call $~lib/rt/pure/__release
    local.set $8
    i32.const 0
    i32.const 5
    i32.const 66128
    call $~lib/rt/__allocArray
    call $~lib/rt/pure/__retain
    local.tee $13
    call $~lib/rt/pure/__retain
    local.set $3
    i32.const 0
    local.set $4
    local.get $1
    i32.load offset=12
    local.set $14
    loop $loop|1
     local.get $4
     local.get $14
     i32.lt_s
     if
      local.get $1
      local.get $4
      call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
      local.get $7
      call $~lib/rt/pure/__release
      local.tee $7
      local.get $8
      call $assembly/index/isPolygonInsidePolygon
      if
       i32.const 0
       local.set $2
       i32.const 0
       local.set $5
       loop $loop|2
        block $break|2
         local.get $5
         local.get $3
         i32.load offset=12
         i32.ge_s
         br_if $break|2
         local.get $7
         local.get $3
         local.get $5
         call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
         local.tee $6
         call $assembly/index/isPolygonInsidePolygon
         if
          i32.const 1
          local.set $2
          local.get $6
          call $~lib/rt/pure/__release
          br $break|2
         end
         local.get $6
         local.get $7
         call $assembly/index/isPolygonInsidePolygon
         if
          local.get $3
          local.get $6
          call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#indexOf
          local.tee $15
          i32.const -1
          i32.ne
          if
           local.get $3
           local.get $15
           call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#splice
           call $~lib/rt/pure/__release
          end
         end
         local.get $5
         i32.const 1
         i32.add
         local.set $5
         local.get $6
         call $~lib/rt/pure/__release
         br $loop|2
        end
       end
       local.get $2
       i32.eqz
       if
        local.get $3
        local.get $7
        call $~lib/array/Array<assembly/index/Vertex>#push
        drop
       end
      end
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $loop|1
     end
    end
    i32.const 1
    i32.const 5
    i32.const 0
    call $~lib/rt/__allocArray
    local.tee $2
    i32.load offset=4
    local.get $8
    call $~lib/rt/pure/__retain
    i32.store
    local.get $2
    call $~lib/rt/pure/__retain
    local.set $4
    i32.const 0
    local.set $2
    local.get $3
    i32.load offset=12
    local.set $5
    loop $loop|3
     local.get $2
     local.get $5
     i32.lt_s
     if
      local.get $4
      local.get $3
      local.get $2
      call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
      local.tee $6
      call $~lib/array/Array<assembly/index/Vertex>#push
      drop
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      local.get $6
      call $~lib/rt/pure/__release
      br $loop|3
     end
    end
    local.get $10
    local.get $4
    call $~lib/array/Array<assembly/index/Vertex>#push
    drop
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    local.get $13
    call $~lib/rt/pure/__release
    local.get $3
    call $~lib/rt/pure/__release
    local.get $4
    call $~lib/rt/pure/__release
    br $loop|0
   end
  end
  local.get $11
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $10
 )
 (func $assembly/index/compile (; 51 ;) (type $FUNCSIG$iiiid) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f64) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  (local $9 i32)
  (local $10 f64)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 f64)
  (local $15 f64)
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
  (local $19 f64)
  (local $20 f64)
  (local $21 f64)
  (local $22 f64)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 f64)
  (local $27 f64)
  (local $28 f64)
  local.get $2
  i32.const 2
  i32.add
  local.set $13
  i32.const 0
  i32.const 5
  i32.const 65800
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $23
  call $~lib/rt/pure/__retain
  local.set $9
  loop $continue|0
   local.get $6
   local.get $0
   i32.lt_u
   if
    local.get $6
    i32.load8_u
    local.set $2
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    local.get $2
    i32.const 77
    i32.eq
    if
     local.get $6
     f64.load
     local.set $8
     local.get $6
     i32.const 8
     i32.add
     local.tee $2
     f64.load
     local.set $10
     local.get $2
     i32.const 8
     i32.add
     local.set $6
     i32.const 1
     i32.const 4
     i32.const 0
     call $~lib/rt/__allocArray
     local.tee $4
     i32.load offset=4
     i32.const 16
     i32.const 3
     call $~lib/rt/tlsf/__alloc
     call $~lib/rt/pure/__retain
     local.tee $2
     local.get $8
     f64.store
     local.get $2
     local.get $10
     f64.store offset=8
     local.get $2
     call $~lib/rt/pure/__retain
     i32.store
     local.get $9
     local.get $11
     local.get $4
     call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__set
     local.get $2
     call $~lib/rt/pure/__release
     br $continue|0
    end
    local.get $2
    i32.const 76
    i32.eq
    if
     local.get $6
     f64.load
     local.set $8
     local.get $6
     i32.const 8
     i32.add
     local.tee $2
     f64.load
     local.set $10
     local.get $2
     i32.const 8
     i32.add
     local.set $6
     local.get $9
     local.get $11
     call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
     local.set $4
     i32.const 16
     i32.const 3
     call $~lib/rt/tlsf/__alloc
     call $~lib/rt/pure/__retain
     local.tee $2
     local.get $8
     f64.store
     local.get $2
     local.get $10
     f64.store offset=8
     local.get $4
     local.get $2
     call $~lib/array/Array<assembly/index/Vertex>#push
     drop
     local.get $4
     call $~lib/rt/pure/__release
     local.get $2
     call $~lib/rt/pure/__release
     br $continue|0
    end
    local.get $2
    i32.const 81
    i32.eq
    if
     local.get $6
     f64.load
     local.set $14
     local.get $6
     i32.const 8
     i32.add
     local.tee $2
     i32.const 8
     i32.add
     local.tee $4
     i32.const 8
     i32.add
     local.tee $5
     i32.const 8
     i32.add
     local.tee $7
     i32.const 8
     i32.add
     local.tee $12
     i32.const 8
     i32.add
     local.set $6
     local.get $2
     f64.load
     local.set $15
     local.get $4
     f64.load
     local.set $16
     local.get $5
     f64.load
     local.set $17
     local.get $7
     f64.load
     local.set $18
     local.get $12
     f64.load
     local.set $19
     local.get $13
     i32.const 255
     i32.and
     local.tee $7
     call $~lib/array/Array<assembly/index/Vertex>#constructor
     local.set $4
     f64.const 1
     local.get $7
     i32.const 1
     i32.sub
     f64.convert_i32_u
     f64.div
     local.set $20
     i32.const 0
     local.set $2
     loop $loop|1
      local.get $2
      local.get $7
      i32.lt_u
      if
       i32.const 16
       i32.const 3
       call $~lib/rt/tlsf/__alloc
       call $~lib/rt/pure/__retain
       local.tee $5
       f64.const 1
       local.get $2
       f64.convert_i32_u
       local.get $20
       f64.mul
       local.tee $8
       f64.sub
       local.tee $10
       local.get $10
       f64.mul
       local.tee $21
       local.get $14
       f64.mul
       f64.const 2
       local.get $10
       f64.mul
       local.get $8
       f64.mul
       local.tee $10
       local.get $16
       f64.mul
       f64.add
       local.get $8
       local.get $8
       f64.mul
       local.tee $8
       local.get $18
       f64.mul
       f64.add
       f64.store
       local.get $5
       local.get $21
       local.get $15
       f64.mul
       local.get $10
       local.get $17
       f64.mul
       f64.add
       local.get $8
       local.get $19
       f64.mul
       f64.add
       f64.store offset=8
       local.get $4
       local.get $2
       local.get $5
       call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__unchecked_set
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       local.get $5
       call $~lib/rt/pure/__release
       br $loop|1
      end
     end
     i32.const 1
     local.set $2
     local.get $4
     i32.load offset=12
     local.set $5
     loop $loop|2
      local.get $2
      local.get $5
      i32.lt_s
      if
       local.get $9
       local.get $11
       call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
       local.tee $7
       local.get $4
       local.get $2
       call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
       local.tee $12
       call $~lib/array/Array<assembly/index/Vertex>#push
       drop
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       local.get $7
       call $~lib/rt/pure/__release
       local.get $12
       call $~lib/rt/pure/__release
       br $loop|2
      end
     end
     local.get $4
     call $~lib/rt/pure/__release
     br $continue|0
    end
    local.get $2
    i32.const 67
    i32.eq
    if
     local.get $6
     f64.load
     local.set $14
     local.get $6
     i32.const 8
     i32.add
     local.tee $2
     i32.const 8
     i32.add
     local.tee $4
     i32.const 8
     i32.add
     local.tee $5
     i32.const 8
     i32.add
     local.tee $7
     i32.const 8
     i32.add
     local.tee $12
     i32.const 8
     i32.add
     local.tee $24
     i32.const 8
     i32.add
     local.tee $25
     i32.const 8
     i32.add
     local.set $6
     local.get $2
     f64.load
     local.set $15
     local.get $4
     f64.load
     local.set $16
     local.get $5
     f64.load
     local.set $17
     local.get $7
     f64.load
     local.set $18
     local.get $12
     f64.load
     local.set $19
     local.get $24
     f64.load
     local.set $20
     local.get $25
     f64.load
     local.set $21
     local.get $13
     i32.const 255
     i32.and
     local.tee $7
     call $~lib/array/Array<assembly/index/Vertex>#constructor
     local.set $5
     f64.const 1
     local.get $7
     i32.const 1
     i32.sub
     f64.convert_i32_u
     f64.div
     local.set $26
     i32.const 0
     local.set $4
     loop $loop|3
      local.get $4
      local.get $7
      i32.lt_u
      if
       i32.const 16
       i32.const 3
       call $~lib/rt/tlsf/__alloc
       call $~lib/rt/pure/__retain
       local.tee $2
       f64.const 1
       local.get $4
       f64.convert_i32_u
       local.get $26
       f64.mul
       local.tee $8
       f64.sub
       local.tee $10
       local.get $10
       f64.mul
       local.tee $22
       local.get $10
       f64.mul
       local.tee $27
       local.get $14
       f64.mul
       f64.const 3
       local.get $22
       f64.mul
       local.get $8
       f64.mul
       local.tee $22
       local.get $16
       f64.mul
       f64.add
       f64.const 3
       local.get $10
       f64.mul
       local.get $8
       local.get $8
       f64.mul
       local.tee $10
       f64.mul
       local.tee $28
       local.get $18
       f64.mul
       f64.add
       local.get $10
       local.get $8
       f64.mul
       local.tee $8
       local.get $20
       f64.mul
       f64.add
       f64.store
       local.get $2
       local.get $27
       local.get $15
       f64.mul
       local.get $22
       local.get $17
       f64.mul
       f64.add
       local.get $28
       local.get $19
       f64.mul
       f64.add
       local.get $8
       local.get $21
       f64.mul
       f64.add
       f64.store offset=8
       local.get $5
       local.get $4
       local.get $2
       call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__unchecked_set
       local.get $4
       i32.const 1
       i32.add
       local.set $4
       local.get $2
       call $~lib/rt/pure/__release
       br $loop|3
      end
     end
     i32.const 1
     local.set $2
     local.get $5
     i32.load offset=12
     local.set $4
     loop $loop|4
      local.get $2
      local.get $4
      i32.lt_s
      if
       local.get $9
       local.get $11
       call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
       local.tee $7
       local.get $5
       local.get $2
       call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
       local.tee $12
       call $~lib/array/Array<assembly/index/Vertex>#push
       drop
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       local.get $7
       call $~lib/rt/pure/__release
       local.get $12
       call $~lib/rt/pure/__release
       br $loop|4
      end
     end
     local.get $5
     call $~lib/rt/pure/__release
     br $continue|0
    end
    local.get $2
    i32.const 90
    i32.ne
    br_if $continue|0
    local.get $9
    local.get $11
    local.get $9
    local.get $11
    call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
    local.tee $2
    local.get $3
    call $assembly/index/dedup
    local.tee $4
    call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__set
    local.get $9
    local.get $11
    call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
    local.tee $5
    i32.load offset=12
    i32.const 3
    i32.lt_s
    if
     local.get $9
     local.get $11
     local.get $9
     local.get $11
     call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
     local.tee $7
     f64.const 0
     call $assembly/index/dedup
     local.tee $12
     call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__set
     local.get $7
     call $~lib/rt/pure/__release
     local.get $12
     call $~lib/rt/pure/__release
    end
    local.get $11
    i32.const 1
    i32.add
    local.set $11
    local.get $2
    call $~lib/rt/pure/__release
    local.get $4
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    br $continue|0
   end
  end
  i32.const 0
  i32.const 5
  i32.const 66080
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $~lib/rt/pure/__retain
  local.set $6
  i32.const 0
  i32.const 5
  i32.const 66096
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $13
  call $~lib/rt/pure/__retain
  local.set $11
  i32.const 0
  local.set $2
  i32.const 0
  local.set $4
  local.get $9
  i32.load offset=12
  local.set $7
  loop $loop|5
   local.get $4
   local.get $7
   i32.lt_s
   if
    local.get $9
    local.get $4
    call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
    local.get $2
    call $~lib/rt/pure/__release
    local.set $2
    local.get $1
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if (result i32)
     local.get $2
     local.get $9
     call $assembly/index/isHole_oddeven
    else
     local.get $2
     local.get $9
     call $assembly/index/isHole_nonzero
    end
    if (result i32)
     local.get $11
     local.get $2
     call $~lib/array/Array<assembly/index/Vertex>#push
    else
     local.get $6
     local.get $2
     call $~lib/array/Array<assembly/index/Vertex>#push
    end
    drop
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|5
   end
  end
  local.get $6
  local.get $11
  call $assembly/index/linkUp
  local.get $23
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/rt/pure/__visit (; 52 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  i32.const 66204
  i32.lt_u
  if
   return
  end
  local.get $0
  i32.const 16
  i32.sub
  local.set $0
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        local.get $1
        i32.const 1
        i32.ne
        if
         local.get $1
         i32.const 2
         i32.eq
         br_if $case1|0
         block $tablify|0
          local.get $1
          i32.const 3
          i32.sub
          br_table $case2|0 $case3|0 $case4|0 $tablify|0
         end
         br $case5|0
        end
        local.get $0
        call $~lib/rt/pure/decrement
        br $break|0
       end
       local.get $0
       i32.load offset=4
       i32.const 268435455
       i32.and
       i32.const 0
       i32.le_u
       if
        i32.const 0
        i32.const 65656
        i32.const 75
        i32.const 17
        call $~lib/builtins/abort
        unreachable
       end
       local.get $0
       local.get $0
       i32.load offset=4
       i32.const 1
       i32.sub
       i32.store offset=4
       local.get $0
       call $~lib/rt/pure/markGray
       br $break|0
      end
      local.get $0
      call $~lib/rt/pure/scan
      br $break|0
     end
     local.get $0
     i32.load offset=4
     local.tee $1
     i32.const -268435456
     i32.and
     local.get $1
     i32.const 1
     i32.add
     i32.const -268435456
     i32.and
     i32.ne
     if
      i32.const 0
      i32.const 65656
      i32.const 86
      i32.const 6
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 1
     i32.add
     i32.store offset=4
     local.get $1
     i32.const 1879048192
     i32.and
     if
      local.get $0
      call $~lib/rt/pure/scanBlack
     end
     br $break|0
    end
    local.get $0
    call $~lib/rt/pure/collectWhite
    br $break|0
   end
   i32.const 0
   i32.const 65656
   i32.const 97
   i32.const 24
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/array/Array<assembly/index/Vertex>#__visit_impl (; 53 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.tee $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $0
  loop $continue|0
   local.get $2
   local.get $0
   i32.lt_u
   if
    local.get $2
    i32.load
    local.tee $3
    if
     local.get $3
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $continue|0
   end
  end
 )
 (func $~lib/rt/__visit_members (; 54 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  block $block$4$break
   block $switch$1$default
    block $switch$1$case$8
     block $switch$1$case$7
      block $switch$1$case$6
       block $switch$1$case$2
        local.get $0
        i32.const 8
        i32.sub
        i32.load
        br_table $switch$1$case$2 $switch$1$case$2 $block$4$break $switch$1$case$2 $switch$1$case$6 $switch$1$case$7 $switch$1$case$8 $block$4$break $switch$1$case$2 $switch$1$default
       end
       return
      end
      local.get $0
      local.get $1
      call $~lib/array/Array<assembly/index/Vertex>#__visit_impl
      br $block$4$break
     end
     local.get $0
     local.get $1
     call $~lib/array/Array<assembly/index/Vertex>#__visit_impl
     br $block$4$break
    end
    local.get $0
    local.get $1
    call $~lib/array/Array<assembly/index/Vertex>#__visit_impl
    br $block$4$break
   end
   unreachable
  end
  local.get $0
  i32.load
  local.tee $0
  if
   local.get $0
   local.get $1
   call $~lib/rt/pure/__visit
  end
 )
 (func $null (; 55 ;) (type $FUNCSIG$v)
  nop
 )
)
