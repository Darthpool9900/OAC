.data
	mensagem : .ascii "Ola mundo"
.text
.globl main
main:
 la $a0,mensagem
 li $v0,4
 syscall
 li $v0,10
 syscall