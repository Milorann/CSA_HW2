	.file	"main.c"
	.intel_syntax noprefix
	.text
	.globl	str
	.bss
	.align 32
	.type	str, @object
	.size	str, 1000
str:
	.zero	1000
	.globl	ans
	.align 32
	.type	ans, @object
	.size	ans, 1000
ans:
	.zero	1000
	.globl	myfile
	.align 8
	.type	myfile, @object
	.size	myfile, 8
myfile:
	.zero	8
	.section	.rodata
	.align 8
.LC0:
	.string	"Wrong number of command line arguments. Termination of the program."
	.align 8
.LC1:
	.string	"Input:\n1 \342\200\224 read from file\n2 \342\200\224 generate"
.LC2:
	.string	"%d"
	.align 8
.LC3:
	.string	"Input the length of the string from 10 to 1000:"
	.align 8
.LC4:
	.string	"Wrong length. Termination of the program."
.LC5:
	.string	"Seconds spent: %ld\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	DWORD PTR -36[rbp], edi
	mov	QWORD PTR -48[rbp], rsi
	cmp	DWORD PTR -36[rbp], 3
	je	.L2
	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	edi, 1
	call	exit@PLT
.L2:
	mov	DWORD PTR -28[rbp], 0
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, 1
	jne	.L3
	mov	rax, QWORD PTR -48[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	input@PLT
.L3:
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, 2
	jne	.L4
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -32[rbp]
	cmp	eax, 9
	jle	.L5
	mov	eax, DWORD PTR -32[rbp]
	cmp	eax, 1000
	jle	.L6
.L5:
	lea	rax, .LC4[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	edi, 1
	call	exit@PLT
.L6:
	mov	eax, DWORD PTR -32[rbp]
	mov	edi, eax
	call	generate@PLT
.L4:
	mov	edi, 0
	call	time@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L7
.L8:
	mov	eax, 0
	call	form_ans@PLT
	add	DWORD PTR -4[rbp], 1
.L7:
	cmp	DWORD PTR -4[rbp], 2999999
	jle	.L8
	mov	edi, 0
	call	time@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR -16[rbp]
	mov	rsi, rax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	rax, QWORD PTR -48[rbp]
	add	rax, 16
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	output@PLT
	mov	eax, 0
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
