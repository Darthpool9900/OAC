.data
	v: .word 0,1,2,3,4,5,6
	alfa: .word 32 
.text
.globl main
main:
	la $s0,v
	la $s1,alfa
	lw $t0,0($s1)
	sw $t0,0($s0)
	sw $t0,8($s0)
	sw $t0,12($s0)
	sw $t0,16($s0)
	
#Complete o programa de forma que as posições ímpares do vetor \cf{v} recebam o valor de \cf{alfa}. 
#	Não empregue laços (estruturas de repetição).