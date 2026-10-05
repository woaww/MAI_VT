.data
space: .asciz " "

.text
.globl main

main:
    li a7, 5
    ecall

    li t0, 138
    li t1, 11

    blt a0, t0, less

    mv t2, t0
    mv t3, a0
    j loop

less:
    mv t2, a0
    mv t3, t0

loop:
    bgt t2, t3, exit

    li a7, 1
    mv a0, t2
    ecall

    li a7, 4
    la a0, space
    ecall

    add t2, t2, t1
    j loop

exit:
    li a7, 10
    ecall