.data
	 x : .word 0 , 1 , 12 , 3 , 5 , 8 , 15 , 2 , 1
 	maior : .word 0
 .text
	.globl main
 main :
 	la $s0,x
 	la $s1,maior
 	li $t0,0 #contador [i]
 	
 loop:
 	slti $t1,$t0,8
 	beq $t1,$zero,exit
 	sll $t3,$t0,2
 	add $t3,$t3,$s0
 	lw $t2,0($t3)
 	addi $t0,$t0,1
 	j loop
 exit:
 	