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
input:                          # подпрограмма считывания строки из файла
	push	rbp                 # 
	mov	rbp, rsp                # 
	sub	rsp, 16                 # подготовка стэка
	
	mov	QWORD PTR -8[rbp], rdi  # загрузка на стэк параметра const char *inp
	mov	rdi, QWORD PTR -8[rbp]  # 1-й аргумент для функции fopen (inp)
	lea	rsi, .LC0[rip]          # 2-й аргумент для функции fopen
	call	fopen@PLT           # fopen(inp, "r")
	mov	r12, rax                # myfile = fopen(inp, "r")
	
	test	rax, rax                # проверка myfile == NULL
	jne	.L2                         # если не равно, то пропускаем тело if
	lea	rdi, .LC1[rip]              # 1-й аргумент для функции printf
	call	puts@PLT                # puts(.LC1) (printf(.LC1) с \n)
	mov	edi, 1                      # аргумент для функции exit
	call	exit@PLT                # exit(1) - завершение программы
	
.L2:
	mov	rdx, r12                    # 3-й аргумент для функции fgets (myfile)
	mov	esi, 1000                   # 2-й аргумент для функции fopen
	lea	rdi, str[rip]               # 1-й аргумент для функции fopen (str)
	call	fgets@PLT               # fgets(str, 1000, myfile)
	
	mov	rdi, r12                    # 1-й аргумент для функции fclose
	call	fclose@PLT              # fclose(myfile)
	leave                           #
	ret                             # завершение подпрограммы
	.size	input, .-input
	
	.section	.rodata
.LC2:
	.string	"w"
	
	.text
	.globl	output
	.type	output, @function
output:                         # подпрограмма вывода ответа в файл
	push	rbp                 #
	mov	rbp, rsp                #
	sub	rsp, 16                 # подготовка стэка
	
	mov	QWORD PTR -8[rbp], rdi  # загрузка на стэк параметра const char *outp
	mov	rdi, QWORD PTR -8[rbp]  # 1-й аргумент для функции fopen (outp)
	lea	rsi, .LC2[rip]          # 2-й аргумент для функции fopen
	call	fopen@PLT           # fopen(outp, "w")
	mov	r12, rax                # myfile = fopen(outp, "w")
	
	mov	rsi, rax                # 2-й аргумент для функции fputs (myfile)
	lea	rdi, ans[rip]           # 1-й аргумент для функции fputs (ans)
	call	fputs@PLT           # fputs(ans, myfile)
	
	mov	rsi, r12                # 2-й аргумент для функции fputs (myfile)
	mov	edi, 10                 # 1-й аргумент для функции fputs ('\n')
	call	fputc@PLT           # fputc('\n', myfile) (fputs("\n", myfile))
	
	mov	rdi, r12                # 1-й аргумент для функции fclose
	call	fclose@PLT          # fclose(myfile)
	leave                       #
	ret                         # завершение подпрограммы
	.size	output, .-output
	
	.section	.rodata
.LC3:
	.string	"Generated string:\n%s"
	
	.text
	.globl	generate
	.type	generate, @function
generate:                       # подпрограмма генерации строки для обработки
	push	rbp                 #
	mov	rbp, rsp                #
	sub	rsp, 32                 # подготовка стэка
	mov	DWORD PTR -20[rbp], edi     # загрузка на стэк параметра int n
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
	leave
	ret
	.size	generate, .-generate
	
	.globl	form_ans
	.type	form_ans, @function
form_ans:                       # подпрограмма формирования ответа
	push	rbp                 #
	mov	rbp, rsp                # подготовка стэка
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -24[rbp], 0
	mov	DWORD PTR -8[rbp], 1
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	jmp	.L8
.L20:
	mov	eax, DWORD PTR -16[rbp]
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 64
	jle	.L9
	mov	eax, DWORD PTR -16[rbp]
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 90
	jle	.L10
	mov	eax, DWORD PTR -16[rbp]
	lea	rdx, str[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	al, 96
	jle	.L9
.L10:
	mov	eax, DWORD PTR -16[rbp]
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
	lea	rdx, str[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	ecx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -24[rbp]
	add	eax, ecx
	sub	eax, DWORD PTR -20[rbp]
	sub	eax, 1
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
	lea	rdx, str[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	eax, DWORD PTR -12[rbp]
	lea	rcx, ans[rip]
	mov	BYTE PTR [rax+rcx], dl
	add	DWORD PTR -4[rbp], 1
	add	DWORD PTR -12[rbp], 1
.L18:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jl	.L19
	mov	eax, DWORD PTR -12[rbp]
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
	pop	rbp
	ret
