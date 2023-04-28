.data
 x:.word 0x01020304, 0x01020305, 24
.text
.globl main
main:
la $s0,x
lb $t0,8($s0)