#define __SYSCALL_32BIT_ARG_BYTES 16
#include "SYS.h"

#ifndef SYS_sem_open
#error "SYS_sem_open not defined. The header files libsyscall is building against do not match syscalls.master."
#endif

#if defined(__i386__) || defined(__x86_64__) || defined(__ppc__) || defined(__arm__) || defined(__arm64__)
__SYSCALL2(___sem_open, sem_open, 4, cerror_nocancel)
#endif

#if defined(__i386__)
	.globl	_sem_open
	.set	_sem_open, ___sem_open
#endif

#if defined(__x86_64__)
	.globl	_sem_open
	.set	_sem_open, ___sem_open
#endif

#if defined(__ppc__)
	.globl	_sem_open
	.set	_sem_open, ___sem_open
#endif

#if defined(__arm__)
	.globl	_sem_open
	.set	_sem_open, ___sem_open
#endif

