.data
	a : .word 2
	b : .word 5
	c : .word 5
	d : .word -1
	e : .word 0
.text

.globl main

main:

	la $s0,a
	la $s1,b
	la $s2,c
	la $s3,e
	lw $t0,0($s0)
	lw $t1,0($s1)
	lw $t2,0($s2)
	lw $t5,0($s3)
	
	add $t4,$t0,$t1
	sw $t4,0($s3)
	
	la $s4,d
	lw $t3,0($s4)
	
	add $t4,$t3,$t4
	
	sw $t4,0($s3)
	
	
	
	