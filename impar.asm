.data
	v : .word 0,1,2,3,4,5,6
	alfa: .word 32
.text

.globl main

main:
	la $s0,v
	la $s1,alfa
	lw $t0,0($s1)
	add $t1,$zero,$zero
loop:
	slti $t2,$t1,7
	beq $t2,$zero,saida
	sll $t3,$t0,3
	add $t3,$t3,$s0	
	lw $t4,0($t3)
	add $t4,$t4,$t0
	sw $t4,0($t3)
	addi $t1,$t1,1
	j loop
	
saida: