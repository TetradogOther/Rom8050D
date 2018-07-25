cmd_/home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/itson/eng/itson/arm/itson/ItsOnAPI.o := /home/gaoxiang.zou/0_code/1_pixi4_6_3g/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin/arm-eabi-gcc -Wp,-MD,/home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/itson/eng/itson/arm/itson/.ItsOnAPI.o.d  -nostdinc -isystem /home/gaoxiang.zou/0_code/1_pixi4_6_3g/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin/../lib/gcc/arm-eabi/4.8/include -I/home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include -Iarch/arm/include/generated  -I/home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include -Iinclude -I/home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi -Iinclude/generated/uapi -include /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/kconfig.h   -I/home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/itson/eng/itson/arm/itson -D__KERNEL__ -mlittle-endian   -I/home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/drivers/misc/mediatek/mach/mt6580/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -Werror=format -Werror=int-to-pointer-cast -Werror=pointer-to-int-cast -O2 -fno-dwarf2-cfi-asm -fno-omit-frame-pointer -mapcs -mno-sched-prolog -fstack-protector -mabi=aapcs-linux -mno-thumb-interwork -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -Wframe-larger-than=1400 -Wno-unused-but-set-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -g -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -DCC_HAVE_ASM_GOTO -DPURGE_LOG -DKERNELVERSION=3 -DITSON_SECURE_LEVEL1_UID="{ 1013, 1000 }" -DITSON_SECURE_LEVEL2_UID="{ 1500 }"  -DMODULE  -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(ItsOnAPI)"  -D"KBUILD_MODNAME=KBUILD_STR(module1)" -c -o /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/itson/eng/itson/arm/itson/ItsOnAPI.o /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/itson/eng/itson/arm/itson/ItsOnAPI.c

source_/home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/itson/eng/itson/arm/itson/ItsOnAPI.o := /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/itson/eng/itson/arm/itson/ItsOnAPI.c

deps_/home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/itson/eng/itson/arm/itson/ItsOnAPI.o := \
    $(wildcard include/config/bridge/netfilter.h) \
    $(wildcard include/config/uidgid/strict/type/checks.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/module.h \
    $(wildcard include/config/sysfs.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/unused/symbols.h) \
    $(wildcard include/config/module/sig.h) \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/tracepoints.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
    $(wildcard include/config/module/unload.h) \
    $(wildcard include/config/constructors.h) \
    $(wildcard include/config/debug/set/module/ronx.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/types.h \
  arch/arm/include/generated/asm/types.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/asm-generic/types.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/int-ll64.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/asm-generic/int-ll64.h \
  arch/arm/include/generated/asm/bitsperlong.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/bitsperlong.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/asm-generic/bitsperlong.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/posix_types.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/stddef.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/stddef.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/compiler-gcc4.h \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/uapi/asm/posix_types.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/asm-generic/posix_types.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/const.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/stat.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/uapi/asm/stat.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/stat.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/ring/buffer.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/lib/gcc/arm-eabi/4.8/include/stdarg.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/linkage.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/stringify.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modversions.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/linkage.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/bitops.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/bitops.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/preempt/monitor.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/typecheck.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/irqflags.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/arm/thumb.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/uapi/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/hwcap.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/uapi/asm/hwcap.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/bitops/non-atomic.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/bitops/fls64.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/bitops/sched.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/bitops/hweight.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/bitops/arch_hweight.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/bitops/const_hweight.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/bitops/lock.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/bitops/le.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/uapi/asm/byteorder.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/byteorder/little_endian.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/byteorder/little_endian.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/swab.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/swab.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/swab.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/uapi/asm/swab.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/byteorder/generic.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/printk.h \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/init.h \
    $(wildcard include/config/broken/rodata.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/kern_levels.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/dynamic_debug.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/kernel.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/sysinfo.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/div64.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/compiler.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/thumb2/kernel.h) \
    $(wildcard include/config/debug/bugverbose.h) \
    $(wildcard include/config/arm/lpae.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/opcodes.h \
    $(wildcard include/config/cpu/endian/be32.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/cache.h \
    $(wildcard include/config/arm/l1/cache/shift.h) \
    $(wildcard include/config/aeabi.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/seqlock.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/context/tracking.h) \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/debug/stack/usage.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/bug.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/crunch.h) \
    $(wildcard include/config/arm/thumbee.h) \
    $(wildcard include/config/mt/rt/sched.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/vfpv3.h) \
    $(wildcard include/config/iwmmxt.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/domain.h \
    $(wildcard include/config/io/36.h) \
    $(wildcard include/config/cpu/use/domains.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/barrier.h \
    $(wildcard include/config/cpu/32v6k.h) \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arch/has/barriers.h) \
    $(wildcard include/config/arm/dma/mem/bufferable.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/outercache.h \
    $(wildcard include/config/outer/cache/sync.h) \
    $(wildcard include/config/outer/cache.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/bottom_half.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/spinlock_types.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/spinlock_types.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/prove/rcu.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/debug_locks.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/atomic.h \
    $(wildcard include/config/arch/has/atomic/or.h) \
    $(wildcard include/config/generic/atomic64.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/atomic.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/cmpxchg.h \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/sa110.h) \
    $(wildcard include/config/cpu/v6.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/cmpxchg-local.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/atomic-long.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/stacktrace.h \
    $(wildcard include/config/stacktrace.h) \
    $(wildcard include/config/user/stacktrace/support.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/rwlock_types.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/spinlock.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/processor.h \
    $(wildcard include/config/have/hw/breakpoint.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/arm/errata/754327.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/hw_breakpoint.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/rwlock.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/spinlock_api_smp.h \
    $(wildcard include/config/inline/spin/lock.h) \
    $(wildcard include/config/inline/spin/lock/bh.h) \
    $(wildcard include/config/inline/spin/lock/irq.h) \
    $(wildcard include/config/inline/spin/lock/irqsave.h) \
    $(wildcard include/config/inline/spin/trylock.h) \
    $(wildcard include/config/inline/spin/trylock/bh.h) \
    $(wildcard include/config/uninline/spin/unlock.h) \
    $(wildcard include/config/inline/spin/unlock/bh.h) \
    $(wildcard include/config/inline/spin/unlock/irq.h) \
    $(wildcard include/config/inline/spin/unlock/irqrestore.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/rwlock_api_smp.h \
    $(wildcard include/config/inline/read/lock.h) \
    $(wildcard include/config/inline/write/lock.h) \
    $(wildcard include/config/inline/read/lock/bh.h) \
    $(wildcard include/config/inline/write/lock/bh.h) \
    $(wildcard include/config/inline/read/lock/irq.h) \
    $(wildcard include/config/inline/write/lock/irq.h) \
    $(wildcard include/config/inline/read/lock/irqsave.h) \
    $(wildcard include/config/inline/write/lock/irqsave.h) \
    $(wildcard include/config/inline/read/trylock.h) \
    $(wildcard include/config/inline/write/trylock.h) \
    $(wildcard include/config/inline/read/unlock.h) \
    $(wildcard include/config/inline/write/unlock.h) \
    $(wildcard include/config/inline/read/unlock/bh.h) \
    $(wildcard include/config/inline/write/unlock/bh.h) \
    $(wildcard include/config/inline/read/unlock/irq.h) \
    $(wildcard include/config/inline/write/unlock/irq.h) \
    $(wildcard include/config/inline/read/unlock/irqrestore.h) \
    $(wildcard include/config/inline/write/unlock/irqrestore.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/math64.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/time.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/uidgid.h \
    $(wildcard include/config/user/ns.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/highuid.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/kmod.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/gfp.h \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/cma.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/mtkpasr.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/wait.h \
  arch/arm/include/generated/asm/current.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/current.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/wait.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/nodemask.h \
    $(wildcard include/config/movable/node.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/bitmap.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/string.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/string.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/page-flags-layout.h \
    $(wildcard include/config/sparsemem/vmemmap.h) \
  include/generated/bounds.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/page.h \
    $(wildcard include/config/cpu/copy/v4wt.h) \
    $(wildcard include/config/cpu/copy/v4wb.h) \
    $(wildcard include/config/cpu/copy/feroceon.h) \
    $(wildcard include/config/cpu/copy/fa.h) \
    $(wildcard include/config/cpu/xscale.h) \
    $(wildcard include/config/cpu/copy/v6.h) \
    $(wildcard include/config/kuser/helpers.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/glue.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/pgtable-2level-types.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/memory.h \
    $(wildcard include/config/need/mach/memory/h.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/phys/offset.h) \
    $(wildcard include/config/virt/to/bus.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/sizes.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/drivers/misc/mediatek/mach/mt6580/include/mach/memory.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/memory_model.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/getorder.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/memory_hotplug.h \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/notifier.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/errno.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/errno.h \
  arch/arm/include/generated/asm/errno.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/asm-generic/errno.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/asm-generic/errno-base.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/mutex/spin/on/owner.h) \
    $(wildcard include/config/mt/debug/mutexes.h) \
    $(wildcard include/config/have/arch/mutex/cpu/relax.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/mutex-debug.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/rwsem-spinlock.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/srcu.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/rcupdate.h \
    $(wildcard include/config/rcu/torture/test.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/tree/preempt/rcu.h) \
    $(wildcard include/config/rcu/trace.h) \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/rcu/user/qs.h) \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/tiny/preempt/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/rcu/nocb/cpu.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/completion.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/rcutree.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/timer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/debug/objects/timers.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/jiffies.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/timex.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/timex.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/param.h \
  arch/arm/include/generated/asm/param.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/asm-generic/param.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/timex.h \
    $(wildcard include/config/arch/multiplatform.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/drivers/misc/mediatek/mach/mt6580/include/mach/timex.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
    $(wildcard include/config/mt/load/balance/enhancement.h) \
    $(wildcard include/config/mtk/sched/cmp/tgs.h) \
    $(wildcard include/config/mtk/sched/cmp/pack/small/task.h) \
    $(wildcard include/config/sched/book.h) \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/smp.h \
    $(wildcard include/config/use/generic/smp/helpers.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/smp.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/pfn.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/percpu.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/percpu.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/topology.h \
    $(wildcard include/config/arm/cpu/topology.h) \
    $(wildcard include/config/arch/scale/invariant/cpu/capacity.h) \
    $(wildcard include/config/disable/cpu/sched/domain/balance.h) \
    $(wildcard include/config/hmp/pack/small/task.h) \
    $(wildcard include/config/mtk/sched/cmp.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/topology.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/sysctl.h \
    $(wildcard include/config/sysctl.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/rbtree.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/sysctl.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/elf.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/elf.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/user.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/elf.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/elf-em.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/kobject.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/sysfs.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/kobject_ns.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/kref.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/moduleparam.h \
    $(wildcard include/config/alpha.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/ppc64.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/tracepoint.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/static_key.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/jump_label.h \
    $(wildcard include/config/jump/label.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/module.h \
    $(wildcard include/config/arm/unwind.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/module.h \
    $(wildcard include/config/have/mod/arch/specific.h) \
    $(wildcard include/config/modules/use/elf/rel.h) \
    $(wildcard include/config/modules/use/elf/rela.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/netfilter_ipv4.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/netfilter_ipv4.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/netfilter.h \
    $(wildcard include/config/netfilter.h) \
    $(wildcard include/config/nf/nat/needed.h) \
    $(wildcard include/config/nf/conntrack.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/skbuff.h \
    $(wildcard include/config/xfrm.h) \
    $(wildcard include/config/net/sched.h) \
    $(wildcard include/config/net/cls/act.h) \
    $(wildcard include/config/ipv6/ndisc/nodetype.h) \
    $(wildcard include/config/net/dma.h) \
    $(wildcard include/config/network/secmark.h) \
    $(wildcard include/config/network/phy/timestamping.h) \
    $(wildcard include/config/netfilter/xt/target/trace.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/kmemcheck.h \
    $(wildcard include/config/kmemcheck.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/mm_types.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/have/cmpxchg/double.h) \
    $(wildcard include/config/have/aligned/struct/page.h) \
    $(wildcard include/config/want/page/debug/flags.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mm/owner.h) \
    $(wildcard include/config/mmu/notifier.h) \
    $(wildcard include/config/transparent/hugepage.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/auxvec.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/auxvec.h \
  arch/arm/include/generated/asm/auxvec.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/asm-generic/auxvec.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/page-debug-flags.h \
    $(wildcard include/config/page/poisoning.h) \
    $(wildcard include/config/page/guard.h) \
    $(wildcard include/config/page/debug/something/else.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/uprobes.h \
    $(wildcard include/config/arch/supports/uprobes.h) \
    $(wildcard include/config/uprobes.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/mmu.h \
    $(wildcard include/config/cpu/has/asid.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/net.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/random.h \
    $(wildcard include/config/arch/random.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/random.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/ioctl.h \
  arch/arm/include/generated/asm/ioctl.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/ioctl.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/asm-generic/ioctl.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/irqnr.h \
    $(wildcard include/config/generic/hardirqs.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/irqnr.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/fcntl.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/fcntl.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/uapi/asm/fcntl.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/asm-generic/fcntl.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/net.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/socket.h \
    $(wildcard include/config/proc/fs.h) \
  arch/arm/include/generated/asm/socket.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/asm-generic/socket.h \
  arch/arm/include/generated/asm/sockios.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/asm-generic/sockios.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/sockios.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/uio.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/uio.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/socket.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/textsearch.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/err.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/slab.h \
    $(wildcard include/config/slab/debug.h) \
    $(wildcard include/config/failslab.h) \
    $(wildcard include/config/slob.h) \
    $(wildcard include/config/slab.h) \
    $(wildcard include/config/slub.h) \
    $(wildcard include/config/debug/slab.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/slub_def.h \
    $(wildcard include/config/slub/stats.h) \
    $(wildcard include/config/memcg/kmem.h) \
    $(wildcard include/config/slub/debug.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/kmemleak.h \
    $(wildcard include/config/debug/kmemleak.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/checksum.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/uaccess.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/checksum.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/in6.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/in6.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/dmaengine.h \
    $(wildcard include/config/async/tx/enable/channel/switch.h) \
    $(wildcard include/config/rapidio/dma/engine.h) \
    $(wildcard include/config/dma/engine.h) \
    $(wildcard include/config/async/tx/dma.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/acpi.h) \
    $(wildcard include/config/pinctrl.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/sysfs/deprecated.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/ioport.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/klist.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/pinctrl/devinfo.h \
    $(wildcard include/config/pm.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/pinctrl/consumer.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/seq_file.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/pinctrl/pinctrl-state.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/pm.h \
    $(wildcard include/config/vt/console/sleep.h) \
    $(wildcard include/config/pm/runtime.h) \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/ratelimit.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/device.h \
    $(wildcard include/config/dmabounce.h) \
    $(wildcard include/config/iommu/api.h) \
    $(wildcard include/config/arm/dma/use/iommu.h) \
    $(wildcard include/config/arch/omap.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/pm_wakeup.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/scatterlist.h \
    $(wildcard include/config/debug/sg.h) \
    $(wildcard include/config/need/sg/dma/length.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/mm.h \
    $(wildcard include/config/x86.h) \
    $(wildcard include/config/ppc.h) \
    $(wildcard include/config/parisc.h) \
    $(wildcard include/config/metag.h) \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/ksm.h) \
    $(wildcard include/config/debug/vm/rb.h) \
    $(wildcard include/config/arch/uses/numa/prot/none.h) \
    $(wildcard include/config/debug/pagealloc.h) \
    $(wildcard include/config/hibernation.h) \
    $(wildcard include/config/hugetlbfs.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/range.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/bit_spinlock.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/shrinker.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/pgtable.h \
    $(wildcard include/config/highpte.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/proc-fns.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/glue-proc.h \
    $(wildcard include/config/cpu/arm7tdmi.h) \
    $(wildcard include/config/cpu/arm720t.h) \
    $(wildcard include/config/cpu/arm740t.h) \
    $(wildcard include/config/cpu/arm9tdmi.h) \
    $(wildcard include/config/cpu/arm920t.h) \
    $(wildcard include/config/cpu/arm922t.h) \
    $(wildcard include/config/cpu/arm925t.h) \
    $(wildcard include/config/cpu/arm926t.h) \
    $(wildcard include/config/cpu/arm940t.h) \
    $(wildcard include/config/cpu/arm946e.h) \
    $(wildcard include/config/cpu/arm1020.h) \
    $(wildcard include/config/cpu/arm1020e.h) \
    $(wildcard include/config/cpu/arm1022.h) \
    $(wildcard include/config/cpu/arm1026.h) \
    $(wildcard include/config/cpu/mohawk.h) \
    $(wildcard include/config/cpu/feroceon.h) \
    $(wildcard include/config/cpu/v6k.h) \
    $(wildcard include/config/cpu/v7.h) \
    $(wildcard include/config/cpu/pj4b.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/pgtable-nopud.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/pgtable-hwdef.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/pgtable-2level-hwdef.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/pgtable-2level.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/pgtable.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/page-flags.h \
    $(wildcard include/config/pageflags/extended.h) \
    $(wildcard include/config/arch/uses/pg/uncached.h) \
    $(wildcard include/config/memory/failure.h) \
    $(wildcard include/config/swap.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/huge_mm.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/vmstat.h \
    $(wildcard include/config/vm/event/counters.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/vm_event_item.h \
    $(wildcard include/config/migration.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/scatterlist.h \
    $(wildcard include/config/arm/has/sg/chain.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/scatterlist.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/io.h \
    $(wildcard include/config/need/mach/io/h.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/pcmcia/soc/common.h) \
    $(wildcard include/config/isa.h) \
    $(wildcard include/config/pccard.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/timerfd.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/timerqueue.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/dma-mapping.h \
    $(wildcard include/config/has/dma.h) \
    $(wildcard include/config/arch/has/dma/set/coherent/mask.h) \
    $(wildcard include/config/have/dma/attrs.h) \
    $(wildcard include/config/need/dma/map/state.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/dma-attrs.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/dma-direction.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/dma-mapping.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/dma-debug.h \
    $(wildcard include/config/dma/api/debug.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/dma-coherent.h \
    $(wildcard include/config/have/generic/dma/coherent.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/dma-mapping-common.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/netdev_features.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/flow_keys.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/if.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/hdlc/ioctl.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/in.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/in.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/netfilter.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/flow.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/netdevice.h \
    $(wildcard include/config/dcb.h) \
    $(wildcard include/config/wlan.h) \
    $(wildcard include/config/ax25.h) \
    $(wildcard include/config/mac80211/mesh.h) \
    $(wildcard include/config/net/ipip.h) \
    $(wildcard include/config/net/ipgre.h) \
    $(wildcard include/config/ipv6/sit.h) \
    $(wildcard include/config/ipv6/tunnel.h) \
    $(wildcard include/config/rps.h) \
    $(wildcard include/config/netpoll.h) \
    $(wildcard include/config/xps.h) \
    $(wildcard include/config/bql.h) \
    $(wildcard include/config/rfs/accel.h) \
    $(wildcard include/config/fcoe.h) \
    $(wildcard include/config/net/poll/controller.h) \
    $(wildcard include/config/libfcoe.h) \
    $(wildcard include/config/wireless/ext.h) \
    $(wildcard include/config/vlan/8021q.h) \
    $(wildcard include/config/net/dsa.h) \
    $(wildcard include/config/net/ns.h) \
    $(wildcard include/config/netprio/cgroup.h) \
    $(wildcard include/config/net/dsa/tag/dsa.h) \
    $(wildcard include/config/net/dsa/tag/trailer.h) \
    $(wildcard include/config/netpoll/trap.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/pm_qos.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/miscdevice.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/major.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/delay.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/delay.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/rculist.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/dynamic_queue_limits.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/ethtool.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/compat.h \
    $(wildcard include/config/compat/old/sigaction.h) \
    $(wildcard include/config/odd/rt/sigaction.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/ethtool.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/if_ether.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/if_ether.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/net_namespace.h \
    $(wildcard include/config/ipv6.h) \
    $(wildcard include/config/ip/sctp.h) \
    $(wildcard include/config/ip/dccp.h) \
    $(wildcard include/config/nf/defrag/ipv6.h) \
    $(wildcard include/config/wext/core.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/netns/core.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/netns/mib.h \
    $(wildcard include/config/xfrm/statistics.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/snmp.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/snmp.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/u64_stats_sync.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/netns/unix.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/netns/packet.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/netns/ipv4.h \
    $(wildcard include/config/ip/multiple/tables.h) \
    $(wildcard include/config/ip/route/classid.h) \
    $(wildcard include/config/security.h) \
    $(wildcard include/config/ip/mroute.h) \
    $(wildcard include/config/ip/mroute/multiple/tables.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/inet_frag.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/percpu_counter.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/netns/ipv6.h \
    $(wildcard include/config/ipv6/multiple/tables.h) \
    $(wildcard include/config/ipv6/mroute.h) \
    $(wildcard include/config/ipv6/mroute/multiple/tables.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/dst_ops.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/netns/sctp.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/netns/dccp.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/netns/netfilter.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/proc_fs.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/fs.h \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/ima.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/debug/writecount.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/fs/xip.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/kdev_t.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/kdev_t.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/dcache.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/rculist_bl.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/list_bl.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/path.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/radix-tree.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/pid.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/capability.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/capability.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/semaphore.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/fiemap.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/migrate_mode.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/percpu-rwsem.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/blk_types.h \
    $(wildcard include/config/blk/cgroup.h) \
    $(wildcard include/config/blk/dev/integrity.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/fs.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/limits.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/quota.h \
    $(wildcard include/config/quota/netlink/interface.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/dqblk_xfs.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/dqblk_v1.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/dqblk_v2.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/dqblk_qtree.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/projid.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/quota.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/nfs_fs_i.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/netns/x_tables.h \
    $(wildcard include/config/bridge/nf/ebtables.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/netns/conntrack.h \
    $(wildcard include/config/nf/conntrack/proc/compat.h) \
    $(wildcard include/config/nf/conntrack/labels.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/list_nulls.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/netfilter/nf_conntrack_tcp.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/netfilter/nf_conntrack_tcp.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/netns/xfrm.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/xfrm.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/seq_file_net.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/sched.h \
    $(wildcard include/config/sched/debug.h) \
    $(wildcard include/config/no/hz/common.h) \
    $(wildcard include/config/lockup/detector.h) \
    $(wildcard include/config/core/dump/default/elf/headers.h) \
    $(wildcard include/config/sched/autogroup.h) \
    $(wildcard include/config/virt/cpu/accounting/native.h) \
    $(wildcard include/config/bsd/process/acct.h) \
    $(wildcard include/config/taskstats.h) \
    $(wildcard include/config/audit.h) \
    $(wildcard include/config/cgroups.h) \
    $(wildcard include/config/inotify/user.h) \
    $(wildcard include/config/fanotify.h) \
    $(wildcard include/config/posix/mqueue.h) \
    $(wildcard include/config/keys.h) \
    $(wildcard include/config/perf/events.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/mt/load/balance/profiler.h) \
    $(wildcard include/config/sched/hmp/prio/filter.h) \
    $(wildcard include/config/sched/hmp.h) \
    $(wildcard include/config/sched/hmp/enhancement.h) \
    $(wildcard include/config/hmp/tracer.h) \
    $(wildcard include/config/mtprof/cputime.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/rt/group/sched.h) \
    $(wildcard include/config/mt/sched/trace.h) \
    $(wildcard include/config/mt/sched/debug.h) \
    $(wildcard include/config/cgroup/sched.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/rcu/boost.h) \
    $(wildcard include/config/compat/brk.h) \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/virt/cpu/accounting/gen.h) \
    $(wildcard include/config/zram.h) \
    $(wildcard include/config/sysvipc.h) \
    $(wildcard include/config/detect/hung/task.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/bcache.h) \
    $(wildcard include/config/have/unstable/sched/clock.h) \
    $(wildcard include/config/irq/time/accounting.h) \
    $(wildcard include/config/no/hz/full.h) \
    $(wildcard include/config/mt/prio/tracer.h) \
    $(wildcard include/config/mtk/sched/rqavg/us.h) \
    $(wildcard include/config/mtk/sched/rqavg/ks.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/sched.h \
  arch/arm/include/generated/asm/cputime.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/cputime.h \
    $(wildcard include/config/virt/cpu/accounting.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/cputime_jiffies.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/sem.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/sem.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/ipc.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/ipc.h \
  arch/arm/include/generated/asm/ipcbuf.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/asm-generic/ipcbuf.h \
  arch/arm/include/generated/asm/sembuf.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/asm-generic/sembuf.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/signal.h \
    $(wildcard include/config/old/sigaction.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/signal.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/signal.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/uapi/asm/signal.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/asm-generic/signal-defs.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/uapi/asm/sigcontext.h \
  arch/arm/include/generated/asm/siginfo.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/siginfo.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/asm-generic/siginfo.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/proportions.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
    $(wildcard include/config/seccomp/filter.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/seccomp.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/seccomp.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/unistd.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/unistd.h \
    $(wildcard include/config/oabi/compat.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/uapi/asm/unistd.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/rtmutex.h \
    $(wildcard include/config/debug/rt/mutexes.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/resource.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/resource.h \
  arch/arm/include/generated/asm/resource.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/resource.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/asm-generic/resource.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/latencytop.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/cred.h \
    $(wildcard include/config/debug/credentials.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/key.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/selinux.h \
    $(wildcard include/config/security/selinux.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/rtpm_prio.h \
    $(wildcard include/config/mt/rt/monitor.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/nsproxy.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/dsa.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/netprio_cgroup.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/cgroup.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/cgroupstats.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/taskstats.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/prio_heap.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/idr.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/xattr.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/xattr.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/cgroup_subsys.h \
    $(wildcard include/config/cgroup/debug.h) \
    $(wildcard include/config/cgroup/cpuacct.h) \
    $(wildcard include/config/cgroup/device.h) \
    $(wildcard include/config/cgroup/freezer.h) \
    $(wildcard include/config/net/cls/cgroup.h) \
    $(wildcard include/config/cgroup/perf.h) \
    $(wildcard include/config/cgroup/hugetlb.h) \
    $(wildcard include/config/cgroup/bcache.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/hardirq.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/ftrace_irq.h \
    $(wildcard include/config/ftrace/nmi/enter.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/vtime.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/hardirq.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/arch/arm/include/asm/irq.h \
    $(wildcard include/config/sparse/irq.h) \
    $(wildcard include/config/multi/irq/handler.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/drivers/misc/mediatek/mach/mt6580/include/mach/irqs.h \
    $(wildcard include/config/fiq/glue.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/drivers/misc/mediatek/mach/mt6580/include/mach/mt_irq.h \
    $(wildcard include/config/of.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/drivers/misc/mediatek/mach/mt6580/include/mach/x_define_irq.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/irq_cpustat.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/neighbour.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/netlink.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/scm.h \
    $(wildcard include/config/security/network.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/security.h \
    $(wildcard include/config/security/path.h) \
    $(wildcard include/config/security/network/xfrm.h) \
    $(wildcard include/config/securityfs.h) \
    $(wildcard include/config/security/yama.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/netlink.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/netdevice.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/if_packet.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/if_link.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/if_link.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/inetdevice.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/rtnetlink.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/rtnetlink.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/if_addr.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/genetlink.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/genetlink.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/genetlink.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/netlink.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/ip.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/ip.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/tcp.h \
    $(wildcard include/config/tcp/md5sig.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/sock.h \
    $(wildcard include/config/net.h) \
    $(wildcard include/config/mtk/net/logging.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/uaccess.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/memcontrol.h \
    $(wildcard include/config/memcg/swap.h) \
    $(wildcard include/config/inet.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/res_counter.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/aio.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/aio_abi.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/filter.h \
    $(wildcard include/config/bpf/jit.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/filter.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/rculist_nulls.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/poll.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/poll.h \
  arch/arm/include/generated/asm/poll.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/asm-generic/poll.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/dst.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/neighbour.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/rtnetlink.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/inet_connection_sock.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/inet_sock.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/jhash.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/unaligned/packed_struct.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/request_sock.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/netns/hash.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/inet_timewait_sock.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/tcp_states.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/timewait_sock.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/tcp.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/udp.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/udp.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/icmp.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/icmp.h \
  include/generated/uapi/linux/version.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/ip.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/ipv6.h \
    $(wildcard include/config/ipv6/privacy.h) \
    $(wildcard include/config/ipv6/router/pref.h) \
    $(wildcard include/config/ipv6/route/info.h) \
    $(wildcard include/config/ipv6/optimistic/dad.h) \
    $(wildcard include/config/ipv6/mip6.h) \
    $(wildcard include/config/ipv6/subtrees.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/ipv6.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/icmpv6.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/icmpv6.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/tcp.h \
    $(wildcard include/config/syn/cookies.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/crypto.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/cryptohash.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/inet_hashtables.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/interrupt.h \
    $(wildcard include/config/irq/forced/threading.h) \
    $(wildcard include/config/generic/irq/probe.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/irqreturn.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/vmalloc.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/route.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/inetpeer.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/ipv6.h \
    $(wildcard include/config/have/efficient/unaligned/access.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/if_inet6.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/ndisc.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/if_arp.h \
    $(wildcard include/config/firewire/net.h) \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/if_arp.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/hash.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/in_route.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/route.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/inet_ecn.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/dsfield.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/net/netfilter/nf_queue.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/netfilter_bridge.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/netfilter_bridge.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/if_vlan.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/etherdevice.h \
  arch/arm/include/generated/asm/unaligned.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/asm-generic/unaligned.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/unaligned/le_struct.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/unaligned/be_byteshift.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/unaligned/generic.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/if_vlan.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/if_pppox.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/ppp_channel.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/if_pppox.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/if_pppol2tp.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/if_pppol2tp.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/if_pppolac.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/if_pppolac.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/linux/if_pppopns.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/include/uapi/linux/if_pppopns.h \
  /home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/itson/eng/itson/arm/itson/ItsOnAPI.h \

/home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/itson/eng/itson/arm/itson/ItsOnAPI.o: $(deps_/home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/itson/eng/itson/arm/itson/ItsOnAPI.o)

$(deps_/home/gaoxiang.zou/0_code/1_pixi4_6_3g/kernel-3.10/itson/eng/itson/arm/itson/ItsOnAPI.o):
