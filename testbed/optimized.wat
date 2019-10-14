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
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$ddd (func (param f64 f64) (result f64)))
 (type $FUNCSIG$ddi (func (param f64 i32) (result f64)))
 (type $FUNCSIG$dii (func (param i32 i32) (result f64)))
 (type $FUNCSIG$iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$iid (func (param i32 f64) (result i32)))
 (type $FUNCSIG$iiid (func (param i32 i32 f64) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16384) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 16432) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 16488) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s")
 (data (i32.const 16536) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 16592) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 16636) "\01")
 (data (i32.const 16648) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 16696) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 16744) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data (i32.const 16860) "\01")
 (data (i32.const 16876) "\01")
 (data (i32.const 16892) "\01")
 (data (i32.const 16908) "\01")
 (data (i32.const 16924) "\01")
 (data (i32.const 16940) "\01")
 (data (i32.const 16952) "\08\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\13\0d\00\00\02\00\00\00\93 \00\00\02\00\00\00\93 \00\00\02\00\00\00\93 \00\00\02\00\00\00\93\04\00\00\02")
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/collectLock (mut i32) (i32.const 0))
 (global $~lib/rt/pure/ROOTS (mut i32) (i32.const 0))
 (global $~lib/rt/pure/CUR (mut i32) (i32.const 0))
 (global $~lib/rt/pure/END (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 16952))
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
   i32.const 16400
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
   i32.const 16400
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
   i32.const 16400
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
   i32.const 16400
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
   i32.const 16400
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
    i32.const 16400
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
   i32.const 16400
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
   i32.const 16400
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
   i32.const 16400
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
   i32.const 16400
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
    i32.const 16400
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
    i32.const 16400
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
  i32.const 1
  memory.size
  local.tee $0
  i32.gt_s
  if (result i32)
   i32.const 1
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
  i32.const 17024
  i32.const 0
  i32.store
  i32.const 18592
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
    i32.const 17024
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
      i32.const 17024
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
  i32.const 17024
  i32.const 18608
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 17024
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/prepareSize (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 16448
   i32.const 16400
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
   i32.const 16400
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
     i32.const 16400
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
   i32.const 16400
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
  local.get $1
  local.get $1
  i32.const 536870904
  i32.lt_u
  select
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
   i32.const 16400
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
   i32.const 16400
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
     i32.const 16400
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
   i32.const 16400
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
   i32.const 16504
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
   i32.const 16504
   i32.const 107
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/pure/__retain (; 18 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 17020
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
  i32.const 16952
  i32.load
  i32.gt_u
  if
   i32.const 16552
   i32.const 16608
   i32.const 22
   i32.const 27
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.shl
  i32.const 16956
  i32.add
  i32.load
 )
 (func $~lib/memory/memory.copy (; 20 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $3
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
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
 (func $~lib/rt/tlsf/__free (; 21 ;) (type $FUNCSIG$vi) (param $0 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   i32.const 0
   i32.const 16400
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
   i32.const 16400
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
 (func $~lib/rt/pure/growRoots (; 22 ;) (type $FUNCSIG$v)
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
 (func $~lib/rt/pure/appendRoot (; 23 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/rt/pure/decrement (; 24 ;) (type $FUNCSIG$vi) (param $0 i32)
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
   i32.const 16504
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
    i32.const 16504
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
 (func $~lib/rt/pure/__release (; 25 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 17020
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/rt/__allocArray (; 26 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  i32.const 16
  local.get $2
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $0
  local.get $1
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $4
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $4
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $3
  if
   local.get $4
   local.get $3
   local.get $1
   call $~lib/memory/memory.copy
  end
  local.get $2
 )
 (func $~lib/rt/tlsf/reallocateBlock (; 27 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 16400
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
 (func $~lib/rt/tlsf/__realloc (; 28 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   i32.const 0
   i32.const 16400
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
   i32.const 16400
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
 (func $~lib/memory/memory.fill (; 29 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/ensureSize (; 30 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    i32.const 16664
    i32.const 16712
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
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__unchecked_set (; 31 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__set (; 32 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__unchecked_set
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
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get (; 33 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 16552
   i32.const 16712
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
   i32.const 16760
   i32.const 16712
   i32.const 96
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/array/Array<~lib/array/Array<f64>>#push (; 34 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/math/NativeMath.scalbn (; 35 ;) (type $FUNCSIG$ddi) (param $0 f64) (param $1 i32) (result f64)
  local.get $1
  i32.const 1023
  i32.gt_s
  if (result f64)
   local.get $0
   f64.const 8988465674311579538646525e283
   f64.mul
   local.set $0
   local.get $1
   i32.const 1023
   i32.sub
   local.tee $1
   i32.const 1023
   i32.gt_s
   if (result f64)
    local.get $1
    i32.const 1023
    i32.sub
    local.tee $1
    i32.const 1023
    local.get $1
    i32.const 1023
    i32.lt_s
    select
    local.set $1
    local.get $0
    f64.const 8988465674311579538646525e283
    f64.mul
   else
    local.get $0
   end
  else
   local.get $1
   i32.const -1022
   i32.lt_s
   if (result f64)
    local.get $0
    f64.const 2.004168360008973e-292
    f64.mul
    local.set $0
    local.get $1
    i32.const 969
    i32.add
    local.tee $1
    i32.const -1022
    i32.lt_s
    if (result f64)
     local.get $1
     i32.const 969
     i32.add
     local.tee $1
     i32.const -1022
     local.get $1
     i32.const -1022
     i32.gt_s
     select
     local.set $1
     local.get $0
     f64.const 2.004168360008973e-292
     f64.mul
    else
     local.get $0
    end
   else
    local.get $0
   end
  end
  local.get $1
  i64.extend_i32_s
  i64.const 1023
  i64.add
  i64.const 52
  i64.shl
  f64.reinterpret_i64
  f64.mul
 )
 (func $~lib/math/NativeMath.pow (; 36 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
  (local $2 f64)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  (local $8 i32)
  (local $9 i32)
  (local $10 f64)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 f64)
  (local $15 f64)
  (local $16 i64)
  (local $17 i32)
  (local $18 f64)
  (local $19 i32)
  (local $20 f64)
  local.get $0
  i64.reinterpret_f64
  local.tee $16
  i32.wrap_i64
  local.set $19
  local.get $16
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.tee $17
  i32.const 2147483647
  i32.and
  local.set $4
  local.get $1
  i64.reinterpret_f64
  local.tee $16
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.tee $9
  i32.const 2147483647
  i32.and
  local.set $8
  local.get $8
  local.get $16
  i32.wrap_i64
  local.tee $6
  i32.or
  i32.eqz
  if
   f64.const 1
   return
  end
  i32.const 1
  local.get $6
  i32.const 0
  local.get $8
  i32.const 2146435072
  i32.eq
  select
  i32.const 1
  local.get $8
  i32.const 2146435072
  i32.gt_s
  i32.const 1
  local.get $19
  i32.const 0
  local.get $4
  i32.const 2146435072
  i32.eq
  select
  local.get $4
  i32.const 2146435072
  i32.gt_s
  select
  select
  select
  if
   local.get $0
   local.get $1
   f64.add
   return
  end
  local.get $17
  i32.const 0
  i32.lt_s
  if
   local.get $8
   i32.const 1128267776
   i32.ge_s
   if (result i32)
    i32.const 2
   else
    local.get $8
    i32.const 1072693248
    i32.ge_s
    if (result i32)
     local.get $6
     local.get $8
     local.get $8
     i32.const 20
     i32.shr_s
     i32.const 1023
     i32.sub
     local.tee $12
     i32.const 20
     i32.gt_s
     local.tee $13
     select
     local.tee $5
     local.get $5
     i32.const 52
     i32.const 20
     local.get $13
     select
     local.get $12
     i32.sub
     local.tee $13
     i32.shr_s
     local.tee $5
     local.get $13
     i32.shl
     i32.eq
     if (result i32)
      i32.const 2
      local.get $5
      i32.const 1
      i32.and
      i32.sub
     else
      i32.const 0
     end
    else
     i32.const 0
    end
   end
   local.set $11
  end
  local.get $6
  i32.eqz
  if
   local.get $8
   i32.const 2146435072
   i32.eq
   if
    local.get $4
    i32.const 1072693248
    i32.sub
    local.get $19
    i32.or
    if
     local.get $4
     i32.const 1072693248
     i32.ge_s
     if
      local.get $9
      i32.const 0
      i32.lt_s
      if
       f64.const 0
       local.set $1
      end
      local.get $1
      return
     else
      f64.const 0
      local.get $1
      f64.neg
      local.get $9
      i32.const 0
      i32.ge_s
      select
      return
     end
     unreachable
    else
     f64.const nan:0x8000000000000
     return
    end
    unreachable
   end
   local.get $8
   i32.const 1072693248
   i32.eq
   if
    local.get $9
    i32.const 0
    i32.ge_s
    if
     local.get $0
     return
    end
    f64.const 1
    local.get $0
    f64.div
    return
   end
   local.get $9
   i32.const 1073741824
   i32.eq
   if
    local.get $0
    local.get $0
    f64.mul
    return
   end
   local.get $9
   i32.const 1071644672
   i32.eq
   if
    local.get $17
    i32.const 0
    i32.ge_s
    if
     local.get $0
     f64.sqrt
     return
    end
   end
  end
  local.get $0
  f64.abs
  local.set $3
  local.get $19
  i32.eqz
  if
   i32.const 1
   local.get $4
   i32.const 1072693248
   i32.eq
   local.get $4
   i32.const 2146435072
   i32.eq
   i32.const 1
   local.get $4
   select
   select
   if
    f64.const 1
    local.get $3
    f64.div
    local.get $3
    local.get $9
    i32.const 0
    i32.lt_s
    select
    local.set $3
    local.get $17
    i32.const 0
    i32.lt_s
    if (result f64)
     local.get $4
     i32.const 1072693248
     i32.sub
     local.get $11
     i32.or
     if (result f64)
      local.get $3
      f64.neg
      local.get $3
      local.get $11
      i32.const 1
      i32.eq
      select
     else
      local.get $3
      local.get $3
      f64.sub
      local.tee $0
      local.get $0
      f64.div
     end
    else
     local.get $3
    end
    return
   end
  end
  f64.const 1
  local.set $7
  local.get $17
  i32.const 0
  i32.lt_s
  if
   local.get $11
   i32.eqz
   if
    local.get $0
    local.get $0
    f64.sub
    local.tee $0
    local.get $0
    f64.div
    return
   end
   f64.const -1
   f64.const 1
   local.get $11
   i32.const 1
   i32.eq
   select
   local.set $7
  end
  local.get $8
  i32.const 1105199104
  i32.gt_s
  if (result f64)
   local.get $8
   i32.const 1139802112
   i32.gt_s
   if
    local.get $4
    i32.const 1072693247
    i32.le_s
    if
     f64.const inf
     f64.const 0
     local.get $9
     i32.const 0
     i32.lt_s
     select
     return
    end
    local.get $4
    i32.const 1072693248
    i32.ge_s
    if
     f64.const inf
     f64.const 0
     local.get $9
     i32.const 0
     i32.gt_s
     select
     return
    end
   end
   local.get $4
   i32.const 1072693247
   i32.lt_s
   if
    local.get $7
    f64.const 1.e+300
    f64.mul
    f64.const 1.e+300
    f64.mul
    local.get $7
    f64.const 1e-300
    f64.mul
    f64.const 1e-300
    f64.mul
    local.get $9
    i32.const 0
    i32.lt_s
    select
    return
   end
   local.get $4
   i32.const 1072693248
   i32.gt_s
   if
    local.get $7
    f64.const 1.e+300
    f64.mul
    f64.const 1.e+300
    f64.mul
    local.get $7
    f64.const 1e-300
    f64.mul
    f64.const 1e-300
    f64.mul
    local.get $9
    i32.const 0
    i32.gt_s
    select
    return
   end
   local.get $3
   f64.const 1
   f64.sub
   local.tee $2
   local.get $2
   f64.mul
   f64.const 0.5
   local.get $2
   f64.const 0.3333333333333333
   local.get $2
   f64.const 0.25
   f64.mul
   f64.sub
   f64.mul
   f64.sub
   f64.mul
   local.set $0
   f64.const 1.4426950216293335
   local.get $2
   f64.mul
   local.tee $3
   local.get $2
   f64.const 1.9259629911266175e-08
   f64.mul
   local.get $0
   f64.const 1.4426950408889634
   f64.mul
   f64.sub
   local.tee $0
   f64.add
   i64.reinterpret_f64
   i64.const -4294967296
   i64.and
   f64.reinterpret_i64
   local.set $10
   local.get $0
   local.get $10
   local.get $3
   f64.sub
   f64.sub
  else
   i32.const 0
   local.set $6
   local.get $4
   i32.const 1048576
   i32.lt_s
   if (result i32)
    local.get $3
    f64.const 9007199254740992
    f64.mul
    local.tee $3
    i64.reinterpret_f64
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    local.set $4
    i32.const -53
   else
    i32.const 0
   end
   local.get $4
   i32.const 20
   i32.shr_s
   i32.const 1023
   i32.sub
   i32.add
   local.set $6
   local.get $4
   i32.const 1048575
   i32.and
   local.tee $5
   i32.const 1072693248
   i32.or
   local.set $4
   local.get $5
   i32.const 235662
   i32.le_s
   if (result i32)
    i32.const 0
   else
    local.get $5
    i32.const 767610
    i32.lt_s
    if (result i32)
     i32.const 1
    else
     local.get $6
     i32.const 1
     i32.add
     local.set $6
     local.get $4
     i32.const -1048576
     i32.add
     local.set $4
     i32.const 0
    end
   end
   local.set $5
   local.get $3
   i64.reinterpret_f64
   i64.const 4294967295
   i64.and
   local.get $4
   i64.extend_i32_s
   i64.const 32
   i64.shl
   i64.or
   f64.reinterpret_i64
   local.tee $3
   f64.const 1.5
   f64.const 1
   local.get $5
   select
   local.tee $0
   f64.sub
   local.tee $10
   f64.const 1
   local.get $3
   local.get $0
   f64.add
   f64.div
   local.tee $2
   f64.mul
   local.tee $18
   i64.reinterpret_f64
   i64.const -4294967296
   i64.and
   f64.reinterpret_i64
   local.set $14
   local.get $3
   local.get $4
   i32.const 1
   i32.shr_s
   i32.const 536870912
   i32.or
   i32.const 524288
   i32.add
   local.get $5
   i32.const 18
   i32.shl
   i32.add
   i64.extend_i32_s
   i64.const 32
   i64.shl
   f64.reinterpret_i64
   local.tee $3
   local.get $0
   f64.sub
   f64.sub
   local.set $0
   f64.const 0.9617967009544373
   local.get $14
   f64.const 3
   local.get $14
   local.get $14
   f64.mul
   local.tee $20
   f64.add
   local.get $18
   local.get $18
   f64.mul
   local.tee $15
   local.get $15
   f64.mul
   f64.const 0.5999999999999946
   local.get $15
   f64.const 0.4285714285785502
   local.get $15
   f64.const 0.33333332981837743
   local.get $15
   f64.const 0.272728123808534
   local.get $15
   f64.const 0.23066074577556175
   local.get $15
   f64.const 0.20697501780033842
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   local.get $2
   local.get $10
   local.get $14
   local.get $3
   f64.mul
   f64.sub
   local.get $14
   local.get $0
   f64.mul
   f64.sub
   f64.mul
   local.tee $2
   local.get $14
   local.get $18
   f64.add
   f64.mul
   f64.add
   local.tee $0
   f64.add
   i64.reinterpret_f64
   i64.const -4294967296
   i64.and
   f64.reinterpret_i64
   local.tee $10
   f64.mul
   local.tee $3
   local.get $2
   local.get $10
   f64.mul
   local.get $0
   local.get $10
   f64.const 3
   f64.sub
   local.get $20
   f64.sub
   f64.sub
   local.get $18
   f64.mul
   f64.add
   local.tee $0
   f64.add
   i64.reinterpret_f64
   i64.const -4294967296
   i64.and
   f64.reinterpret_i64
   local.tee $2
   f64.mul
   local.tee $20
   f64.const -7.028461650952758e-09
   local.get $2
   f64.mul
   local.get $0
   local.get $2
   local.get $3
   f64.sub
   f64.sub
   f64.const 0.9617966939259756
   f64.mul
   f64.add
   f64.const 1.350039202129749e-08
   f64.const 0
   local.get $5
   select
   f64.add
   local.tee $2
   f64.add
   f64.const 0.5849624872207642
   f64.const 0
   local.get $5
   select
   local.tee $3
   f64.add
   local.get $6
   f64.convert_i32_s
   local.tee $0
   f64.add
   i64.reinterpret_f64
   i64.const -4294967296
   i64.and
   f64.reinterpret_i64
   local.set $10
   local.get $2
   local.get $10
   local.get $0
   f64.sub
   local.get $3
   f64.sub
   local.get $20
   f64.sub
   f64.sub
  end
  local.set $3
  local.get $1
  local.get $1
  i64.reinterpret_f64
  i64.const -4294967296
  i64.and
  f64.reinterpret_i64
  local.tee $0
  f64.sub
  local.get $10
  f64.mul
  local.get $1
  local.get $3
  f64.mul
  f64.add
  local.tee $1
  local.get $0
  local.get $10
  f64.mul
  local.tee $2
  f64.add
  local.tee $0
  i64.reinterpret_f64
  local.tee $16
  i32.wrap_i64
  local.set $5
  block $folding-inner1
   block $folding-inner0
    local.get $16
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    local.tee $12
    i32.const 1083179008
    i32.ge_s
    if
     local.get $12
     i32.const 1083179008
     i32.sub
     local.get $5
     i32.or
     local.get $1
     f64.const 8.008566259537294e-17
     f64.add
     local.get $0
     local.get $2
     f64.sub
     f64.gt
     i32.or
     br_if $folding-inner0
    else
     local.get $12
     i32.const 2147483647
     i32.and
     i32.const 1083231232
     i32.ge_s
     if
      local.get $12
      i32.const -1064252416
      i32.sub
      local.get $5
      i32.or
      local.get $1
      local.get $0
      local.get $2
      f64.sub
      f64.le
      i32.or
      br_if $folding-inner1
     end
    end
    local.get $12
    i32.const 2147483647
    i32.and
    local.tee $13
    i32.const 20
    i32.shr_s
    i32.const 1023
    i32.sub
    local.set $5
    i32.const 0
    local.set $6
    local.get $13
    i32.const 1071644672
    i32.gt_s
    if
     i32.const 1048576
     local.get $5
     i32.const 1
     i32.add
     i32.shr_s
     local.get $12
     i32.add
     local.tee $13
     i32.const 2147483647
     i32.and
     i32.const 20
     i32.shr_s
     i32.const 1023
     i32.sub
     local.set $5
     i32.const 1048575
     local.get $5
     i32.shr_s
     i32.const -1
     i32.xor
     local.get $13
     i32.and
     i64.extend_i32_s
     i64.const 32
     i64.shl
     f64.reinterpret_i64
     local.set $0
     local.get $13
     i32.const 1048575
     i32.and
     i32.const 1048576
     i32.or
     i32.const 20
     local.get $5
     i32.sub
     i32.shr_s
     local.set $6
     i32.const 0
     local.get $6
     i32.sub
     local.get $6
     local.get $12
     i32.const 0
     i32.lt_s
     select
     local.set $6
     local.get $2
     local.get $0
     f64.sub
     local.set $2
    end
    local.get $1
    local.get $2
    f64.add
    i64.reinterpret_f64
    i64.const -4294967296
    i64.and
    f64.reinterpret_i64
    local.tee $0
    f64.const 0.6931471824645996
    f64.mul
    local.tee $3
    local.get $1
    local.get $0
    local.get $2
    f64.sub
    f64.sub
    f64.const 0.6931471805599453
    f64.mul
    local.get $0
    f64.const -1.904654299957768e-09
    f64.mul
    f64.add
    local.tee $1
    f64.add
    local.tee $2
    local.get $2
    f64.mul
    local.set $0
    local.get $7
    f64.const 1
    local.get $2
    local.get $2
    local.get $0
    f64.const 0.16666666666666602
    local.get $0
    f64.const -2.7777777777015593e-03
    local.get $0
    f64.const 6.613756321437934e-05
    local.get $0
    f64.const -1.6533902205465252e-06
    local.get $0
    f64.const 4.1381367970572385e-08
    f64.mul
    f64.add
    f64.mul
    f64.add
    f64.mul
    f64.add
    f64.mul
    f64.add
    f64.mul
    f64.sub
    local.tee $0
    f64.mul
    local.get $0
    f64.const 2
    f64.sub
    f64.div
    local.get $1
    local.get $2
    local.get $3
    f64.sub
    f64.sub
    local.tee $0
    local.get $2
    local.get $0
    f64.mul
    f64.add
    f64.sub
    local.get $2
    f64.sub
    f64.sub
    local.tee $0
    i64.reinterpret_f64
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    local.get $6
    i32.const 20
    i32.shl
    i32.add
    local.tee $5
    i32.const 20
    i32.shr_s
    i32.const 0
    i32.le_s
    if (result f64)
     local.get $0
     local.get $6
     call $~lib/math/NativeMath.scalbn
    else
     local.get $0
     i64.reinterpret_f64
     i64.const 4294967295
     i64.and
     local.get $5
     i64.extend_i32_s
     i64.const 32
     i64.shl
     i64.or
     f64.reinterpret_i64
    end
    f64.mul
    return
   end
   local.get $7
   f64.const 1.e+300
   f64.mul
   f64.const 1.e+300
   f64.mul
   return
  end
  local.get $7
  f64.const 1e-300
  f64.mul
  f64.const 1e-300
  f64.mul
 )
 (func $~lib/array/Array<f64>#__get (; 37 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 16552
   i32.const 16712
   i32.const 92
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  f64.load
 )
 (func $assembly/index/interpQ (; 38 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  (local $8 f64)
  (local $9 i32)
  (local $10 f64)
  (local $11 i32)
  (local $12 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  i32.const 2
  i32.const 4
  i32.const 16872
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $9
  call $~lib/rt/pure/__retain
  local.set $6
  loop $loop|0
   local.get $4
   local.get $3
   i32.const 255
   i32.and
   i32.ge_u
   i32.eqz
   if
    f64.const 1
    local.get $4
    f64.convert_i32_u
    local.get $3
    f64.convert_i32_u
    f64.const 1
    f64.sub
    f64.div
    local.tee $5
    f64.sub
    local.tee $10
    f64.const 2
    call $~lib/math/NativeMath.pow
    local.set $7
    local.get $5
    f64.const 2
    call $~lib/math/NativeMath.pow
    local.set $8
    i32.const 2
    i32.const 3
    i32.const 3
    i32.const 0
    call $~lib/rt/__allocArray
    local.tee $11
    i32.load offset=4
    local.tee $12
    local.get $7
    local.get $0
    i32.const 0
    call $~lib/array/Array<f64>#__get
    f64.mul
    f64.const 2
    local.get $10
    f64.mul
    local.get $5
    f64.mul
    local.tee $5
    local.get $1
    i32.const 0
    call $~lib/array/Array<f64>#__get
    f64.mul
    f64.add
    local.get $8
    local.get $2
    i32.const 0
    call $~lib/array/Array<f64>#__get
    f64.mul
    f64.add
    f64.store
    local.get $12
    local.get $7
    local.get $0
    i32.const 1
    call $~lib/array/Array<f64>#__get
    f64.mul
    local.get $5
    local.get $1
    i32.const 1
    call $~lib/array/Array<f64>#__get
    f64.mul
    f64.add
    local.get $8
    local.get $2
    i32.const 1
    call $~lib/array/Array<f64>#__get
    f64.mul
    f64.add
    f64.store offset=8
    local.get $6
    local.get $11
    call $~lib/array/Array<~lib/array/Array<f64>>#push
    drop
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
  end
  local.get $9
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $6
 )
 (func $assembly/index/interpC (; 39 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  (local $8 f64)
  (local $9 i32)
  (local $10 f64)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 f64)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  i32.const 2
  i32.const 4
  i32.const 16888
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $11
  call $~lib/rt/pure/__retain
  local.set $9
  loop $loop|0
   local.get $6
   local.get $4
   i32.const 255
   i32.and
   i32.ge_u
   i32.eqz
   if
    f64.const 1
    local.get $6
    f64.convert_i32_u
    local.get $4
    f64.convert_i32_u
    f64.const 1
    f64.sub
    f64.div
    local.tee $5
    f64.sub
    local.tee $7
    f64.const 2
    call $~lib/math/NativeMath.pow
    local.set $8
    local.get $5
    f64.const 2
    call $~lib/math/NativeMath.pow
    local.set $10
    i32.const 2
    i32.const 3
    i32.const 3
    i32.const 0
    call $~lib/rt/__allocArray
    local.tee $12
    i32.load offset=4
    local.tee $13
    local.get $8
    local.get $7
    f64.mul
    local.tee $14
    local.get $0
    i32.const 0
    call $~lib/array/Array<f64>#__get
    f64.mul
    f64.const 3
    local.get $8
    f64.mul
    local.get $5
    f64.mul
    local.tee $8
    local.get $1
    i32.const 0
    call $~lib/array/Array<f64>#__get
    f64.mul
    f64.add
    f64.const 3
    local.get $7
    f64.mul
    local.get $10
    f64.mul
    local.tee $7
    local.get $2
    i32.const 0
    call $~lib/array/Array<f64>#__get
    f64.mul
    f64.add
    local.get $10
    local.get $5
    f64.mul
    local.tee $5
    local.get $3
    i32.const 0
    call $~lib/array/Array<f64>#__get
    f64.mul
    f64.add
    f64.store
    local.get $13
    local.get $14
    local.get $0
    i32.const 1
    call $~lib/array/Array<f64>#__get
    f64.mul
    local.get $8
    local.get $1
    i32.const 1
    call $~lib/array/Array<f64>#__get
    f64.mul
    f64.add
    local.get $7
    local.get $2
    i32.const 1
    call $~lib/array/Array<f64>#__get
    f64.mul
    f64.add
    local.get $5
    local.get $3
    i32.const 1
    call $~lib/array/Array<f64>#__get
    f64.mul
    f64.add
    f64.store offset=8
    local.get $9
    local.get $12
    call $~lib/array/Array<~lib/array/Array<f64>>#push
    drop
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|0
   end
  end
  local.get $11
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $assembly/index/isVertexEqual (; 40 ;) (type $FUNCSIG$iiid) (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.get $1
  i32.const 0
  call $~lib/array/Array<f64>#__get
  f64.eq
  if (result i32)
   local.get $0
   i32.const 1
   call $~lib/array/Array<f64>#__get
   local.get $1
   i32.const 1
   call $~lib/array/Array<f64>#__get
   f64.eq
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   local.get $0
   i32.const 0
   call $~lib/array/Array<f64>#__get
   local.get $1
   i32.const 0
   call $~lib/array/Array<f64>#__get
   f64.sub
   f64.const 2
   call $~lib/math/NativeMath.pow
   local.get $0
   i32.const 1
   call $~lib/array/Array<f64>#__get
   local.get $1
   i32.const 1
   call $~lib/array/Array<f64>#__get
   f64.sub
   f64.const 2
   call $~lib/math/NativeMath.pow
   f64.add
   local.get $2
   f64.const 2
   call $~lib/math/NativeMath.pow
   f64.le
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $assembly/index/dedup (; 41 ;) (type $FUNCSIG$iid) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 1
  i32.const 2
  i32.const 4
  i32.const 0
  call $~lib/rt/__allocArray
  local.tee $2
  i32.load offset=4
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
  local.tee $6
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $0
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
  local.tee $7
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
  local.tee $8
  local.get $1
  call $assembly/index/isVertexEqual
  if (result i32)
   local.get $0
   i32.load offset=12
   i32.const 1
   i32.sub
  else
   local.get $0
   i32.load offset=12
  end
  local.set $9
  i32.const 1
  local.set $4
  i32.const 0
  local.set $2
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
  local.set $3
  loop $continue|0
   local.get $4
   local.get $9
   i32.lt_u
   if
    local.get $0
    local.get $4
    call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
    local.get $2
    call $~lib/rt/pure/__release
    local.tee $2
    local.get $3
    local.get $1
    call $assembly/index/isVertexEqual
    i32.eqz
    if
     local.get $5
     local.get $2
     call $~lib/array/Array<~lib/array/Array<f64>>#push
     drop
     local.get $2
     local.get $3
     i32.ne
     if
      local.get $2
      call $~lib/rt/pure/__retain
      drop
      local.get $3
      call $~lib/rt/pure/__release
     end
     local.get $2
     local.set $3
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $continue|0
   end
  end
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $assembly/index/tinystep (; 42 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  i32.const 1
  call $~lib/array/Array<f64>#__get
  local.get $0
  i32.const 1
  call $~lib/array/Array<f64>#__get
  f64.sub
  f64.const 2
  call $~lib/math/NativeMath.pow
  local.get $1
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.get $0
  i32.const 0
  call $~lib/array/Array<f64>#__get
  f64.sub
  f64.const 2
  call $~lib/math/NativeMath.pow
  f64.add
  f64.const 0.5
  call $~lib/math/NativeMath.pow
  local.set $3
  i32.const 2
  i32.const 3
  i32.const 3
  i32.const 0
  call $~lib/rt/__allocArray
  local.tee $2
  i32.load offset=4
  local.tee $4
  local.get $1
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.get $0
  i32.const 0
  call $~lib/array/Array<f64>#__get
  f64.sub
  local.get $3
  f64.div
  f64.const 0.001
  f64.mul
  local.get $0
  i32.const 0
  call $~lib/array/Array<f64>#__get
  f64.add
  f64.store
  local.get $4
  local.get $1
  i32.const 1
  call $~lib/array/Array<f64>#__get
  local.get $0
  i32.const 1
  call $~lib/array/Array<f64>#__get
  f64.sub
  local.get $3
  f64.div
  f64.const 0.001
  f64.mul
  local.get $0
  i32.const 1
  call $~lib/array/Array<f64>#__get
  f64.add
  f64.store offset=8
  local.get $2
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $assembly/index/pickAPoint (; 43 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
  local.tee $10
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.set $8
  i32.const 1
  local.set $1
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
  local.set $6
  loop $continue|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
    local.get $6
    call $~lib/rt/pure/__release
    local.tee $6
    i32.const 0
    call $~lib/array/Array<f64>#__get
    local.get $8
    f64.gt
    if
     local.get $6
     i32.const 0
     call $~lib/array/Array<f64>#__get
     local.set $8
     local.get $1
     local.set $3
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
  local.set $5
  local.get $0
  local.get $3
  i32.const 1
  i32.sub
  local.get $2
  i32.const 1
  i32.sub
  local.get $3
  select
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
  local.set $9
  local.get $5
  local.get $0
  local.get $3
  i32.const 1
  i32.add
  local.get $2
  i32.rem_s
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
  local.tee $1
  call $assembly/index/tinystep
  local.set $7
  local.get $5
  local.get $9
  call $assembly/index/tinystep
  local.set $2
  i32.const 2
  i32.const 3
  i32.const 3
  i32.const 0
  call $~lib/rt/__allocArray
  local.tee $3
  i32.load offset=4
  local.tee $4
  local.get $7
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.get $2
  i32.const 0
  call $~lib/array/Array<f64>#__get
  f64.add
  local.get $5
  i32.const 0
  call $~lib/array/Array<f64>#__get
  f64.add
  f64.const 3
  f64.div
  f64.store
  local.get $4
  local.get $7
  i32.const 1
  call $~lib/array/Array<f64>#__get
  local.get $2
  i32.const 1
  call $~lib/array/Array<f64>#__get
  f64.add
  local.get $5
  i32.const 1
  call $~lib/array/Array<f64>#__get
  f64.add
  f64.const 3
  f64.div
  f64.store offset=8
  local.get $3
  call $~lib/rt/pure/__retain
  local.get $10
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $assembly/index/windingOfTwoLines (; 44 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.get $0
  i32.const 0
  call $~lib/array/Array<f64>#__get
  f64.sub
  local.get $2
  i32.const 1
  call $~lib/array/Array<f64>#__get
  local.get $0
  i32.const 1
  call $~lib/array/Array<f64>#__get
  f64.sub
  f64.mul
  local.get $1
  i32.const 1
  call $~lib/array/Array<f64>#__get
  local.get $0
  i32.const 1
  call $~lib/array/Array<f64>#__get
  f64.sub
  local.get $2
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.get $0
  i32.const 0
  call $~lib/array/Array<f64>#__get
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
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $assembly/index/isLinesIntersect (; 45 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  local.get $2
  call $assembly/index/windingOfTwoLines
  local.get $0
  local.get $1
  local.get $3
  call $assembly/index/windingOfTwoLines
  i32.ne
  if (result i32)
   local.get $2
   local.get $3
   local.get $0
   call $assembly/index/windingOfTwoLines
   local.get $2
   local.get $3
   local.get $1
   call $assembly/index/windingOfTwoLines
   i32.ne
  else
   i32.const 0
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $assembly/index/isHole_oddeven (; 46 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $assembly/index/pickAPoint
  local.set $6
  i32.const 2
  i32.const 3
  i32.const 3
  i32.const 0
  call $~lib/rt/__allocArray
  local.tee $2
  i32.load offset=4
  local.tee $4
  f64.const 100
  f64.store
  local.get $4
  local.get $6
  i32.const 1
  call $~lib/array/Array<f64>#__get
  f64.store offset=8
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $9
  i32.const 0
  local.set $2
  i32.const 0
  local.set $4
  loop $loop|0
   local.get $7
   local.get $1
   i32.load offset=12
   i32.lt_s
   if
    local.get $1
    local.get $7
    call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
    local.get $2
    call $~lib/rt/pure/__release
    local.set $2
    i32.const 0
    local.set $5
    loop $loop|1
     local.get $5
     local.get $2
     i32.load offset=12
     i32.lt_s
     if
      local.get $2
      local.get $5
      call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
      local.get $4
      call $~lib/rt/pure/__release
      local.set $4
      local.get $2
      local.get $2
      i32.load offset=12
      i32.const 1
      i32.sub
      local.get $5
      i32.eq
      if (result i32)
       i32.const 0
      else
       local.get $5
       i32.const 1
       i32.add
      end
      call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
      local.set $3
      local.get $10
      call $~lib/rt/pure/__release
      local.get $6
      local.get $9
      local.get $4
      local.get $3
      local.tee $10
      call $assembly/index/isLinesIntersect
      if
       local.get $8
       i32.const 1
       i32.add
       local.set $8
      end
      local.get $5
      i32.const 1
      i32.add
      local.set $5
      br $loop|1
     end
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|0
   end
  end
  local.get $8
  i32.const 2
  i32.rem_s
  i32.eqz
  local.get $6
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $assembly/index/isHole_nonzero (; 47 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $assembly/index/pickAPoint
  local.set $6
  i32.const 2
  i32.const 3
  i32.const 3
  i32.const 0
  call $~lib/rt/__allocArray
  local.tee $2
  i32.load offset=4
  local.tee $3
  f64.const 100
  f64.store
  local.get $3
  local.get $6
  i32.const 1
  call $~lib/array/Array<f64>#__get
  f64.store offset=8
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $10
  i32.const 0
  local.set $3
  i32.const 0
  local.set $2
  loop $loop|0
   local.get $7
   local.get $1
   i32.load offset=12
   i32.lt_s
   if
    local.get $1
    local.get $7
    call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
    local.get $2
    call $~lib/rt/pure/__release
    local.set $2
    i32.const 0
    local.set $5
    loop $loop|1
     local.get $5
     local.get $2
     i32.load offset=12
     i32.lt_s
     if
      local.get $2
      local.get $5
      call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
      local.get $3
      call $~lib/rt/pure/__release
      local.set $3
      local.get $2
      local.get $2
      i32.load offset=12
      i32.const 1
      i32.sub
      local.get $5
      i32.eq
      if (result i32)
       i32.const 0
      else
       local.get $5
       i32.const 1
       i32.add
      end
      call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
      local.set $4
      local.get $8
      call $~lib/rt/pure/__release
      local.get $6
      local.get $10
      local.get $3
      local.get $4
      local.tee $8
      call $assembly/index/isLinesIntersect
      if
       local.get $6
       local.get $3
       local.get $8
       call $assembly/index/windingOfTwoLines
       local.get $9
       i32.add
       local.set $9
      end
      local.get $5
      i32.const 1
      i32.add
      local.set $5
      br $loop|1
     end
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|0
   end
  end
  local.get $9
  i32.const 2
  i32.rem_s
  i32.eqz
  local.get $6
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $assembly/index/boundingBoxOf (; 48 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  f64.const inf
  local.set $6
  f64.const inf
  local.set $7
  f64.const -inf
  local.set $4
  f64.const -inf
  local.set $5
  loop $loop|0
   local.get $2
   local.get $0
   i32.load offset=12
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
    local.get $1
    call $~lib/rt/pure/__release
    local.tee $1
    i32.const 0
    call $~lib/array/Array<f64>#__get
    local.get $6
    f64.lt
    if
     local.get $1
     i32.const 0
     call $~lib/array/Array<f64>#__get
     local.set $6
    else
     local.get $1
     i32.const 0
     call $~lib/array/Array<f64>#__get
     local.get $4
     f64.gt
     if
      local.get $1
      i32.const 0
      call $~lib/array/Array<f64>#__get
      local.set $4
     end
    end
    local.get $1
    i32.const 1
    call $~lib/array/Array<f64>#__get
    local.get $7
    f64.lt
    if
     local.get $1
     i32.const 1
     call $~lib/array/Array<f64>#__get
     local.set $7
    else
     local.get $1
     i32.const 1
     call $~lib/array/Array<f64>#__get
     local.get $5
     f64.gt
     if
      local.get $1
      i32.const 1
      call $~lib/array/Array<f64>#__get
      local.set $5
     end
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
  i32.const 4
  i32.const 3
  i32.const 3
  i32.const 0
  call $~lib/rt/__allocArray
  local.tee $3
  i32.load offset=4
  local.tee $2
  local.get $6
  f64.store
  local.get $2
  local.get $7
  f64.store offset=8
  local.get $2
  local.get $4
  f64.store offset=16
  local.get $2
  local.get $5
  f64.store offset=24
  local.get $3
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $assembly/index/isPointInsidePolygon (; 49 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  i32.const 2
  i32.const 3
  i32.const 3
  i32.const 0
  call $~lib/rt/__allocArray
  local.tee $2
  i32.load offset=4
  local.tee $3
  f64.const 100
  f64.store
  local.get $3
  local.get $0
  i32.const 1
  call $~lib/array/Array<f64>#__get
  f64.store offset=8
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $7
  i32.const 0
  local.set $3
  i32.const 0
  local.set $2
  loop $loop|0
   local.get $4
   local.get $1
   i32.load offset=12
   i32.lt_s
   if
    local.get $1
    local.get $4
    call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
    local.get $2
    call $~lib/rt/pure/__release
    local.set $2
    local.get $1
    local.get $1
    i32.load offset=12
    i32.const 1
    i32.sub
    local.get $4
    i32.eq
    if (result i32)
     i32.const 0
    else
     local.get $4
     i32.const 1
     i32.add
    end
    call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
    local.set $5
    local.get $3
    call $~lib/rt/pure/__release
    local.get $0
    local.get $7
    local.get $2
    local.get $5
    local.tee $3
    call $assembly/index/isLinesIntersect
    if
     local.get $0
     local.get $2
     local.get $3
     call $assembly/index/windingOfTwoLines
     local.get $6
     i32.add
     local.set $6
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
  end
  local.get $6
  i32.const 2
  i32.rem_s
  i32.const 0
  i32.ne
  local.get $7
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $assembly/index/isPolygonInsidePolygon (; 50 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $assembly/index/boundingBoxOf
  local.set $2
  local.get $1
  call $assembly/index/boundingBoxOf
  local.set $3
  local.get $2
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.get $3
  i32.const 0
  call $~lib/array/Array<f64>#__get
  f64.lt
  if (result i32)
   local.get $2
   i32.const 2
   call $~lib/array/Array<f64>#__get
   local.get $3
   i32.const 0
   call $~lib/array/Array<f64>#__get
   f64.lt
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   local.get $2
   i32.const 0
   call $~lib/array/Array<f64>#__get
   local.get $3
   i32.const 2
   call $~lib/array/Array<f64>#__get
   f64.gt
   if (result i32)
    local.get $2
    i32.const 2
    call $~lib/array/Array<f64>#__get
    local.get $3
    i32.const 2
    call $~lib/array/Array<f64>#__get
    f64.gt
   else
    i32.const 0
   end
  end
  if (result i32)
   i32.const 1
  else
   local.get $2
   i32.const 1
   call $~lib/array/Array<f64>#__get
   local.get $3
   i32.const 1
   call $~lib/array/Array<f64>#__get
   f64.lt
   if (result i32)
    local.get $2
    i32.const 3
    call $~lib/array/Array<f64>#__get
    local.get $3
    i32.const 1
    call $~lib/array/Array<f64>#__get
    f64.lt
   else
    i32.const 0
   end
  end
  if (result i32)
   i32.const 1
  else
   local.get $2
   i32.const 1
   call $~lib/array/Array<f64>#__get
   local.get $3
   i32.const 3
   call $~lib/array/Array<f64>#__get
   f64.gt
   if (result i32)
    local.get $2
    i32.const 3
    call $~lib/array/Array<f64>#__get
    local.get $3
    i32.const 3
    call $~lib/array/Array<f64>#__get
    f64.gt
   else
    i32.const 0
   end
  end
  if
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   i32.const 0
   return
  end
  loop $loop|0
   local.get $5
   local.get $0
   i32.load offset=12
   i32.lt_s
   if
    local.get $0
    local.get $5
    call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
    local.set $6
    local.get $0
    local.get $0
    i32.load offset=12
    i32.const 1
    i32.sub
    local.get $5
    i32.eq
    if (result i32)
     i32.const 0
    else
     local.get $5
     i32.const 1
     i32.add
    end
    call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
    local.set $7
    i32.const 0
    local.set $4
    loop $loop|1
     local.get $4
     local.get $1
     i32.load offset=12
     i32.lt_s
     if
      local.get $6
      local.get $7
      local.get $1
      local.get $4
      call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
      local.tee $8
      local.get $1
      local.get $1
      i32.load offset=12
      i32.const 1
      i32.sub
      local.get $4
      i32.eq
      if (result i32)
       i32.const 0
      else
       local.get $4
       i32.const 1
       i32.add
      end
      call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
      local.tee $9
      call $assembly/index/isLinesIntersect
      if
       local.get $0
       call $~lib/rt/pure/__release
       local.get $1
       call $~lib/rt/pure/__release
       local.get $2
       call $~lib/rt/pure/__release
       local.get $3
       call $~lib/rt/pure/__release
       local.get $6
       call $~lib/rt/pure/__release
       local.get $7
       call $~lib/rt/pure/__release
       local.get $8
       call $~lib/rt/pure/__release
       local.get $9
       call $~lib/rt/pure/__release
       i32.const 0
       return
      else
       local.get $4
       i32.const 1
       i32.add
       local.set $4
       local.get $8
       call $~lib/rt/pure/__release
       local.get $9
       call $~lib/rt/pure/__release
       br $loop|1
      end
      unreachable
     end
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    local.get $6
    call $~lib/rt/pure/__release
    local.get $7
    call $~lib/rt/pure/__release
    br $loop|0
   end
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
  local.tee $6
  local.get $1
  call $assembly/index/isPointInsidePolygon
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#indexOf (; 51 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#splice (; 52 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  i32.const 2
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
 (func $assembly/index/linkUp (; 53 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  loop $loop|0
   local.get $10
   local.get $0
   i32.load offset=12
   i32.lt_s
   if
    local.get $0
    local.get $10
    call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
    local.get $8
    call $~lib/rt/pure/__release
    local.set $8
    i32.const 0
    i32.const 2
    i32.const 5
    i32.const 16952
    call $~lib/rt/__allocArray
    call $~lib/rt/pure/__retain
    local.tee $11
    call $~lib/rt/pure/__retain
    local.set $4
    i32.const 0
    local.set $5
    loop $loop|1
     local.get $5
     local.get $1
     i32.load offset=12
     i32.lt_s
     if
      local.get $1
      local.get $5
      call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
      local.get $7
      call $~lib/rt/pure/__release
      local.tee $7
      local.get $8
      call $assembly/index/isPolygonInsidePolygon
      if
       i32.const 0
       local.set $3
       i32.const 0
       local.set $6
       loop $loop|2
        block $break|2
         local.get $6
         local.get $4
         i32.load offset=12
         i32.ge_s
         br_if $break|2
         local.get $7
         local.get $4
         local.get $6
         call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
         local.tee $9
         call $assembly/index/isPolygonInsidePolygon
         if
          i32.const 1
          local.set $3
          local.get $9
          call $~lib/rt/pure/__release
          br $break|2
         end
         local.get $9
         local.get $7
         call $assembly/index/isPolygonInsidePolygon
         if
          local.get $4
          local.get $4
          local.get $9
          call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#indexOf
          call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#splice
          call $~lib/rt/pure/__release
         end
         local.get $6
         i32.const 1
         i32.add
         local.set $6
         local.get $9
         call $~lib/rt/pure/__release
         br $loop|2
        end
       end
       local.get $3
       i32.eqz
       if
        local.get $4
        local.get $7
        call $~lib/array/Array<~lib/array/Array<f64>>#push
        drop
       end
      end
      local.get $5
      i32.const 1
      i32.add
      local.set $5
      br $loop|1
     end
    end
    i32.const 1
    i32.const 2
    i32.const 5
    i32.const 0
    call $~lib/rt/__allocArray
    local.tee $3
    i32.load offset=4
    local.get $8
    call $~lib/rt/pure/__retain
    i32.store
    local.get $3
    call $~lib/rt/pure/__retain
    local.set $5
    i32.const 0
    local.set $3
    loop $loop|3
     local.get $3
     local.get $4
     i32.load offset=12
     i32.lt_s
     if
      local.get $5
      local.get $4
      local.get $3
      call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
      local.tee $6
      call $~lib/array/Array<~lib/array/Array<f64>>#push
      drop
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      local.get $6
      call $~lib/rt/pure/__release
      br $loop|3
     end
    end
    local.get $2
    local.get $5
    call $~lib/array/Array<~lib/array/Array<f64>>#push
    drop
    local.get $10
    i32.const 1
    i32.add
    local.set $10
    local.get $11
    call $~lib/rt/pure/__release
    local.get $4
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    br $loop|0
   end
  end
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $assembly/index/compile (; 54 ;) (type $FUNCSIG$iiiid) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f64) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 f64)
  (local $11 f64)
  (local $12 i32)
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  (local $16 f64)
  (local $17 i32)
  (local $18 f64)
  (local $19 f64)
  (local $20 i32)
  local.get $2
  i32.const 2
  i32.add
  local.set $12
  i32.const 0
  i32.const 2
  i32.const 5
  i32.const 16648
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $17
  call $~lib/rt/pure/__retain
  local.set $8
  i32.const 0
  local.set $2
  loop $continue|0
   local.get $2
   local.get $0
   i32.lt_u
   if
    local.get $2
    i32.load8_u
    local.set $4
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $4
    i32.const 77
    i32.eq
    if
     local.get $2
     f64.load
     local.set $10
     local.get $2
     i32.const 8
     i32.add
     local.tee $2
     f64.load
     local.set $11
     local.get $2
     i32.const 8
     i32.add
     local.set $2
     i32.const 1
     i32.const 2
     i32.const 4
     i32.const 0
     call $~lib/rt/__allocArray
     local.tee $4
     i32.load offset=4
     i32.const 2
     i32.const 3
     i32.const 3
     i32.const 0
     call $~lib/rt/__allocArray
     local.tee $6
     i32.load offset=4
     local.tee $9
     local.get $10
     f64.store
     local.get $9
     local.get $11
     f64.store offset=8
     local.get $6
     call $~lib/rt/pure/__retain
     i32.store
     local.get $8
     local.get $7
     local.get $4
     call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__set
     br $continue|0
    end
    local.get $4
    i32.const 76
    i32.eq
    if
     local.get $2
     f64.load
     local.set $10
     local.get $2
     i32.const 8
     i32.add
     local.tee $2
     f64.load
     local.set $11
     local.get $2
     i32.const 8
     i32.add
     local.set $2
     local.get $8
     local.get $7
     call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
     local.set $4
     i32.const 2
     i32.const 3
     i32.const 3
     i32.const 0
     call $~lib/rt/__allocArray
     local.tee $5
     i32.load offset=4
     local.tee $6
     local.get $10
     f64.store
     local.get $6
     local.get $11
     f64.store offset=8
     local.get $4
     local.get $5
     call $~lib/array/Array<~lib/array/Array<f64>>#push
     drop
     local.get $4
     call $~lib/rt/pure/__release
     br $continue|0
    end
    local.get $4
    i32.const 81
    i32.eq
    if
     local.get $2
     f64.load
     local.set $10
     local.get $2
     i32.const 8
     i32.add
     local.tee $2
     f64.load
     local.set $11
     local.get $2
     i32.const 8
     i32.add
     local.tee $2
     f64.load
     local.set $13
     local.get $2
     i32.const 8
     i32.add
     local.tee $2
     f64.load
     local.set $14
     local.get $2
     i32.const 8
     i32.add
     local.tee $2
     f64.load
     local.set $15
     local.get $2
     i32.const 8
     i32.add
     local.tee $2
     f64.load
     local.set $16
     local.get $2
     i32.const 8
     i32.add
     local.set $2
     i32.const 2
     i32.const 3
     i32.const 3
     i32.const 0
     call $~lib/rt/__allocArray
     local.tee $4
     i32.load offset=4
     local.tee $5
     local.get $10
     f64.store
     local.get $5
     local.get $11
     f64.store offset=8
     i32.const 2
     i32.const 3
     i32.const 3
     i32.const 0
     call $~lib/rt/__allocArray
     local.tee $5
     i32.load offset=4
     local.tee $6
     local.get $13
     f64.store
     local.get $6
     local.get $14
     f64.store offset=8
     i32.const 2
     i32.const 3
     i32.const 3
     i32.const 0
     call $~lib/rt/__allocArray
     local.tee $6
     i32.load offset=4
     local.tee $9
     local.get $15
     f64.store
     local.get $9
     local.get $16
     f64.store offset=8
     local.get $4
     local.get $5
     local.get $6
     local.get $12
     call $assembly/index/interpQ
     local.set $5
     i32.const 1
     local.set $4
     loop $loop|1
      local.get $4
      local.get $5
      i32.load offset=12
      i32.lt_s
      if
       local.get $8
       local.get $7
       call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
       local.tee $6
       local.get $5
       local.get $4
       call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
       local.tee $9
       call $~lib/array/Array<~lib/array/Array<f64>>#push
       drop
       local.get $4
       i32.const 1
       i32.add
       local.set $4
       local.get $6
       call $~lib/rt/pure/__release
       local.get $9
       call $~lib/rt/pure/__release
       br $loop|1
      end
     end
     local.get $5
     call $~lib/rt/pure/__release
     br $continue|0
    end
    local.get $4
    i32.const 67
    i32.eq
    if
     local.get $2
     f64.load
     local.set $10
     local.get $2
     i32.const 8
     i32.add
     local.tee $2
     f64.load
     local.set $11
     local.get $2
     i32.const 8
     i32.add
     local.tee $2
     f64.load
     local.set $13
     local.get $2
     i32.const 8
     i32.add
     local.tee $2
     f64.load
     local.set $14
     local.get $2
     i32.const 8
     i32.add
     local.tee $2
     f64.load
     local.set $15
     local.get $2
     i32.const 8
     i32.add
     local.tee $2
     f64.load
     local.set $16
     local.get $2
     i32.const 8
     i32.add
     local.tee $2
     f64.load
     local.set $18
     local.get $2
     i32.const 8
     i32.add
     local.tee $2
     f64.load
     local.set $19
     local.get $2
     i32.const 8
     i32.add
     local.set $2
     i32.const 2
     i32.const 3
     i32.const 3
     i32.const 0
     call $~lib/rt/__allocArray
     local.tee $4
     i32.load offset=4
     local.tee $5
     local.get $10
     f64.store
     local.get $5
     local.get $11
     f64.store offset=8
     i32.const 2
     i32.const 3
     i32.const 3
     i32.const 0
     call $~lib/rt/__allocArray
     local.tee $5
     i32.load offset=4
     local.tee $6
     local.get $13
     f64.store
     local.get $6
     local.get $14
     f64.store offset=8
     i32.const 2
     i32.const 3
     i32.const 3
     i32.const 0
     call $~lib/rt/__allocArray
     local.tee $6
     i32.load offset=4
     local.tee $9
     local.get $15
     f64.store
     local.get $9
     local.get $16
     f64.store offset=8
     i32.const 2
     i32.const 3
     i32.const 3
     i32.const 0
     call $~lib/rt/__allocArray
     local.tee $9
     i32.load offset=4
     local.tee $20
     local.get $18
     f64.store
     local.get $20
     local.get $19
     f64.store offset=8
     local.get $4
     local.get $5
     local.get $6
     local.get $9
     local.get $12
     call $assembly/index/interpC
     local.set $5
     i32.const 1
     local.set $4
     loop $loop|2
      local.get $4
      local.get $5
      i32.load offset=12
      i32.lt_s
      if
       local.get $8
       local.get $7
       call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
       local.tee $6
       local.get $5
       local.get $4
       call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
       local.tee $9
       call $~lib/array/Array<~lib/array/Array<f64>>#push
       drop
       local.get $4
       i32.const 1
       i32.add
       local.set $4
       local.get $6
       call $~lib/rt/pure/__release
       local.get $9
       call $~lib/rt/pure/__release
       br $loop|2
      end
     end
     local.get $5
     call $~lib/rt/pure/__release
     br $continue|0
    end
    local.get $4
    i32.const 90
    i32.ne
    br_if $continue|0
    local.get $8
    local.get $7
    local.get $8
    local.get $7
    call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
    local.tee $4
    local.get $3
    call $assembly/index/dedup
    local.tee $5
    call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__set
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    local.get $4
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    br $continue|0
   end
  end
  i32.const 0
  i32.const 2
  i32.const 5
  i32.const 16904
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $12
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 0
  i32.const 2
  i32.const 5
  i32.const 16920
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $~lib/rt/pure/__retain
  local.set $5
  i32.const 0
  local.set $0
  i32.const 0
  local.set $7
  loop $loop|3
   local.get $7
   local.get $8
   i32.load offset=12
   i32.lt_s
   if
    local.get $8
    local.get $7
    call $~lib/array/Array<~lib/array/Array<~lib/array/Array<f64>>>#__get
    local.get $0
    call $~lib/rt/pure/__release
    local.set $0
    local.get $1
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if (result i32)
     local.get $0
     local.get $8
     call $assembly/index/isHole_oddeven
    else
     local.get $0
     local.get $8
     call $assembly/index/isHole_nonzero
    end
    if (result i32)
     local.get $5
     local.get $0
     call $~lib/array/Array<~lib/array/Array<f64>>#push
    else
     local.get $4
     local.get $0
     call $~lib/array/Array<~lib/array/Array<f64>>#push
    end
    drop
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|3
   end
  end
  local.get $4
  local.get $5
  i32.const 0
  i32.const 2
  i32.const 6
  i32.const 16936
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  call $~lib/rt/pure/__retain
  local.tee $2
  call $assembly/index/linkUp
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/rt/pure/__visit (; 55 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  i32.const 17020
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
        i32.const 16504
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
      i32.const 16504
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
   i32.const 16504
   i32.const 97
   i32.const 24
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/array/Array<~lib/array/Array<f64>>#__visit_impl (; 56 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/rt/__visit_members (; 57 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
        br_table $switch$1$case$2 $switch$1$case$2 $block$4$break $block$4$break $switch$1$case$6 $switch$1$case$7 $switch$1$case$8 $block$4$break $switch$1$default
       end
       return
      end
      local.get $0
      local.get $1
      call $~lib/array/Array<~lib/array/Array<f64>>#__visit_impl
      br $block$4$break
     end
     local.get $0
     local.get $1
     call $~lib/array/Array<~lib/array/Array<f64>>#__visit_impl
     br $block$4$break
    end
    local.get $0
    local.get $1
    call $~lib/array/Array<~lib/array/Array<f64>>#__visit_impl
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
 (func $null (; 58 ;) (type $FUNCSIG$v)
  nop
 )
)
