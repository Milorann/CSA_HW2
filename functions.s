	.file	"functions.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"Cannot open file."
	.text
	.globl	input
	.type	input, @function
input:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, .LC0[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR myfile[rip], rax
	mov	rax, QWORD PTR myfile[rip]
	test	rax, rax
	jne	.L2
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	edi, 1
	call	exit@PLT
.L2:
	mov	rax, QWORD PTR myfile[rip]
	mov	rdx, rax
	mov	esi, 1000
	lea	rax, str[rip]
	mov	rdi, rax
	call	fgets@PLT
	mov	rax, QWORD PTR myfile[rip]
	mov	rdi, rax
	call	fclose@PLT
	nop
	leave
	ret
	.size	input, .-input
	.section	.rodata
.LC2:
	.string	"w"
	.text
	.globl	output
	.type	output, @function
output:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, .LC2[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR myfile[rip], rax
	mov	rax, QWORD PTR myfile[rip]
	mov	rsi, rax
	lea	rax, ans[rip]
	mov	rdi, rax
	call	fputs@PLT
	mov	rax, QWORD PTR myfile[rip]
	mov	rsi, rax
	mov	edi, 10
	call	fputc@PLT
	mov	rax, QWORD PTR myfile[rip]
	mov	rdi, rax
	call	fclose@PLT
	nop
	leave
	ret
	.size	output, .-output
	.section	.rodata
.LC3:
	.string	"Generated string:\n%s"
	.text
	.globl	generate
	.type	generate, @function
generate:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	edi, 0
	call	time@PLT
	mov	edi, eax
	call	srand@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L5
.L6:
	call	rand@PLT
	movsx	rdx, eax
	imul	rdx, rdx, -1401515643
	shr	rdx, 32
	add	edx, eax
	sar	edx, 6
	mov	ecx, eax
	sar	ecx, 31
	sub	edx, ecx
	imul	ecx, edx, 95
	sub	eax, ecx
	mov	edx, eax
	mov	eax, edx
	add	eax, 32
	mov	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	mov	BYTE PTR [rax+rdx], cl
	add	DWORD PTR -4[rbp], 1
.L5:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L6
	lea	rax, str[rip]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	edi, 10
	call	putchar@PLT
	nop
	leave
	ret
	.size	generate, .-generate
	.globl	form_ans
	.type	form_ans, @function
form_ans:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	mov	DWORD PTR -8[rbp], 1
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	jmp	.L8
.L20:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 64
	jle	.L9
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 90
	jle	.L10
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 96
	jle	.L9
.L10:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 122
	jle	.L11
.L9:
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jne	.L12
	add	DWORD PTR -4[rbp], 1
	jmp	.L11
.L12:
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -20[rbp], eax
	jmp	.L13
.L16:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	ecx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -24[rbp]
	add	eax, ecx
	sub	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	cdqe
	lea	rcx, str[rip]
	movzx	eax, BYTE PTR [rax+rcx]
	cmp	dl, al
	je	.L14
	mov	DWORD PTR -8[rbp], 0
	jmp	.L15
.L14:
	add	DWORD PTR -20[rbp], 1
.L13:
	mov	eax, DWORD PTR -24[rbp]
	sub	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, edx
	cmp	DWORD PTR -20[rbp], eax
	jl	.L16
.L15:
	cmp	DWORD PTR -8[rbp], 1
	jne	.L17
	jmp	.L18
.L19:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, str[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, ans[rip]
	mov	BYTE PTR [rax+rcx], dl
	add	DWORD PTR -4[rbp], 1
	add	DWORD PTR -12[rbp], 1
.L18:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jl	.L19
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, ans[rip]
	mov	BYTE PTR [rax+rdx], 32
	add	DWORD PTR -12[rbp], 1
.L17:
	mov	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	mov	DWORD PTR -4[rbp], eax
.L11:
	add	DWORD PTR -16[rbp], 1
.L8:
	cmp	DWORD PTR -16[rbp], 999
	jle	.L20
	nop
	nop
	pop	rbp
	ret
	.size	form_ans, .-form_ans
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
