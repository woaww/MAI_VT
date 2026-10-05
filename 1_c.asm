.data
array: .space 108

.text
.globl main

main:
    la t0, array
    li t1, 27
    li t2, 0

loop:
    li a7, 5
    ecall

    beq a0, zero, exit

    sw a0, 0(t0)

    addi t0, t0, 4
    addi t2, t2, 1

    beq t1, t2, exit

    j loop

exit:
    li a7, 10
    ecall