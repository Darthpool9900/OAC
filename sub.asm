.data
	x : .word 15
	y : .byte 5
	z: .word 0 
.text

.globl main

main:
	la $s0,x
	la $s1,y
	la $s2,z
	lw $t0,0($s0)
	lw $t1,0($s1)
	sub $t3,$t0,$t1
	sw $t3,0($s2)
	lw $t4,0($s2)