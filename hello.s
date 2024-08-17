.global _start

_start:     addi    a0, x0, 1       # stdout file descriptor
            la      a1, string      # address of the string
            addi    a2, x0, 13      # the length of the string
            addi    a7, x0, 64      # write system call number 64
            ecall                   # call the kernel

            addi    a0, x0, 0       # zero means exiting success
            addi    a7, x0, 93      # exit system call number 93
            ecall

.data
string:     .ascii "Hello World!\n"
