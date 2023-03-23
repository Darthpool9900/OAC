.data
	vector : .word 5,4,3,6,9
.text
.globl main
main:
	la $s0,vector
	addi $s1,$0,0#var i = 0
	addi $t2,$0,5#tamanho do vetor
loop:
	slt $t0,$s1,$t2#verifica se o $t0 é menor que $t2
	beq $t0,0,end#se o valor armazenado em $t0 for igual a 0 pula para o final
	sll $t0,$s1,2# desloca o ponteiro do vetor
	add $t0,$t0,$s0 # armazena o endereço $s0 no $t0
	lw $t1,0($t0)#carrega o valor do endereço $s0 em $t1
	addi $t1,$t1,3#soma o valor de vector[i] = vector[i] + 3
	sw $t1,0($t0)#atualiza o valor no endereço de memória
	addi $s1,$s1,1#i = i + 1
	j loop
end:
	