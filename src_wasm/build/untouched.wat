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
 (type $FUNCSIG$iid (func (param i32 f64) (result i32)))
 (type $FUNCSIG$iiid (func (param i32 i32 f64) (result i32)))
 (type $FUNCSIG$ddd (func (param f64 f64) (result f64)))
 (type $FUNCSIG$iidd (func (param i32 f64 f64) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 2)
 (data (i32.const 65536) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (data (i32.const 65584) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00")
 (data (i32.const 65640) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s\00")
 (data (i32.const 65688) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 65744) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00")
 (data (i32.const 65784) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 65800) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 65848) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 65896) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00")
 (data (i32.const 66008) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 66064) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 66080) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 66096) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 66112) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 66128) "\t\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\93 \00\00\02\00\00\00\93 \00\00\02\00\00\00\93\04\00\00\02\00\00\00\10\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/collectLock (mut i32) (i32.const 0))
 (global $~lib/gc/gc.auto (mut i32) (i32.const 1))
 (global $~lib/rt/pure/ROOTS (mut i32) (i32.const 0))
 (global $~lib/rt/pure/CUR (mut i32) (i32.const 0))
 (global $~lib/rt/pure/END (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $assembly/index/SZ i32 (i32.const 8))
 (global $assembly/index/TINYSTEP f64 (f64.const 0.001))
 (global $assembly/index/FARAWAY f64 (f64.const 1e10))
 (global $~lib/rt/__rtti_base i32 (i32.const 66128))
 (global $~lib/heap/__heap_base i32 (i32.const 66204))
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
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  i32.load
  local.set $2
  local.get $2
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
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $3
  local.get $3
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $3
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
  local.get $3
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $4
   local.get $3
   i32.const 4
   i32.shr_u
   local.set $5
  else
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.set $4
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $5
   local.get $4
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $4
  end
  local.get $4
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $5
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
  i32.load offset=16
  local.set $6
  local.get $1
  i32.load offset=20
  local.set $7
  local.get $6
  if
   local.get $6
   local.get $7
   i32.store offset=20
  end
  local.get $7
  if
   local.get $7
   local.get $6
   i32.store offset=16
  end
  local.get $1
  local.get $0
  local.set $10
  local.get $4
  local.set $9
  local.get $5
  local.set $8
  local.get $10
  local.get $9
  i32.const 4
  i32.shl
  local.get $8
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.set $11
   local.get $4
   local.set $10
   local.get $5
   local.set $9
   local.get $7
   local.set $8
   local.get $11
   local.get $10
   i32.const 4
   i32.shl
   local.get $9
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $8
   i32.store offset=96
   local.get $7
   i32.eqz
   if
    local.get $0
    local.set $9
    local.get $4
    local.set $8
    local.get $9
    local.get $8
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $9
    local.get $0
    local.set $8
    local.get $4
    local.set $11
    local.get $9
    i32.const 1
    local.get $5
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $9
    local.set $10
    local.get $8
    local.get $11
    i32.const 2
    i32.shl
    i32.add
    local.get $10
    i32.store offset=4
    local.get $9
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
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
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
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
  local.set $2
  local.get $2
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
  local.set $3
  local.get $3
  i32.const 16
  i32.add
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $4
  local.get $4
  i32.load
  local.set $5
  local.get $5
  i32.const 1
  i32.and
  if
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $5
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $3
   local.get $3
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $2
    i32.const 3
    i32.and
    local.get $3
    i32.or
    local.tee $2
    i32.store
    local.get $1
    local.set $6
    local.get $6
    i32.const 16
    i32.add
    local.get $6
    i32.load
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    local.set $4
    local.get $4
    i32.load
    local.set $5
   end
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $1
   local.set $6
   local.get $6
   i32.const 4
   i32.sub
   i32.load
   local.set $6
   local.get $6
   i32.load
   local.set $3
   local.get $3
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
   local.get $3
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $7
   local.get $7
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $6
    local.get $3
    i32.const 3
    i32.and
    local.get $7
    i32.or
    local.tee $2
    i32.store
    local.get $6
    local.set $1
   end
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  i32.store
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $8
  local.get $8
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $8
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
  local.get $1
  i32.const 16
  i32.add
  local.get $8
  i32.add
  local.get $4
  i32.eq
  i32.eqz
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
  local.get $8
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $9
   local.get $8
   i32.const 4
   i32.shr_u
   local.set $10
  else
   i32.const 31
   local.get $8
   i32.clz
   i32.sub
   local.set $9
   local.get $8
   local.get $9
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $10
   local.get $9
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $9
  end
  local.get $9
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $10
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
  local.get $0
  local.set $7
  local.get $9
  local.set $3
  local.get $10
  local.set $6
  local.get $7
  local.get $3
  i32.const 4
  i32.shl
  local.get $6
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $11
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $11
  i32.store offset=20
  local.get $11
  if
   local.get $11
   local.get $1
   i32.store offset=16
  end
  local.get $0
  local.set $12
  local.get $9
  local.set $7
  local.get $10
  local.set $3
  local.get $1
  local.set $6
  local.get $12
  local.get $7
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $6
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $9
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.set $13
  local.get $9
  local.set $12
  local.get $0
  local.set $3
  local.get $9
  local.set $6
  local.get $3
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $10
  i32.shl
  i32.or
  local.set $7
  local.get $13
  local.get $12
  i32.const 2
  i32.shl
  i32.add
  local.get $7
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (; 3 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  local.get $2
  i32.le_u
  if (result i32)
   local.get $1
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $2
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
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
  local.set $3
  local.get $3
  i32.load offset=1568
  local.set $4
  i32.const 0
  local.set $5
  local.get $4
  if
   local.get $1
   local.get $4
   i32.const 16
   i32.add
   i32.ge_u
   i32.eqz
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
   local.get $4
   i32.eq
   if
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
    local.get $4
    i32.load
    local.set $5
   else
    nop
   end
  else
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
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
  local.set $6
  local.get $6
  i32.const 48
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $6
  i32.const 16
  i32.const 1
  i32.shl
  i32.sub
  local.set $7
  local.get $1
  local.set $8
  local.get $8
  local.get $7
  i32.const 1
  i32.or
  local.get $5
  i32.const 2
  i32.and
  i32.or
  i32.store
  local.get $8
  i32.const 0
  i32.store offset=16
  local.get $8
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $6
  i32.add
  i32.const 16
  i32.sub
  local.set $4
  local.get $4
  i32.const 0
  i32.const 2
  i32.or
  i32.store
  local.get $0
  local.set $9
  local.get $4
  local.set $3
  local.get $9
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $8
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
 )
 (func $~lib/rt/tlsf/initializeRoot (; 4 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/heap/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $0
  memory.size
  local.set $1
  local.get $0
  i32.const 1572
  i32.add
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $2
  local.get $2
  local.get $1
  i32.gt_s
  if (result i32)
   local.get $2
   local.get $1
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
  local.get $0
  local.set $3
  local.get $3
  i32.const 0
  i32.store
  local.get $3
  local.set $5
  i32.const 0
  local.set $4
  local.get $5
  local.get $4
  i32.store offset=1568
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    i32.const 23
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $3
    local.set $7
    local.get $5
    local.set $6
    i32.const 0
    local.set $4
    local.get $7
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    local.get $4
    i32.store offset=4
    block $break|1
     i32.const 0
     local.set $7
     loop $loop|1
      local.get $7
      i32.const 16
      i32.lt_u
      i32.eqz
      br_if $break|1
      local.get $3
      local.set $9
      local.get $5
      local.set $8
      local.get $7
      local.set $6
      i32.const 0
      local.set $4
      local.get $9
      local.get $8
      i32.const 4
      i32.shl
      local.get $6
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $4
      i32.store offset=96
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $loop|1
     end
     unreachable
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.get $0
  i32.const 1572
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $3
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/prepareSize (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
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
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.tee $1
  i32.const 16
  local.tee $2
  local.get $1
  local.get $2
  i32.gt_u
  select
 )
 (func $~lib/rt/tlsf/searchBlock (; 6 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $2
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $3
  else
   local.get $1
   i32.const 536870904
   i32.lt_u
   if (result i32)
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
   else
    local.get $1
   end
   local.set $4
   i32.const 31
   local.get $4
   i32.clz
   i32.sub
   local.set $2
   local.get $4
   local.get $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $3
   local.get $2
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $2
  end
  local.get $2
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $3
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
  local.get $0
  local.set $5
  local.get $2
  local.set $4
  local.get $5
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 0
  i32.const -1
  i32.xor
  local.get $3
  i32.shl
  i32.and
  local.set $6
  i32.const 0
  local.set $7
  local.get $6
  i32.eqz
  if
   local.get $0
   i32.load
   i32.const 0
   i32.const -1
   i32.xor
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $5
   local.get $5
   i32.eqz
   if
    i32.const 0
    local.set $7
   else
    local.get $5
    i32.ctz
    local.set $2
    local.get $0
    local.set $8
    local.get $2
    local.set $4
    local.get $8
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $6
    local.get $6
    i32.eqz
    if
     i32.const 0
     i32.const 65552
     i32.const 351
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.set $9
    local.get $2
    local.set $8
    local.get $6
    i32.ctz
    local.set $4
    local.get $9
    local.get $8
    i32.const 4
    i32.shl
    local.get $4
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    local.set $7
   end
  else
   local.get $0
   local.set $9
   local.get $2
   local.set $8
   local.get $6
   i32.ctz
   local.set $4
   local.get $9
   local.get $8
   i32.const 4
   i32.shl
   local.get $4
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   local.set $7
  end
  local.get $7
 )
 (func $~lib/rt/pure/markGray (; 7 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.ne
  if
   local.get $0
   local.get $1
   i32.const 1879048192
   i32.const -1
   i32.xor
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
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
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
  i32.const 1879048192
  i32.const -1
  i32.xor
  i32.and
  i32.const 0
  i32.or
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
  local.set $1
  local.get $1
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
    i32.const 1879048192
    i32.const -1
    i32.xor
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
  local.set $1
  local.get $1
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
   i32.const 1879048192
   i32.const -1
   i32.xor
   i32.and
   i32.const 0
   i32.or
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
  local.set $0
  local.get $0
  local.set $1
  block $break|0
   local.get $1
   local.set $2
   global.get $~lib/rt/pure/CUR
   local.set $3
   loop $loop|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    i32.load offset=4
    local.set $5
    local.get $5
    i32.const 1879048192
    i32.and
    i32.const 805306368
    i32.eq
    if (result i32)
     local.get $5
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
     local.get $1
     local.get $4
     i32.store
     local.get $1
     i32.const 4
     i32.add
     local.set $1
    else
     local.get $5
     i32.const 1879048192
     i32.and
     i32.const 0
     i32.eq
     if (result i32)
      local.get $5
      i32.const 268435455
      i32.and
      i32.eqz
     else
      i32.const 0
     end
     if
      global.get $~lib/rt/tlsf/ROOT
      local.get $4
      call $~lib/rt/tlsf/freeBlock
     else
      local.get $4
      local.get $5
      i32.const -2147483648
      i32.const -1
      i32.xor
      i32.and
      i32.store offset=4
     end
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
  local.get $1
  global.set $~lib/rt/pure/CUR
  block $break|1
   local.get $0
   local.set $5
   loop $loop|1
    local.get $5
    local.get $1
    i32.lt_u
    i32.eqz
    br_if $break|1
    local.get $5
    i32.load
    call $~lib/rt/pure/scan
    local.get $5
    i32.const 4
    i32.add
    local.set $5
    br $loop|1
   end
   unreachable
  end
  block $break|2
   local.get $0
   local.set $5
   loop $loop|2
    local.get $5
    local.get $1
    i32.lt_u
    i32.eqz
    br_if $break|2
    local.get $5
    i32.load
    local.set $4
    local.get $4
    local.get $4
    i32.load offset=4
    i32.const -2147483648
    i32.const -1
    i32.xor
    i32.and
    i32.store offset=4
    local.get $4
    call $~lib/rt/pure/collectWhite
    local.get $5
    i32.const 4
    i32.add
    local.set $5
    br $loop|2
   end
   unreachable
  end
  local.get $0
  global.set $~lib/rt/pure/CUR
 )
 (func $~lib/rt/tlsf/growMemory (; 13 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  i32.const 536870904
  i32.lt_u
  if
   local.get $1
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.set $1
  end
  memory.size
  local.set $2
  local.get $1
  i32.const 16
  local.get $2
  i32.const 16
  i32.shl
  i32.const 16
  i32.sub
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  i32.ne
  i32.shl
  i32.add
  local.set $1
  local.get $1
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $4
  local.get $2
  local.tee $3
  local.get $4
  local.tee $5
  local.get $3
  local.get $5
  i32.gt_s
  select
  local.set $6
  local.get $6
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $4
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size
  local.set $7
  local.get $0
  local.get $2
  i32.const 16
  i32.shl
  local.get $7
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (; 14 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 65552
   i32.const 365
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.sub
  local.set $4
  local.get $4
  i32.const 32
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.get $2
   i32.add
   local.set $5
   local.get $5
   local.get $4
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $5
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   i32.store
   local.get $1
   local.set $5
   local.get $5
   i32.const 16
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.get $1
   local.set $5
   local.get $5
   i32.const 16
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.load
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   i32.store
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (; 15 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/tlsf/collectLock
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 65552
   i32.const 486
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.set $2
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/searchBlock
  local.set $3
  local.get $3
  i32.eqz
  if
   global.get $~lib/gc/gc.auto
   if
    i32.const 1
    global.set $~lib/rt/tlsf/collectLock
    call $~lib/rt/pure/__collect
    i32.const 0
    global.set $~lib/rt/tlsf/collectLock
    local.get $0
    local.get $2
    call $~lib/rt/tlsf/searchBlock
    local.set $3
    local.get $3
    i32.eqz
    if
     local.get $0
     local.get $2
     call $~lib/rt/tlsf/growMemory
     local.get $0
     local.get $2
     call $~lib/rt/tlsf/searchBlock
     local.set $3
     local.get $3
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
   else
    local.get $0
    local.get $2
    call $~lib/rt/tlsf/growMemory
    local.get $0
    local.get $2
    call $~lib/rt/tlsf/searchBlock
    local.set $3
    local.get $3
    i32.eqz
    if
     i32.const 0
     i32.const 65552
     i32.const 503
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
   end
  end
  local.get $3
  i32.load
  i32.const -4
  i32.and
  local.get $2
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 65552
   i32.const 506
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $3
  local.get $2
  call $~lib/rt/tlsf/prepareBlock
  local.get $3
 )
 (func $~lib/rt/tlsf/__alloc (; 16 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/tlsf/ROOT
  local.set $2
  local.get $2
  i32.eqz
  if
   call $~lib/rt/tlsf/initializeRoot
   global.get $~lib/rt/tlsf/ROOT
   local.set $2
  end
  local.get $2
  local.get $0
  call $~lib/rt/tlsf/allocateBlock
  local.set $3
  local.get $3
  local.get $1
  i32.store offset=8
  local.get $3
  i32.const 16
  i32.add
 )
 (func $~lib/rt/pure/increment (; 17 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const -268435456
  i32.and
  local.get $1
  i32.const 1
  i32.add
  i32.const -268435456
  i32.and
  i32.eq
  i32.eqz
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
  i32.eqz
  i32.eqz
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
  global.get $~lib/heap/__heap_base
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
  (local $1 i32)
  global.get $~lib/rt/__rtti_base
  local.set $1
  local.get $0
  local.get $1
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
  local.get $1
  i32.const 4
  i32.add
  local.get $0
  i32.const 8
  i32.mul
  i32.add
  i32.load
 )
 (func $~lib/util/memory/memcpy (; 20 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   loop $continue|0
    local.get $2
    if (result i32)
     local.get $1
     i32.const 3
     i32.and
    else
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $continue|0
   end
   unreachable
  end
  local.get $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   block $break|1
    loop $continue|1
     local.get $2
     i32.const 16
     i32.ge_u
     i32.eqz
     br_if $break|1
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
    unreachable
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
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $1
    i32.const 4
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
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
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $5
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $3
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      block $break|3
       loop $continue|3
        local.get $2
        i32.const 17
        i32.ge_u
        i32.eqz
        br_if $break|3
        local.get $1
        i32.const 1
        i32.add
        i32.load
        local.set $4
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 5
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 4
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 9
        i32.add
        i32.load
        local.set $4
        local.get $0
        i32.const 8
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 13
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 12
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
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
       unreachable
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $3
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     block $break|4
      loop $continue|4
       local.get $2
       i32.const 18
       i32.ge_u
       i32.eqz
       br_if $break|4
       local.get $1
       i32.const 2
       i32.add
       i32.load
       local.set $4
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 6
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 4
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 10
       i32.add
       i32.load
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 14
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 12
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
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
      unreachable
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $3
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    block $break|5
     loop $continue|5
      local.get $2
      i32.const 19
      i32.ge_u
      i32.eqz
      br_if $break|5
      local.get $1
      i32.const 3
      i32.add
      i32.load
      local.set $4
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 7
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 4
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 11
      i32.add
      i32.load
      local.set $4
      local.get $0
      i32.const 8
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 15
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 12
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
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
     unreachable
    end
    br $break|2
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (; 21 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $5
   local.get $4
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $4
   local.get $3
   i32.add
   local.get $5
   i32.le_u
   if (result i32)
    i32.const 1
   else
    local.get $5
    local.get $3
    i32.add
    local.get $4
    i32.le_u
   end
   if
    local.get $5
    local.get $4
    local.get $3
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $5
   local.get $4
   i32.lt_u
   if
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|0
      loop $continue|0
       local.get $5
       i32.const 7
       i32.and
       i32.eqz
       br_if $break|0
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $5
       local.tee $6
       i32.const 1
       i32.add
       local.set $5
       local.get $6
       local.get $4
       local.tee $6
       i32.const 1
       i32.add
       local.set $4
       local.get $6
       i32.load8_u
       i32.store8
       br $continue|0
      end
      unreachable
     end
     block $break|1
      loop $continue|1
       local.get $3
       i32.const 8
       i32.ge_u
       i32.eqz
       br_if $break|1
       local.get $5
       local.get $4
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       i32.const 8
       i32.add
       local.set $5
       local.get $4
       i32.const 8
       i32.add
       local.set $4
       br $continue|1
      end
      unreachable
     end
    end
    block $break|2
     loop $continue|2
      local.get $3
      i32.eqz
      br_if $break|2
      local.get $5
      local.tee $6
      i32.const 1
      i32.add
      local.set $5
      local.get $6
      local.get $4
      local.tee $6
      i32.const 1
      i32.add
      local.set $4
      local.get $6
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $continue|2
     end
     unreachable
    end
   else
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|3
      loop $continue|3
       local.get $5
       local.get $3
       i32.add
       i32.const 7
       i32.and
       i32.eqz
       br_if $break|3
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $5
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $continue|3
      end
      unreachable
     end
     block $break|4
      loop $continue|4
       local.get $3
       i32.const 8
       i32.ge_u
       i32.eqz
       br_if $break|4
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       local.get $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i64.load
       i64.store
       br $continue|4
      end
      unreachable
     end
    end
    block $break|5
     loop $continue|5
      local.get $3
      i32.eqz
      br_if $break|5
      local.get $5
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $4
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
     unreachable
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
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
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
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/pure/ROOTS
  local.set $0
  global.get $~lib/rt/pure/CUR
  local.get $0
  i32.sub
  local.set $1
  local.get $1
  i32.const 2
  i32.mul
  local.tee $2
  i32.const 64
  i32.const 2
  i32.shl
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  local.set $4
  local.get $4
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $5
  local.get $5
  local.get $0
  local.get $1
  call $~lib/memory/memory.copy
  local.get $0
  if
   local.get $0
   call $~lib/rt/tlsf/__free
  end
  local.get $5
  global.set $~lib/rt/pure/ROOTS
  local.get $5
  local.get $1
  i32.add
  global.set $~lib/rt/pure/CUR
  local.get $5
  local.get $4
  i32.add
  global.set $~lib/rt/pure/END
 )
 (func $~lib/rt/pure/appendRoot (; 24 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  global.get $~lib/rt/pure/CUR
  local.set $1
  local.get $1
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
  local.set $1
  local.get $1
  i32.const 268435455
  i32.and
  local.set $2
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 65656
   i32.const 115
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.const 16
   i32.add
   i32.const 1
   call $~lib/rt/__visit_members
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
   if
    global.get $~lib/rt/tlsf/ROOT
    local.get $0
    call $~lib/rt/tlsf/freeBlock
   else
    local.get $0
    i32.const -2147483648
    i32.const 0
    i32.or
    i32.const 0
    i32.or
    i32.store offset=4
   end
  else
   local.get $2
   i32.const 0
   i32.gt_u
   i32.eqz
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
   i32.eqz
   if
    local.get $0
    i32.const -2147483648
    i32.const 805306368
    i32.or
    local.get $2
    i32.const 1
    i32.sub
    i32.or
    i32.store offset=4
    local.get $1
    i32.const -2147483648
    i32.and
    i32.eqz
    if
     local.get $0
     call $~lib/rt/pure/appendRoot
    end
   else
    local.get $0
    local.get $1
    i32.const 268435455
    i32.const -1
    i32.xor
    i32.and
    local.get $2
    i32.const 1
    i32.sub
    i32.or
    i32.store offset=4
   end
  end
 )
 (func $~lib/rt/pure/__release (; 26 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/rt/__allocArray (; 27 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 16
  local.get $2
  call $~lib/rt/tlsf/__alloc
  local.set $4
  local.get $0
  local.get $1
  i32.shl
  local.set $5
  local.get $5
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $4
  local.get $6
  call $~lib/rt/pure/__retain
  i32.store
  local.get $4
  local.get $6
  i32.store offset=4
  local.get $4
  local.get $5
  i32.store offset=8
  local.get $4
  local.get $0
  i32.store offset=12
  local.get $3
  if
   local.get $6
   local.get $3
   local.get $5
   call $~lib/memory/memory.copy
  end
  local.get $4
 )
 (func $~lib/rt/tlsf/reallocateBlock (; 28 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $2
  call $~lib/rt/tlsf/prepareSize
  local.set $3
  local.get $1
  i32.load
  local.set $4
  local.get $4
  i32.const 1
  i32.and
  i32.eqz
  if (result i32)
   local.get $1
   i32.load offset=4
   i32.const -268435456
   i32.and
   i32.eqz
  else
   i32.const 0
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
  local.set $5
  local.get $5
  i32.const 16
  i32.add
  local.get $5
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $6
  local.get $6
  i32.load
  local.set $7
  local.get $7
  i32.const 1
  i32.and
  if
   local.get $4
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $7
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $5
   local.get $5
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
  local.set $8
  local.get $8
  local.get $1
  i32.load offset=8
  i32.store offset=8
  local.get $8
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
  local.get $8
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
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
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
 (func $~lib/memory/memory.fill (; 30 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 1
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 1
   i32.add
   local.get $4
   i32.store8
   local.get $5
   i32.const 2
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 2
   i32.sub
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 3
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 3
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $5
   i32.sub
   i32.const 3
   i32.and
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
   i32.sub
   local.set $3
   local.get $3
   i32.const -4
   i32.and
   local.set $3
   i32.const -1
   i32.const 255
   i32.div_u
   local.get $4
   i32.const 255
   i32.and
   i32.mul
   local.set $7
   local.get $5
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 4
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 8
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 12
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 8
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 12
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 16
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 20
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 24
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 28
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 24
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 20
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 16
   i32.sub
   local.get $7
   i32.store
   i32.const 24
   local.get $5
   i32.const 4
   i32.and
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
   i32.sub
   local.set $3
   local.get $7
   i64.extend_i32_u
   local.get $7
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $8
   block $break|0
    loop $continue|0
     local.get $3
     i32.const 32
     i32.ge_u
     i32.eqz
     br_if $break|0
     local.get $5
     local.get $8
     i64.store
     local.get $5
     i32.const 8
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 16
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 24
     i32.add
     local.get $8
     i64.store
     local.get $3
     i32.const 32
     i32.sub
     local.set $3
     local.get $5
     i32.const 32
     i32.add
     local.set $5
     br $continue|0
    end
    unreachable
   end
  end
 )
 (func $~lib/array/ensureSize (; 31 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=8
  local.set $3
  local.get $1
  local.get $3
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 1073741808
   local.get $2
   i32.shr_u
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
   local.set $4
   local.get $1
   local.get $2
   i32.shl
   local.set $5
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/__realloc
   local.set $6
   local.get $6
   local.get $3
   i32.add
   i32.const 0
   local.get $5
   local.get $3
   i32.sub
   call $~lib/memory/memory.fill
   local.get $6
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $6
    call $~lib/rt/pure/__retain
    i32.store
    local.get $0
    local.get $6
    i32.store offset=4
   end
   local.get $0
   local.get $5
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__unchecked_set (; 32 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  local.get $3
  i32.load
  local.set $4
  local.get $2
  local.get $4
  i32.ne
  if
   local.get $3
   local.get $2
   call $~lib/rt/pure/__retain
   i32.store
   local.get $4
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
  i32.const 2
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
 (func $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__unchecked_get (; 34 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get (; 35 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  local.get $1
  call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__unchecked_get
  local.set $2
  local.get $2
  i32.eqz
  if
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 65912
   i32.const 65864
   i32.const 96
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $~lib/array/Array<assembly/index/Vertex>#push (; 36 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 37 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
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
  local.get $2
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $3
  i32.const 0
  local.get $1
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
  local.get $0
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   drop
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/array/Array<assembly/index/Vertex>#constructor (; 38 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 4
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<assembly/index/Vertex>#__unchecked_set (; 39 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  local.get $3
  i32.load
  local.set $4
  local.get $2
  local.get $4
  i32.ne
  if
   local.get $3
   local.get $2
   call $~lib/rt/pure/__retain
   i32.store
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<assembly/index/Vertex>#get:length (; 40 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<assembly/index/Vertex>#__unchecked_get (; 41 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<assembly/index/Vertex>#__get (; 42 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  local.get $1
  call $~lib/array/Array<assembly/index/Vertex>#__unchecked_get
  local.set $2
  local.get $2
  i32.eqz
  if
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 65912
   i32.const 65864
   i32.const 96
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $assembly/index/dedup (; 43 ;) (type $FUNCSIG$iid) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  (local $9 i32)
  (local $10 i32)
  (local $11 f64)
  (local $12 f64)
  (local $13 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 0
  call $~lib/array/Array<assembly/index/Vertex>#__get
  local.set $2
  i32.const 1
  i32.const 2
  i32.const 4
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $3
  local.get $3
  i32.load offset=4
  local.set $4
  local.get $4
  local.get $2
  call $~lib/rt/pure/__retain
  i32.store
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 1
  local.set $3
  local.get $0
  call $~lib/array/Array<assembly/index/Vertex>#get:length
  local.set $5
  i32.const 0
  local.set $6
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $7
  block $break|0
   loop $continue|0
    local.get $5
    i32.const 1
    i32.gt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $5
    i32.const 1
    i32.sub
    call $~lib/array/Array<assembly/index/Vertex>#__get
    local.set $10
    local.get $2
    call $~lib/rt/pure/__retain
    local.set $9
    local.get $1
    local.set $8
    local.get $10
    f64.load
    local.get $9
    f64.load
    f64.sub
    local.set $11
    local.get $10
    f64.load offset=8
    local.get $9
    f64.load offset=8
    f64.sub
    local.set $12
    local.get $11
    f64.const 0
    f64.eq
    if (result i32)
     local.get $12
     f64.const 0
     f64.eq
    else
     i32.const 0
    end
    if (result i32)
     i32.const 1
    else
     local.get $11
     local.get $11
     f64.mul
     local.get $12
     local.get $12
     f64.mul
     f64.add
     local.get $8
     local.get $8
     f64.mul
     f64.le
    end
    local.set $13
    local.get $9
    call $~lib/rt/pure/__release
    local.get $10
    call $~lib/rt/pure/__release
    local.get $13
    i32.const 0
    i32.ne
    i32.eqz
    if
     br $break|0
    end
    local.get $5
    i32.const 1
    i32.sub
    local.set $5
    br $continue|0
   end
   unreachable
  end
  block $break|1
   loop $continue|1
    local.get $3
    local.get $5
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $0
    local.get $3
    call $~lib/array/Array<assembly/index/Vertex>#__get
    local.set $13
    local.get $6
    call $~lib/rt/pure/__release
    local.get $13
    local.set $6
    local.get $6
    call $~lib/rt/pure/__retain
    local.set $10
    local.get $7
    call $~lib/rt/pure/__retain
    local.set $9
    local.get $1
    local.set $8
    local.get $10
    f64.load
    local.get $9
    f64.load
    f64.sub
    local.set $12
    local.get $10
    f64.load offset=8
    local.get $9
    f64.load offset=8
    f64.sub
    local.set $11
    local.get $12
    f64.const 0
    f64.eq
    if (result i32)
     local.get $11
     f64.const 0
     f64.eq
    else
     i32.const 0
    end
    if (result i32)
     i32.const 1
    else
     local.get $12
     local.get $12
     f64.mul
     local.get $11
     local.get $11
     f64.mul
     f64.add
     local.get $8
     local.get $8
     f64.mul
     f64.le
    end
    local.set $13
    local.get $9
    call $~lib/rt/pure/__release
    local.get $10
    call $~lib/rt/pure/__release
    local.get $13
    i32.const 0
    i32.ne
    i32.eqz
    if
     local.get $4
     local.get $6
     call $~lib/array/Array<assembly/index/Vertex>#push
     drop
     local.get $6
     local.tee $13
     local.get $7
     local.tee $10
     i32.ne
     if
      local.get $13
      call $~lib/rt/pure/__retain
      drop
      local.get $10
      call $~lib/rt/pure/__release
     end
     local.get $13
     local.set $7
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $continue|1
   end
   unreachable
  end
  local.get $4
  local.set $13
  local.get $2
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $13
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#get:length (; 44 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/math/NativeMath.hypot (; 45 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  local.get $0
  i64.reinterpret_f64
  local.set $2
  local.get $1
  i64.reinterpret_f64
  local.set $3
  local.get $2
  i64.const 9223372036854775807
  i64.and
  local.set $2
  local.get $3
  i64.const 9223372036854775807
  i64.and
  local.set $3
  local.get $2
  local.get $3
  i64.lt_u
  if
   local.get $2
   local.set $4
   local.get $3
   local.set $2
   local.get $4
   local.set $3
  end
  local.get $2
  i64.const 52
  i64.shr_u
  i32.wrap_i64
  local.set $5
  local.get $3
  i64.const 52
  i64.shr_u
  i32.wrap_i64
  local.set $6
  local.get $3
  f64.reinterpret_i64
  local.set $1
  local.get $6
  i32.const 2047
  i32.eq
  if
   local.get $1
   return
  end
  local.get $2
  f64.reinterpret_i64
  local.set $0
  local.get $5
  i32.const 2047
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $3
   i64.const 0
   i64.eq
  end
  if
   local.get $0
   return
  end
  local.get $5
  local.get $6
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
  local.set $7
  local.get $5
  i32.const 1533
  i32.gt_s
  if
   f64.const 5260135901548373507240989e186
   local.set $7
   local.get $0
   f64.const 1.90109156629516e-211
   f64.mul
   local.set $0
   local.get $1
   f64.const 1.90109156629516e-211
   f64.mul
   local.set $1
  else
   local.get $6
   i32.const 573
   i32.lt_s
   if
    f64.const 1.90109156629516e-211
    local.set $7
    local.get $0
    f64.const 5260135901548373507240989e186
    f64.mul
    local.set $0
    local.get $1
    f64.const 5260135901548373507240989e186
    f64.mul
    local.set $1
   end
  end
  local.get $0
  f64.const 134217729
  f64.mul
  local.set $8
  local.get $0
  local.get $8
  f64.sub
  local.get $8
  f64.add
  local.set $9
  local.get $0
  local.get $9
  f64.sub
  local.set $10
  local.get $0
  local.get $0
  f64.mul
  local.set $11
  local.get $9
  local.get $9
  f64.mul
  local.get $11
  f64.sub
  f64.const 2
  local.get $9
  f64.mul
  local.get $10
  f64.add
  local.get $10
  f64.mul
  f64.add
  local.set $12
  local.get $1
  f64.const 134217729
  f64.mul
  local.set $8
  local.get $1
  local.get $8
  f64.sub
  local.get $8
  f64.add
  local.set $9
  local.get $1
  local.get $9
  f64.sub
  local.set $10
  local.get $1
  local.get $1
  f64.mul
  local.set $13
  local.get $9
  local.get $9
  f64.mul
  local.get $13
  f64.sub
  f64.const 2
  local.get $9
  f64.mul
  local.get $10
  f64.add
  local.get $10
  f64.mul
  f64.add
  local.set $14
  local.get $7
  local.get $14
  local.get $12
  f64.add
  local.get $13
  f64.add
  local.get $11
  f64.add
  f64.sqrt
  f64.mul
 )
 (func $assembly/index/tinystep (; 46 ;) (type $FUNCSIG$iiid) (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  f64.load
  local.set $3
  local.get $0
  f64.load offset=8
  local.set $4
  local.get $1
  f64.load
  local.get $3
  f64.sub
  local.set $5
  local.get $1
  f64.load offset=8
  local.get $4
  f64.sub
  local.set $6
  local.get $5
  local.get $6
  call $~lib/math/NativeMath.hypot
  local.set $7
  i32.const 16
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $8
  local.get $8
  local.get $3
  local.get $5
  local.get $7
  f64.div
  local.get $2
  f64.mul
  f64.add
  f64.store
  local.get $8
  local.get $4
  local.get $6
  local.get $7
  f64.div
  local.get $2
  f64.mul
  f64.add
  f64.store offset=8
  local.get $8
  call $~lib/rt/pure/__retain
  local.set $9
  local.get $8
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $assembly/index/Vertex#constructor (; 47 ;) (type $FUNCSIG$iidd) (param $0 i32) (param $1 f64) (param $2 f64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 3
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  f64.store
  local.get $0
  local.get $2
  f64.store offset=8
  local.get $0
 )
 (func $assembly/index/pickAPoint (; 48 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
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
  local.get $0
  call $~lib/array/Array<assembly/index/Vertex>#get:length
  i32.const 1
  i32.sub
  local.set $1
  local.get $0
  i32.const 0
  call $~lib/array/Array<assembly/index/Vertex>#__get
  local.set $2
  local.get $2
  f64.load
  local.set $3
  i32.const 0
  local.set $4
  i32.const 1
  local.set $5
  block $break|0
   loop $continue|0
    local.get $5
    local.get $1
    i32.le_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $5
    call $~lib/array/Array<assembly/index/Vertex>#__get
    local.set $6
    local.get $2
    call $~lib/rt/pure/__release
    local.get $6
    local.set $2
    local.get $2
    f64.load
    local.get $3
    f64.gt
    if
     local.get $2
     f64.load
     local.set $3
     local.get $5
     local.set $4
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $continue|0
   end
   unreachable
  end
  local.get $0
  local.get $4
  call $~lib/array/Array<assembly/index/Vertex>#__get
  local.set $6
  local.get $0
  local.get $4
  if (result i32)
   local.get $4
   i32.const 1
   i32.sub
  else
   local.get $1
  end
  call $~lib/array/Array<assembly/index/Vertex>#__get
  local.set $7
  local.get $0
  local.get $4
  local.get $1
  i32.eq
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 1
   i32.add
  end
  call $~lib/array/Array<assembly/index/Vertex>#__get
  local.set $8
  local.get $6
  local.get $8
  f64.const 0.001
  call $assembly/index/tinystep
  local.set $9
  local.get $6
  local.get $7
  f64.const 0.001
  call $assembly/index/tinystep
  local.set $10
  i32.const 0
  local.get $9
  f64.load
  local.get $10
  f64.load
  f64.add
  local.get $6
  f64.load
  f64.add
  f64.const 3
  f64.div
  local.get $9
  f64.load offset=8
  local.get $10
  f64.load offset=8
  f64.add
  local.get $6
  f64.load offset=8
  f64.add
  f64.const 3
  f64.div
  call $assembly/index/Vertex#constructor
  local.set $11
  local.get $2
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $11
 )
 (func $assembly/index/isHole_oddeven (; 49 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $assembly/index/pickAPoint
  local.set $2
  i32.const 0
  f64.const 1e10
  local.get $2
  f64.load offset=8
  call $assembly/index/Vertex#constructor
  local.set $3
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  i32.const 0
  local.set $6
  i32.const 0
  local.set $7
  block $break|0
   i32.const 0
   local.set $8
   local.get $1
   call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#get:length
   local.set $9
   loop $loop|0
    local.get $8
    local.get $9
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $8
    call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
    local.set $10
    local.get $5
    call $~lib/rt/pure/__release
    local.get $10
    local.set $5
    block $break|1
     i32.const 0
     local.set $10
     local.get $5
     call $~lib/array/Array<assembly/index/Vertex>#get:length
     i32.const 1
     i32.sub
     local.set $11
     loop $loop|1
      local.get $10
      local.get $11
      i32.le_s
      i32.eqz
      br_if $break|1
      local.get $5
      local.get $10
      call $~lib/array/Array<assembly/index/Vertex>#__get
      local.set $12
      local.get $6
      call $~lib/rt/pure/__release
      local.get $12
      local.set $6
      local.get $5
      local.get $10
      local.get $11
      i32.eq
      if (result i32)
       i32.const 0
      else
       local.get $10
       i32.const 1
       i32.add
      end
      call $~lib/array/Array<assembly/index/Vertex>#__get
      local.set $12
      local.get $7
      call $~lib/rt/pure/__release
      local.get $12
      local.set $7
      local.get $2
      call $~lib/rt/pure/__retain
      local.set $15
      local.get $3
      call $~lib/rt/pure/__retain
      local.set $14
      local.get $6
      call $~lib/rt/pure/__retain
      local.set $13
      local.get $7
      call $~lib/rt/pure/__retain
      local.set $12
      local.get $15
      call $~lib/rt/pure/__retain
      local.set $18
      local.get $14
      call $~lib/rt/pure/__retain
      local.set $17
      local.get $13
      call $~lib/rt/pure/__retain
      local.set $16
      local.get $17
      f64.load
      local.get $18
      f64.load
      f64.sub
      local.get $16
      f64.load offset=8
      local.get $18
      f64.load offset=8
      f64.sub
      f64.mul
      local.get $17
      f64.load offset=8
      local.get $18
      f64.load offset=8
      f64.sub
      local.get $16
      f64.load
      local.get $18
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
      local.set $19
      local.get $16
      call $~lib/rt/pure/__release
      local.get $17
      call $~lib/rt/pure/__release
      local.get $18
      call $~lib/rt/pure/__release
      local.get $19
      local.get $15
      call $~lib/rt/pure/__retain
      local.set $17
      local.get $14
      call $~lib/rt/pure/__retain
      local.set $16
      local.get $12
      call $~lib/rt/pure/__retain
      local.set $19
      local.get $16
      f64.load
      local.get $17
      f64.load
      f64.sub
      local.get $19
      f64.load offset=8
      local.get $17
      f64.load offset=8
      f64.sub
      f64.mul
      local.get $16
      f64.load offset=8
      local.get $17
      f64.load offset=8
      f64.sub
      local.get $19
      f64.load
      local.get $17
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
      local.set $18
      local.get $19
      call $~lib/rt/pure/__release
      local.get $16
      call $~lib/rt/pure/__release
      local.get $17
      call $~lib/rt/pure/__release
      local.get $18
      i32.ne
      if (result i32)
       local.get $13
       call $~lib/rt/pure/__retain
       local.set $16
       local.get $12
       call $~lib/rt/pure/__retain
       local.set $19
       local.get $15
       call $~lib/rt/pure/__retain
       local.set $18
       local.get $19
       f64.load
       local.get $16
       f64.load
       f64.sub
       local.get $18
       f64.load offset=8
       local.get $16
       f64.load offset=8
       f64.sub
       f64.mul
       local.get $19
       f64.load offset=8
       local.get $16
       f64.load offset=8
       f64.sub
       local.get $18
       f64.load
       local.get $16
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
       local.set $17
       local.get $18
       call $~lib/rt/pure/__release
       local.get $19
       call $~lib/rt/pure/__release
       local.get $16
       call $~lib/rt/pure/__release
       local.get $17
       local.get $13
       call $~lib/rt/pure/__retain
       local.set $19
       local.get $12
       call $~lib/rt/pure/__retain
       local.set $18
       local.get $14
       call $~lib/rt/pure/__retain
       local.set $17
       local.get $18
       f64.load
       local.get $19
       f64.load
       f64.sub
       local.get $17
       f64.load offset=8
       local.get $19
       f64.load offset=8
       f64.sub
       f64.mul
       local.get $18
       f64.load offset=8
       local.get $19
       f64.load offset=8
       f64.sub
       local.get $17
       f64.load
       local.get $19
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
       local.set $16
       local.get $17
       call $~lib/rt/pure/__release
       local.get $18
       call $~lib/rt/pure/__release
       local.get $19
       call $~lib/rt/pure/__release
       local.get $16
       i32.ne
      else
       i32.const 0
      end
      local.set $19
      local.get $12
      call $~lib/rt/pure/__release
      local.get $13
      call $~lib/rt/pure/__release
      local.get $14
      call $~lib/rt/pure/__release
      local.get $15
      call $~lib/rt/pure/__release
      local.get $19
      if
       local.get $4
       i32.const 1
       i32.add
       local.set $4
      end
      local.get $10
      i32.const 1
      i32.add
      local.set $10
      br $loop|1
     end
     unreachable
    end
    local.get $8
    i32.const 1
    i32.add
    local.set $8
    br $loop|0
   end
   unreachable
  end
  local.get $4
  i32.const 1
  i32.and
  i32.const 0
  i32.eq
  local.set $9
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $assembly/index/isHole_nonzero (; 50 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $assembly/index/pickAPoint
  local.set $2
  i32.const 0
  f64.const 1e10
  local.get $2
  f64.load offset=8
  call $assembly/index/Vertex#constructor
  local.set $3
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  i32.const 0
  local.set $6
  i32.const 0
  local.set $7
  block $break|0
   i32.const 0
   local.set $8
   local.get $1
   call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#get:length
   local.set $9
   loop $loop|0
    local.get $8
    local.get $9
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $8
    call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
    local.set $10
    local.get $7
    call $~lib/rt/pure/__release
    local.get $10
    local.set $7
    block $break|1
     i32.const 0
     local.set $10
     local.get $7
     call $~lib/array/Array<assembly/index/Vertex>#get:length
     i32.const 1
     i32.sub
     local.set $11
     loop $loop|1
      local.get $10
      local.get $11
      i32.le_s
      i32.eqz
      br_if $break|1
      local.get $7
      local.get $10
      call $~lib/array/Array<assembly/index/Vertex>#__get
      local.set $12
      local.get $5
      call $~lib/rt/pure/__release
      local.get $12
      local.set $5
      local.get $7
      local.get $10
      local.get $11
      i32.eq
      if (result i32)
       i32.const 0
      else
       local.get $10
       i32.const 1
       i32.add
      end
      call $~lib/array/Array<assembly/index/Vertex>#__get
      local.set $12
      local.get $4
      call $~lib/rt/pure/__release
      local.get $12
      local.set $4
      local.get $2
      call $~lib/rt/pure/__retain
      local.set $15
      local.get $3
      call $~lib/rt/pure/__retain
      local.set $14
      local.get $5
      call $~lib/rt/pure/__retain
      local.set $13
      local.get $4
      call $~lib/rt/pure/__retain
      local.set $12
      local.get $15
      call $~lib/rt/pure/__retain
      local.set $18
      local.get $14
      call $~lib/rt/pure/__retain
      local.set $17
      local.get $13
      call $~lib/rt/pure/__retain
      local.set $16
      local.get $17
      f64.load
      local.get $18
      f64.load
      f64.sub
      local.get $16
      f64.load offset=8
      local.get $18
      f64.load offset=8
      f64.sub
      f64.mul
      local.get $17
      f64.load offset=8
      local.get $18
      f64.load offset=8
      f64.sub
      local.get $16
      f64.load
      local.get $18
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
      local.set $19
      local.get $16
      call $~lib/rt/pure/__release
      local.get $17
      call $~lib/rt/pure/__release
      local.get $18
      call $~lib/rt/pure/__release
      local.get $19
      local.get $15
      call $~lib/rt/pure/__retain
      local.set $17
      local.get $14
      call $~lib/rt/pure/__retain
      local.set $16
      local.get $12
      call $~lib/rt/pure/__retain
      local.set $19
      local.get $16
      f64.load
      local.get $17
      f64.load
      f64.sub
      local.get $19
      f64.load offset=8
      local.get $17
      f64.load offset=8
      f64.sub
      f64.mul
      local.get $16
      f64.load offset=8
      local.get $17
      f64.load offset=8
      f64.sub
      local.get $19
      f64.load
      local.get $17
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
      local.set $18
      local.get $19
      call $~lib/rt/pure/__release
      local.get $16
      call $~lib/rt/pure/__release
      local.get $17
      call $~lib/rt/pure/__release
      local.get $18
      i32.ne
      if (result i32)
       local.get $13
       call $~lib/rt/pure/__retain
       local.set $16
       local.get $12
       call $~lib/rt/pure/__retain
       local.set $19
       local.get $15
       call $~lib/rt/pure/__retain
       local.set $18
       local.get $19
       f64.load
       local.get $16
       f64.load
       f64.sub
       local.get $18
       f64.load offset=8
       local.get $16
       f64.load offset=8
       f64.sub
       f64.mul
       local.get $19
       f64.load offset=8
       local.get $16
       f64.load offset=8
       f64.sub
       local.get $18
       f64.load
       local.get $16
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
       local.set $17
       local.get $18
       call $~lib/rt/pure/__release
       local.get $19
       call $~lib/rt/pure/__release
       local.get $16
       call $~lib/rt/pure/__release
       local.get $17
       local.get $13
       call $~lib/rt/pure/__retain
       local.set $19
       local.get $12
       call $~lib/rt/pure/__retain
       local.set $18
       local.get $14
       call $~lib/rt/pure/__retain
       local.set $17
       local.get $18
       f64.load
       local.get $19
       f64.load
       f64.sub
       local.get $17
       f64.load offset=8
       local.get $19
       f64.load offset=8
       f64.sub
       f64.mul
       local.get $18
       f64.load offset=8
       local.get $19
       f64.load offset=8
       f64.sub
       local.get $17
       f64.load
       local.get $19
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
       local.set $16
       local.get $17
       call $~lib/rt/pure/__release
       local.get $18
       call $~lib/rt/pure/__release
       local.get $19
       call $~lib/rt/pure/__release
       local.get $16
       i32.ne
      else
       i32.const 0
      end
      local.set $19
      local.get $12
      call $~lib/rt/pure/__release
      local.get $13
      call $~lib/rt/pure/__release
      local.get $14
      call $~lib/rt/pure/__release
      local.get $15
      call $~lib/rt/pure/__release
      local.get $19
      if
       local.get $6
       local.get $2
       call $~lib/rt/pure/__retain
       local.set $18
       local.get $5
       call $~lib/rt/pure/__retain
       local.set $17
       local.get $4
       call $~lib/rt/pure/__retain
       local.set $16
       local.get $17
       f64.load
       local.get $18
       f64.load
       f64.sub
       local.get $16
       f64.load offset=8
       local.get $18
       f64.load offset=8
       f64.sub
       f64.mul
       local.get $17
       f64.load offset=8
       local.get $18
       f64.load offset=8
       f64.sub
       local.get $16
       f64.load
       local.get $18
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
       local.set $15
       local.get $16
       call $~lib/rt/pure/__release
       local.get $17
       call $~lib/rt/pure/__release
       local.get $18
       call $~lib/rt/pure/__release
       local.get $15
       i32.add
       local.set $6
      end
      local.get $10
      i32.const 1
      i32.add
      local.set $10
      br $loop|1
     end
     unreachable
    end
    local.get $8
    i32.const 1
    i32.add
    local.set $8
    br $loop|0
   end
   unreachable
  end
  local.get $6
  i32.const 1
  i32.and
  i32.const 0
  i32.eq
  local.set $9
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#push (; 51 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/index/boundingBoxOf (; 52 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 f64)
  (local $2 f64)
  (local $3 f64)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  f64.const inf
  local.set $1
  f64.const inf
  local.set $2
  f64.const inf
  f64.neg
  local.set $3
  f64.const inf
  f64.neg
  local.set $4
  block $break|0
   i32.const 0
   local.set $5
   local.get $0
   call $~lib/array/Array<assembly/index/Vertex>#get:length
   local.set $6
   loop $loop|0
    local.get $5
    local.get $6
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $5
    call $~lib/array/Array<assembly/index/Vertex>#__get
    local.set $7
    local.get $7
    f64.load
    local.set $8
    local.get $7
    f64.load offset=8
    local.set $9
    local.get $8
    local.set $11
    local.get $1
    local.set $10
    local.get $11
    local.get $10
    f64.min
    local.set $1
    local.get $8
    local.set $11
    local.get $3
    local.set $10
    local.get $11
    local.get $10
    f64.max
    local.set $3
    local.get $9
    local.set $11
    local.get $2
    local.set $10
    local.get $11
    local.get $10
    f64.min
    local.set $2
    local.get $9
    local.set $11
    local.get $4
    local.set $10
    local.get $11
    local.get $10
    f64.max
    local.set $4
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    local.get $7
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  i32.const 32
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  local.get $1
  f64.store
  local.get $7
  local.get $2
  f64.store offset=8
  local.get $7
  local.get $3
  f64.store offset=16
  local.get $7
  local.get $4
  f64.store offset=24
  local.get $7
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $7
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $6
 )
 (func $assembly/index/isPointInsidePolygon (; 53 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  f64.const 1e10
  local.get $0
  f64.load offset=8
  call $assembly/index/Vertex#constructor
  local.set $2
  i32.const 0
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   local.get $1
   call $~lib/array/Array<assembly/index/Vertex>#get:length
   i32.const 1
   i32.sub
   local.set $5
   loop $loop|0
    local.get $4
    local.get $5
    i32.le_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $4
    call $~lib/array/Array<assembly/index/Vertex>#__get
    local.set $6
    local.get $1
    local.get $4
    local.get $5
    i32.eq
    if (result i32)
     i32.const 0
    else
     local.get $4
     i32.const 1
     i32.add
    end
    call $~lib/array/Array<assembly/index/Vertex>#__get
    local.set $7
    local.get $0
    call $~lib/rt/pure/__retain
    local.set $11
    local.get $2
    call $~lib/rt/pure/__retain
    local.set $10
    local.get $6
    call $~lib/rt/pure/__retain
    local.set $9
    local.get $7
    call $~lib/rt/pure/__retain
    local.set $8
    local.get $11
    call $~lib/rt/pure/__retain
    local.set $14
    local.get $10
    call $~lib/rt/pure/__retain
    local.set $13
    local.get $9
    call $~lib/rt/pure/__retain
    local.set $12
    local.get $13
    f64.load
    local.get $14
    f64.load
    f64.sub
    local.get $12
    f64.load offset=8
    local.get $14
    f64.load offset=8
    f64.sub
    f64.mul
    local.get $13
    f64.load offset=8
    local.get $14
    f64.load offset=8
    f64.sub
    local.get $12
    f64.load
    local.get $14
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
    local.set $15
    local.get $12
    call $~lib/rt/pure/__release
    local.get $13
    call $~lib/rt/pure/__release
    local.get $14
    call $~lib/rt/pure/__release
    local.get $15
    local.get $11
    call $~lib/rt/pure/__retain
    local.set $13
    local.get $10
    call $~lib/rt/pure/__retain
    local.set $12
    local.get $8
    call $~lib/rt/pure/__retain
    local.set $15
    local.get $12
    f64.load
    local.get $13
    f64.load
    f64.sub
    local.get $15
    f64.load offset=8
    local.get $13
    f64.load offset=8
    f64.sub
    f64.mul
    local.get $12
    f64.load offset=8
    local.get $13
    f64.load offset=8
    f64.sub
    local.get $15
    f64.load
    local.get $13
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
    local.set $14
    local.get $15
    call $~lib/rt/pure/__release
    local.get $12
    call $~lib/rt/pure/__release
    local.get $13
    call $~lib/rt/pure/__release
    local.get $14
    i32.ne
    if (result i32)
     local.get $9
     call $~lib/rt/pure/__retain
     local.set $12
     local.get $8
     call $~lib/rt/pure/__retain
     local.set $15
     local.get $11
     call $~lib/rt/pure/__retain
     local.set $14
     local.get $15
     f64.load
     local.get $12
     f64.load
     f64.sub
     local.get $14
     f64.load offset=8
     local.get $12
     f64.load offset=8
     f64.sub
     f64.mul
     local.get $15
     f64.load offset=8
     local.get $12
     f64.load offset=8
     f64.sub
     local.get $14
     f64.load
     local.get $12
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
     local.set $13
     local.get $14
     call $~lib/rt/pure/__release
     local.get $15
     call $~lib/rt/pure/__release
     local.get $12
     call $~lib/rt/pure/__release
     local.get $13
     local.get $9
     call $~lib/rt/pure/__retain
     local.set $15
     local.get $8
     call $~lib/rt/pure/__retain
     local.set $14
     local.get $10
     call $~lib/rt/pure/__retain
     local.set $13
     local.get $14
     f64.load
     local.get $15
     f64.load
     f64.sub
     local.get $13
     f64.load offset=8
     local.get $15
     f64.load offset=8
     f64.sub
     f64.mul
     local.get $14
     f64.load offset=8
     local.get $15
     f64.load offset=8
     f64.sub
     local.get $13
     f64.load
     local.get $15
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
     local.set $12
     local.get $13
     call $~lib/rt/pure/__release
     local.get $14
     call $~lib/rt/pure/__release
     local.get $15
     call $~lib/rt/pure/__release
     local.get $12
     i32.ne
    else
     i32.const 0
    end
    local.set $15
    local.get $8
    call $~lib/rt/pure/__release
    local.get $9
    call $~lib/rt/pure/__release
    local.get $10
    call $~lib/rt/pure/__release
    local.get $11
    call $~lib/rt/pure/__release
    local.get $15
    if
     local.get $3
     local.get $0
     call $~lib/rt/pure/__retain
     local.set $14
     local.get $6
     call $~lib/rt/pure/__retain
     local.set $13
     local.get $7
     call $~lib/rt/pure/__retain
     local.set $12
     local.get $13
     f64.load
     local.get $14
     f64.load
     f64.sub
     local.get $12
     f64.load offset=8
     local.get $14
     f64.load offset=8
     f64.sub
     f64.mul
     local.get $13
     f64.load offset=8
     local.get $14
     f64.load offset=8
     f64.sub
     local.get $12
     f64.load
     local.get $14
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
     local.set $11
     local.get $12
     call $~lib/rt/pure/__release
     local.get $13
     call $~lib/rt/pure/__release
     local.get $14
     call $~lib/rt/pure/__release
     local.get $11
     i32.add
     local.set $3
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    local.get $6
    call $~lib/rt/pure/__release
    local.get $7
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  local.get $3
  i32.const 1
  i32.and
  i32.const 0
  i32.ne
  local.set $7
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $assembly/index/isPolygonInsidePolygon (; 54 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  f64.load offset=16
  local.get $3
  f64.load
  f64.lt
  if (result i32)
   i32.const 1
  else
   local.get $2
   f64.load
   local.get $3
   f64.load offset=16
   f64.gt
  end
  if (result i32)
   i32.const 1
  else
   local.get $2
   f64.load offset=24
   local.get $3
   f64.load offset=8
   f64.lt
  end
  if (result i32)
   i32.const 1
  else
   local.get $2
   f64.load offset=8
   local.get $3
   f64.load offset=24
   f64.gt
  end
  if
   i32.const 0
   local.set $4
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  block $break|0
   i32.const 0
   local.set $4
   local.get $0
   call $~lib/array/Array<assembly/index/Vertex>#get:length
   i32.const 1
   i32.sub
   local.set $5
   loop $loop|0
    local.get $4
    local.get $5
    i32.le_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $4
    call $~lib/array/Array<assembly/index/Vertex>#__get
    local.set $6
    local.get $0
    local.get $4
    local.get $5
    i32.eq
    if (result i32)
     i32.const 0
    else
     local.get $4
     i32.const 1
     i32.add
    end
    call $~lib/array/Array<assembly/index/Vertex>#__get
    local.set $7
    block $break|1
     i32.const 0
     local.set $8
     local.get $1
     call $~lib/array/Array<assembly/index/Vertex>#get:length
     i32.const 1
     i32.sub
     local.set $9
     loop $loop|1
      local.get $8
      local.get $9
      i32.le_s
      i32.eqz
      br_if $break|1
      local.get $1
      local.get $8
      call $~lib/array/Array<assembly/index/Vertex>#__get
      local.set $10
      local.get $1
      local.get $8
      local.get $9
      i32.eq
      if (result i32)
       i32.const 0
      else
       local.get $8
       i32.const 1
       i32.add
      end
      call $~lib/array/Array<assembly/index/Vertex>#__get
      local.set $11
      local.get $6
      call $~lib/rt/pure/__retain
      local.set $15
      local.get $7
      call $~lib/rt/pure/__retain
      local.set $14
      local.get $10
      call $~lib/rt/pure/__retain
      local.set $13
      local.get $11
      call $~lib/rt/pure/__retain
      local.set $12
      local.get $15
      call $~lib/rt/pure/__retain
      local.set $18
      local.get $14
      call $~lib/rt/pure/__retain
      local.set $17
      local.get $13
      call $~lib/rt/pure/__retain
      local.set $16
      local.get $17
      f64.load
      local.get $18
      f64.load
      f64.sub
      local.get $16
      f64.load offset=8
      local.get $18
      f64.load offset=8
      f64.sub
      f64.mul
      local.get $17
      f64.load offset=8
      local.get $18
      f64.load offset=8
      f64.sub
      local.get $16
      f64.load
      local.get $18
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
      local.set $19
      local.get $16
      call $~lib/rt/pure/__release
      local.get $17
      call $~lib/rt/pure/__release
      local.get $18
      call $~lib/rt/pure/__release
      local.get $19
      local.get $15
      call $~lib/rt/pure/__retain
      local.set $17
      local.get $14
      call $~lib/rt/pure/__retain
      local.set $16
      local.get $12
      call $~lib/rt/pure/__retain
      local.set $19
      local.get $16
      f64.load
      local.get $17
      f64.load
      f64.sub
      local.get $19
      f64.load offset=8
      local.get $17
      f64.load offset=8
      f64.sub
      f64.mul
      local.get $16
      f64.load offset=8
      local.get $17
      f64.load offset=8
      f64.sub
      local.get $19
      f64.load
      local.get $17
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
      local.set $18
      local.get $19
      call $~lib/rt/pure/__release
      local.get $16
      call $~lib/rt/pure/__release
      local.get $17
      call $~lib/rt/pure/__release
      local.get $18
      i32.ne
      if (result i32)
       local.get $13
       call $~lib/rt/pure/__retain
       local.set $16
       local.get $12
       call $~lib/rt/pure/__retain
       local.set $19
       local.get $15
       call $~lib/rt/pure/__retain
       local.set $18
       local.get $19
       f64.load
       local.get $16
       f64.load
       f64.sub
       local.get $18
       f64.load offset=8
       local.get $16
       f64.load offset=8
       f64.sub
       f64.mul
       local.get $19
       f64.load offset=8
       local.get $16
       f64.load offset=8
       f64.sub
       local.get $18
       f64.load
       local.get $16
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
       local.set $17
       local.get $18
       call $~lib/rt/pure/__release
       local.get $19
       call $~lib/rt/pure/__release
       local.get $16
       call $~lib/rt/pure/__release
       local.get $17
       local.get $13
       call $~lib/rt/pure/__retain
       local.set $19
       local.get $12
       call $~lib/rt/pure/__retain
       local.set $18
       local.get $14
       call $~lib/rt/pure/__retain
       local.set $17
       local.get $18
       f64.load
       local.get $19
       f64.load
       f64.sub
       local.get $17
       f64.load offset=8
       local.get $19
       f64.load offset=8
       f64.sub
       f64.mul
       local.get $18
       f64.load offset=8
       local.get $19
       f64.load offset=8
       f64.sub
       local.get $17
       f64.load
       local.get $19
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
       local.set $16
       local.get $17
       call $~lib/rt/pure/__release
       local.get $18
       call $~lib/rt/pure/__release
       local.get $19
       call $~lib/rt/pure/__release
       local.get $16
       i32.ne
      else
       i32.const 0
      end
      local.set $19
      local.get $12
      call $~lib/rt/pure/__release
      local.get $13
      call $~lib/rt/pure/__release
      local.get $14
      call $~lib/rt/pure/__release
      local.get $15
      call $~lib/rt/pure/__release
      local.get $19
      if
       i32.const 0
       local.set $15
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
       local.get $10
       call $~lib/rt/pure/__release
       local.get $11
       call $~lib/rt/pure/__release
       local.get $15
       return
      end
      local.get $8
      i32.const 1
      i32.add
      local.set $8
      local.get $10
      call $~lib/rt/pure/__release
      local.get $11
      call $~lib/rt/pure/__release
      br $loop|1
     end
     unreachable
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    local.get $6
    call $~lib/rt/pure/__release
    local.get $7
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<assembly/index/Vertex>#__get
  local.tee $7
  local.get $1
  call $assembly/index/isPointInsidePolygon
  local.set $6
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $6
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#indexOf (; 55 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $3
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $2
   local.get $3
   i32.ge_s
  end
  if
   i32.const -1
   local.set $4
   local.get $1
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $2
  i32.const 0
  i32.lt_s
  if
   local.get $3
   local.get $2
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $2
  end
  local.get $0
  i32.load offset=4
  local.set $6
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $6
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $1
    i32.eq
    if
     local.get $2
     local.set $4
     local.get $1
     call $~lib/rt/pure/__release
     local.get $4
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
  i32.const -1
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#splice (; 56 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $1
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  local.tee $4
  local.get $3
  local.get $1
  i32.sub
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_s
  select
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.set $2
  local.get $2
  i32.const 2
  i32.const 5
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $6
  i32.load offset=4
  local.set $7
  local.get $0
  i32.load offset=4
  local.set $8
  local.get $8
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.set $9
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $7
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    local.get $9
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $1
  local.get $2
  i32.add
  local.set $10
  local.get $3
  local.get $10
  i32.ne
  if
   local.get $9
   local.get $8
   local.get $10
   i32.const 2
   i32.shl
   i32.add
   local.get $3
   local.get $10
   i32.sub
   i32.const 2
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $0
  local.get $3
  local.get $2
  i32.sub
  i32.store offset=12
  local.get $6
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>>#push (; 57 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/index/linkUp (; 58 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  i32.const 2
  i32.const 6
  i32.const 66112
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  block $break|0
   i32.const 0
   local.set $6
   local.get $0
   call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#get:length
   local.set $7
   loop $loop|0
    local.get $6
    local.get $7
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $6
    call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    local.set $5
    i32.const 0
    i32.const 2
    i32.const 5
    i32.const 66128
    call $~lib/rt/__allocArray
    call $~lib/rt/pure/__retain
    local.tee $9
    call $~lib/rt/pure/__retain
    local.set $8
    block $break|1
     i32.const 0
     local.set $10
     local.get $1
     call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#get:length
     local.set $11
     loop $loop|1
      local.get $10
      local.get $11
      i32.lt_s
      i32.eqz
      br_if $break|1
      block $continue|1
       local.get $1
       local.get $10
       call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
       local.set $12
       local.get $4
       call $~lib/rt/pure/__release
       local.get $12
       local.set $4
       local.get $4
       local.get $5
       call $assembly/index/isPolygonInsidePolygon
       i32.eqz
       if
        br $continue|1
       end
       i32.const 0
       local.set $12
       block $break|2
        i32.const 0
        local.set $13
        loop $loop|2
         local.get $13
         local.get $8
         call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#get:length
         i32.lt_s
         i32.eqz
         br_if $break|2
         local.get $8
         local.get $13
         call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
         local.set $14
         local.get $4
         local.get $14
         call $assembly/index/isPolygonInsidePolygon
         if
          i32.const 1
          local.set $12
          local.get $14
          call $~lib/rt/pure/__release
          br $break|2
         end
         local.get $14
         local.get $4
         call $assembly/index/isPolygonInsidePolygon
         if
          local.get $8
          local.get $14
          i32.const 0
          call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#indexOf
          local.set $15
          local.get $15
          i32.const -1
          i32.ne
          if
           local.get $8
           local.get $15
           i32.const 1
           call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#splice
           call $~lib/rt/pure/__release
          end
         end
         local.get $13
         i32.const 1
         i32.add
         local.set $13
         local.get $14
         call $~lib/rt/pure/__release
         br $loop|2
        end
        unreachable
       end
       local.get $12
       i32.eqz
       if
        local.get $8
        local.get $4
        call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#push
        drop
       end
      end
      local.get $10
      i32.const 1
      i32.add
      local.set $10
      br $loop|1
     end
     unreachable
    end
    i32.const 1
    i32.const 2
    i32.const 5
    i32.const 0
    call $~lib/rt/__allocArray
    local.set $12
    local.get $12
    i32.load offset=4
    local.set $11
    local.get $11
    local.get $5
    call $~lib/rt/pure/__retain
    i32.store
    local.get $12
    call $~lib/rt/pure/__retain
    local.set $11
    block $break|3
     i32.const 0
     local.set $12
     local.get $8
     call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#get:length
     local.set $10
     loop $loop|3
      local.get $12
      local.get $10
      i32.lt_s
      i32.eqz
      br_if $break|3
      local.get $11
      local.get $8
      local.get $12
      call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
      local.tee $14
      call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#push
      drop
      local.get $12
      i32.const 1
      i32.add
      local.set $12
      local.get $14
      call $~lib/rt/pure/__release
      br $loop|3
     end
     unreachable
    end
    local.get $2
    local.get $11
    call $~lib/array/Array<~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>>#push
    drop
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    local.get $9
    call $~lib/rt/pure/__release
    local.get $8
    call $~lib/rt/pure/__release
    local.get $11
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  local.get $2
  local.set $11
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $11
 )
 (func $assembly/index/compile (; 59 ;) (type $FUNCSIG$iiiid) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f64) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  (local $16 f64)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 f64)
  (local $21 f64)
  (local $22 f64)
  (local $23 f64)
  (local $24 f64)
  (local $25 f64)
  (local $26 f64)
  (local $27 f64)
  (local $28 f64)
  (local $29 f64)
  (local $30 f64)
  (local $31 f64)
  (local $32 i32)
  (local $33 i32)
  (local $34 f64)
  (local $35 f64)
  (local $36 f64)
  (local $37 f64)
  (local $38 f64)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  local.get $2
  i32.const 2
  i32.add
  local.set $2
  i32.const 0
  i32.const 2
  i32.const 5
  i32.const 65800
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 0
  local.set $6
  i32.const 0
  local.set $7
  block $break|0
   loop $continue|0
    local.get $6
    local.get $0
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $6
    i32.load8_u
    local.set $8
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    local.get $8
    i32.const 77
    i32.eq
    if
     local.get $6
     f64.load
     local.set $15
     local.get $6
     global.get $assembly/index/SZ
     i32.add
     local.set $6
     local.get $6
     f64.load
     local.set $16
     local.get $6
     global.get $assembly/index/SZ
     i32.add
     local.set $6
     local.get $4
     local.get $7
     i32.const 1
     i32.const 2
     i32.const 4
     i32.const 0
     call $~lib/rt/__allocArray
     local.set $17
     local.get $17
     i32.load offset=4
     local.set $18
     local.get $18
     i32.const 16
     i32.const 3
     call $~lib/rt/tlsf/__alloc
     call $~lib/rt/pure/__retain
     local.set $19
     local.get $19
     local.get $15
     f64.store
     local.get $19
     local.get $16
     f64.store offset=8
     local.get $19
     call $~lib/rt/pure/__retain
     i32.store
     local.get $17
     call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__set
     local.get $19
     call $~lib/rt/pure/__release
     br $continue|0
    end
    local.get $8
    i32.const 76
    i32.eq
    if
     local.get $6
     f64.load
     local.set $15
     local.get $6
     global.get $assembly/index/SZ
     i32.add
     local.set $6
     local.get $6
     f64.load
     local.set $16
     local.get $6
     global.get $assembly/index/SZ
     i32.add
     local.set $6
     local.get $4
     local.get $7
     call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
     local.tee $19
     i32.const 16
     i32.const 3
     call $~lib/rt/tlsf/__alloc
     call $~lib/rt/pure/__retain
     local.set $18
     local.get $18
     local.get $15
     f64.store
     local.get $18
     local.get $16
     f64.store offset=8
     local.get $18
     call $~lib/array/Array<assembly/index/Vertex>#push
     drop
     local.get $19
     call $~lib/rt/pure/__release
     local.get $18
     call $~lib/rt/pure/__release
     br $continue|0
    end
    local.get $8
    i32.const 81
    i32.eq
    if
     local.get $6
     f64.load
     local.set $9
     local.get $6
     global.get $assembly/index/SZ
     i32.add
     local.set $6
     local.get $6
     f64.load
     local.set $10
     local.get $6
     global.get $assembly/index/SZ
     i32.add
     local.set $6
     local.get $6
     f64.load
     local.set $11
     local.get $6
     global.get $assembly/index/SZ
     i32.add
     local.set $6
     local.get $6
     f64.load
     local.set $12
     local.get $6
     global.get $assembly/index/SZ
     i32.add
     local.set $6
     local.get $6
     f64.load
     local.set $15
     local.get $6
     global.get $assembly/index/SZ
     i32.add
     local.set $6
     local.get $6
     f64.load
     local.set $16
     local.get $6
     global.get $assembly/index/SZ
     i32.add
     local.set $6
     local.get $9
     local.set $25
     local.get $10
     local.set $24
     local.get $11
     local.set $23
     local.get $12
     local.set $22
     local.get $15
     local.set $21
     local.get $16
     local.set $20
     local.get $2
     i32.const 255
     i32.and
     local.set $17
     i32.const 0
     local.get $17
     call $~lib/array/Array<assembly/index/Vertex>#constructor
     local.set $18
     f64.const 1
     local.get $17
     i32.const 1
     i32.sub
     f64.convert_i32_u
     f64.div
     local.set $30
     block $break|1
      i32.const 0
      local.set $19
      loop $loop|1
       local.get $19
       local.get $17
       i32.lt_u
       i32.eqz
       br_if $break|1
       local.get $19
       f64.convert_i32_u
       local.get $30
       f64.mul
       local.set $31
       f64.const 1
       local.get $31
       f64.sub
       local.set $29
       local.get $29
       local.get $29
       f64.mul
       local.set $26
       f64.const 2
       local.get $29
       f64.mul
       local.get $31
       f64.mul
       local.set $27
       local.get $31
       local.get $31
       f64.mul
       local.set $28
       local.get $18
       local.get $19
       i32.const 16
       i32.const 3
       call $~lib/rt/tlsf/__alloc
       call $~lib/rt/pure/__retain
       local.set $32
       local.get $32
       local.get $26
       local.get $25
       f64.mul
       local.get $27
       local.get $23
       f64.mul
       f64.add
       local.get $28
       local.get $21
       f64.mul
       f64.add
       f64.store
       local.get $32
       local.get $26
       local.get $24
       f64.mul
       local.get $27
       local.get $22
       f64.mul
       f64.add
       local.get $28
       local.get $20
       f64.mul
       f64.add
       f64.store offset=8
       local.get $32
       call $~lib/array/Array<assembly/index/Vertex>#__unchecked_set
       local.get $19
       i32.const 1
       i32.add
       local.set $19
       local.get $32
       call $~lib/rt/pure/__release
       br $loop|1
      end
      unreachable
     end
     local.get $18
     local.set $18
     block $break|2
      i32.const 1
      local.set $17
      local.get $18
      call $~lib/array/Array<assembly/index/Vertex>#get:length
      local.set $32
      loop $loop|2
       local.get $17
       local.get $32
       i32.lt_s
       i32.eqz
       br_if $break|2
       local.get $4
       local.get $7
       call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
       local.tee $19
       local.get $18
       local.get $17
       call $~lib/array/Array<assembly/index/Vertex>#__get
       local.tee $33
       call $~lib/array/Array<assembly/index/Vertex>#push
       drop
       local.get $17
       i32.const 1
       i32.add
       local.set $17
       local.get $19
       call $~lib/rt/pure/__release
       local.get $33
       call $~lib/rt/pure/__release
       br $loop|2
      end
      unreachable
     end
     local.get $18
     call $~lib/rt/pure/__release
     br $continue|0
    end
    local.get $8
    i32.const 67
    i32.eq
    if
     local.get $6
     f64.load
     local.set $9
     local.get $6
     global.get $assembly/index/SZ
     i32.add
     local.set $6
     local.get $6
     f64.load
     local.set $10
     local.get $6
     global.get $assembly/index/SZ
     i32.add
     local.set $6
     local.get $6
     f64.load
     local.set $11
     local.get $6
     global.get $assembly/index/SZ
     i32.add
     local.set $6
     local.get $6
     f64.load
     local.set $12
     local.get $6
     global.get $assembly/index/SZ
     i32.add
     local.set $6
     local.get $6
     f64.load
     local.set $13
     local.get $6
     global.get $assembly/index/SZ
     i32.add
     local.set $6
     local.get $6
     f64.load
     local.set $14
     local.get $6
     global.get $assembly/index/SZ
     i32.add
     local.set $6
     local.get $6
     f64.load
     local.set $15
     local.get $6
     global.get $assembly/index/SZ
     i32.add
     local.set $6
     local.get $6
     f64.load
     local.set $16
     local.get $6
     global.get $assembly/index/SZ
     i32.add
     local.set $6
     local.get $9
     local.set $26
     local.get $10
     local.set $25
     local.get $11
     local.set $24
     local.get $12
     local.set $23
     local.get $13
     local.set $22
     local.get $14
     local.set $21
     local.get $15
     local.set $20
     local.get $16
     local.set $31
     local.get $2
     i32.const 255
     i32.and
     local.set $17
     i32.const 0
     local.get $17
     call $~lib/array/Array<assembly/index/Vertex>#constructor
     local.set $18
     f64.const 1
     local.get $17
     i32.const 1
     i32.sub
     f64.convert_i32_u
     f64.div
     local.set $37
     block $break|3
      i32.const 0
      local.set $33
      loop $loop|3
       local.get $33
       local.get $17
       i32.lt_u
       i32.eqz
       br_if $break|3
       local.get $33
       f64.convert_i32_u
       local.get $37
       f64.mul
       local.set $38
       f64.const 1
       local.get $38
       f64.sub
       local.set $30
       local.get $30
       local.get $30
       f64.mul
       local.set $29
       local.get $29
       local.get $30
       f64.mul
       local.set $28
       local.get $38
       local.get $38
       f64.mul
       local.set $27
       local.get $27
       local.get $38
       f64.mul
       local.set $34
       f64.const 3
       local.get $29
       f64.mul
       local.get $38
       f64.mul
       local.set $35
       f64.const 3
       local.get $30
       f64.mul
       local.get $27
       f64.mul
       local.set $36
       local.get $18
       local.get $33
       i32.const 16
       i32.const 3
       call $~lib/rt/tlsf/__alloc
       call $~lib/rt/pure/__retain
       local.set $19
       local.get $19
       local.get $28
       local.get $26
       f64.mul
       local.get $35
       local.get $24
       f64.mul
       f64.add
       local.get $36
       local.get $22
       f64.mul
       f64.add
       local.get $34
       local.get $20
       f64.mul
       f64.add
       f64.store
       local.get $19
       local.get $28
       local.get $25
       f64.mul
       local.get $35
       local.get $23
       f64.mul
       f64.add
       local.get $36
       local.get $21
       f64.mul
       f64.add
       local.get $34
       local.get $31
       f64.mul
       f64.add
       f64.store offset=8
       local.get $19
       call $~lib/array/Array<assembly/index/Vertex>#__unchecked_set
       local.get $33
       i32.const 1
       i32.add
       local.set $33
       local.get $19
       call $~lib/rt/pure/__release
       br $loop|3
      end
      unreachable
     end
     local.get $18
     local.set $18
     block $break|4
      i32.const 1
      local.set $17
      local.get $18
      call $~lib/array/Array<assembly/index/Vertex>#get:length
      local.set $19
      loop $loop|4
       local.get $17
       local.get $19
       i32.lt_s
       i32.eqz
       br_if $break|4
       local.get $4
       local.get $7
       call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
       local.tee $33
       local.get $18
       local.get $17
       call $~lib/array/Array<assembly/index/Vertex>#__get
       local.tee $32
       call $~lib/array/Array<assembly/index/Vertex>#push
       drop
       local.get $17
       i32.const 1
       i32.add
       local.set $17
       local.get $33
       call $~lib/rt/pure/__release
       local.get $32
       call $~lib/rt/pure/__release
       br $loop|4
      end
      unreachable
     end
     local.get $18
     call $~lib/rt/pure/__release
     br $continue|0
    end
    local.get $8
    i32.const 90
    i32.eq
    if
     local.get $4
     local.get $7
     local.get $4
     local.get $7
     call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
     local.tee $18
     local.get $3
     call $assembly/index/dedup
     local.tee $32
     call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__set
     local.get $4
     local.get $7
     call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
     local.tee $33
     call $~lib/array/Array<assembly/index/Vertex>#get:length
     i32.const 3
     i32.lt_s
     if
      local.get $4
      local.get $7
      local.get $4
      local.get $7
      call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
      local.tee $19
      f64.const 0
      call $assembly/index/dedup
      local.tee $17
      call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__set
      local.get $19
      call $~lib/rt/pure/__release
      local.get $17
      call $~lib/rt/pure/__release
     end
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     local.get $18
     call $~lib/rt/pure/__release
     local.get $32
     call $~lib/rt/pure/__release
     local.get $33
     call $~lib/rt/pure/__release
     br $continue|0
    end
    br $continue|0
   end
   unreachable
  end
  i32.const 0
  i32.const 2
  i32.const 5
  i32.const 66080
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $32
  call $~lib/rt/pure/__retain
  local.set $33
  i32.const 0
  i32.const 2
  i32.const 5
  i32.const 66096
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $17
  call $~lib/rt/pure/__retain
  local.set $18
  i32.const 0
  local.set $19
  block $break|5
   i32.const 0
   local.set $39
   local.get $4
   call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#get:length
   local.set $40
   loop $loop|5
    local.get $39
    local.get $40
    i32.lt_s
    i32.eqz
    br_if $break|5
    local.get $4
    local.get $39
    call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__get
    local.set $41
    local.get $19
    call $~lib/rt/pure/__release
    local.get $41
    local.set $19
    local.get $1
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if
     local.get $19
     local.get $4
     call $assembly/index/isHole_oddeven
     local.set $41
    else
     local.get $19
     local.get $4
     call $assembly/index/isHole_nonzero
     local.set $41
    end
    local.get $41
    if
     local.get $18
     local.get $19
     call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#push
     drop
    else
     local.get $33
     local.get $19
     call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#push
     drop
    end
    local.get $39
    i32.const 1
    i32.add
    local.set $39
    br $loop|5
   end
   unreachable
  end
  local.get $33
  local.get $18
  call $assembly/index/linkUp
  local.set $41
  local.get $5
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $32
  call $~lib/rt/pure/__release
  local.get $33
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $18
  call $~lib/rt/pure/__release
  local.get $19
  call $~lib/rt/pure/__release
  local.get $41
 )
 (func $~lib/rt/pure/__visit (; 60 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.lt_u
  if
   return
  end
  local.get $0
  i32.const 16
  i32.sub
  local.set $2
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        block $case0|0
         local.get $1
         local.set $3
         local.get $3
         i32.const 1
         i32.eq
         br_if $case0|0
         local.get $3
         i32.const 2
         i32.eq
         br_if $case1|0
         local.get $3
         i32.const 3
         i32.eq
         br_if $case2|0
         local.get $3
         i32.const 4
         i32.eq
         br_if $case3|0
         local.get $3
         i32.const 5
         i32.eq
         br_if $case4|0
         br $case5|0
        end
        local.get $2
        call $~lib/rt/pure/decrement
        br $break|0
       end
       local.get $2
       i32.load offset=4
       i32.const 268435455
       i32.and
       i32.const 0
       i32.gt_u
       i32.eqz
       if
        i32.const 0
        i32.const 65656
        i32.const 75
        i32.const 17
        call $~lib/builtins/abort
        unreachable
       end
       local.get $2
       local.get $2
       i32.load offset=4
       i32.const 1
       i32.sub
       i32.store offset=4
       local.get $2
       call $~lib/rt/pure/markGray
       br $break|0
      end
      local.get $2
      call $~lib/rt/pure/scan
      br $break|0
     end
     local.get $2
     i32.load offset=4
     local.set $3
     local.get $3
     i32.const -268435456
     i32.and
     local.get $3
     i32.const 1
     i32.add
     i32.const -268435456
     i32.and
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 65656
      i32.const 86
      i32.const 6
      call $~lib/builtins/abort
      unreachable
     end
     local.get $2
     local.get $3
     i32.const 1
     i32.add
     i32.store offset=4
     local.get $3
     i32.const 1879048192
     i32.and
     i32.const 0
     i32.ne
     if
      local.get $2
      call $~lib/rt/pure/scanBlack
     end
     br $break|0
    end
    local.get $2
    call $~lib/rt/pure/collectWhite
    br $break|0
   end
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 65656
    i32.const 97
    i32.const 24
    call $~lib/builtins/abort
    unreachable
   end
  end
 )
 (func $~lib/array/Array<assembly/index/Vertex>#__visit_impl (; 61 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    if
     local.get $4
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__visit_impl (; 62 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    if
     local.get $4
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>>#__visit_impl (; 63 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    if
     local.get $4
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<i32>#__visit_impl (; 64 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/rt/__visit_members (; 65 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $block$4$break
   block $switch$1$default
    block $switch$1$case$9
     block $switch$1$case$8
      block $switch$1$case$7
       block $switch$1$case$6
        block $switch$1$case$4
         block $switch$1$case$2
          local.get $0
          i32.const 8
          i32.sub
          i32.load
          br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$2 $switch$1$case$6 $switch$1$case$7 $switch$1$case$8 $switch$1$case$9 $switch$1$case$2 $switch$1$default
         end
         return
        end
        br $block$4$break
       end
       local.get $0
       local.get $1
       call $~lib/array/Array<assembly/index/Vertex>#__visit_impl
       br $block$4$break
      end
      local.get $0
      local.get $1
      call $~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>#__visit_impl
      br $block$4$break
     end
     local.get $0
     local.get $1
     call $~lib/array/Array<~lib/array/Array<~lib/array/Array<assembly/index/Vertex>>>#__visit_impl
     br $block$4$break
    end
    local.get $0
    local.get $1
    call $~lib/array/Array<i32>#__visit_impl
    br $block$4$break
   end
   unreachable
  end
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/pure/__visit
  end
  return
 )
 (func $null (; 66 ;) (type $FUNCSIG$v)
 )
)
