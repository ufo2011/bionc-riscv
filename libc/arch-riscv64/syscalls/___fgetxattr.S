/* Generated by gensyscalls.py. Do not edit. */

#include <private/bionic_asm.h>

ENTRY(___fgetxattr)
    li      a7, __NR_fgetxattr
    scall

    li      a7, -MAX_ERRNO
    bgtu    a0, a7, 1f;

    ret
1:
    neg     a0, a0
    j       __set_errno_internal
END(___fgetxattr)
.hidden ___fgetxattr
