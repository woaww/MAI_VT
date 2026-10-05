.text
.globl main

main:
    li a7, 5
    ecall

    li t0, 11
    beq a0, t0, yes

    li a0, 0
    j print

yes:
    li a0, 1

print:
    li a7, 1
    ecall

    li a7, 10
    ecall