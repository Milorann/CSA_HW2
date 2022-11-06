	.intel_syntax noprefix
	
	.text
	.globl	str
	.bss
	.align 32
	.type	str, @object
	.size	str, 1000
str:            # описание строки, которую надо обработать (char str[1000])
	.zero	1000
	
	.globl	ans
	.align 32
	.type	ans, @object
	.size	ans, 1000
ans:            # описание строки ответа (char ans[1000])
	.zero	1000
	
	.globl	myfile
	.align 8
	.type	myfile, @object
	.size	myfile, 8
myfile:         # описание переменной FILE *myfile
	.zero	8
	
	.section	.rodata         # строки, используемые в функциях
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
main:                       # основная программа
	push	rbp             #
	mov	rbp, rsp            #
	sub	rsp, 48             # подготовка стэка
	
	mov	DWORD PTR -36[rbp], edi     # загрузка argc на стэк
	mov	QWORD PTR -48[rbp], rsi     # загрузка argv на стэк
	
	cmp	DWORD PTR -36[rbp], 3       # сравнение argc с 3
	je	.L2                         # если равно, то пропускаем тело if
	lea	rdi, .LC0[rip]              # 1-й аргумент для функции printf
	call	puts@PLT                # puts(.LC0) (printf(.LC0) с \n)
	mov	edi, 1                      # аргумент для функции exit
	call	exit@PLT                # exit(1) - завершение программы
	
.L2:
	mov	DWORD PTR -28[rbp], 0       # choice = 0
	lea	rdi, .LC1[rip]              # 1-й аргумент для функции printf
	call	puts@PLT                # puts(.LC1) (printf(.LC1) с \n)
	
	lea	rsi, -28[rbp]               # 2-й аргумент для функции scanf (&choice)
	lea	rdi, .LC2[rip]              # 1-й аргумент для функции scanf
	mov	eax, 0
	call	__isoc99_scanf@PLT      # scanf("%d", &choice)
	
	cmp	DWORD PTR -28[rbp], 1       # сравнение choice с 1
	jne	.L3                         # если не равно, то пропускаем тело if
	mov	rax, QWORD PTR -48[rbp]     # argv[0]
	add	rax, 8                      # смещаемся на argv[1]
	mov	rdi, QWORD PTR [rax]        # аргумент для подпрограммы input
	call	input@PLT               # input(argv[1])
	
.L3:
	cmp	DWORD PTR -28[rbp], 2       # сравнение choice с 2
	jne	.L4                         # если не равно, то пропускаем тело if
	lea	rdi, .LC3[rip]              # 1-й аргумент для функции printf
	call	puts@PLT                # puts(.LC3) (printf(.LC3) с \n)
	
	lea	rsi, -32[rbp]               # 2-й аргумент для функции scanf (&len)
	lea	rdi, .LC2[rip]              # 1-й аргумент для функции scanf
	mov	eax, 0
	call	__isoc99_scanf@PLT      # scanf("%d", &len)
	
	cmp	DWORD PTR -32[rbp], 9       # сравнение len с 10
	jle	.L5                         # если < 10, то выполняется тело if
	cmp	DWORD PTR -32[rbp], 1000    # сравнение len с 1000
	jle	.L6                         # если <= 1000, пропускаем тело if
	
.L5:
	lea	rdi, .LC4[rip]              # 1-й аргумент для функции printf
	call	puts@PLT                # puts(.LC4) (printf(.LC4) с \n)
	mov	edi, 1                      # аргумент для функции exit
	call	exit@PLT                # exit(1) - завершение программы
	
.L6:
	mov	edi, DWORD PTR -32[rbp]     # аргумент для подпрограммы generate
	call	generate@PLT            # generate(len)
	
.L4:
	mov	edi, 0                      # аргумент для функции time
	call	time@PLT                # time(NULL)
	mov	QWORD PTR -16[rbp], rax     # time_t start = time(NULL) (rax)
	mov	DWORD PTR -4[rbp], 0        # i = 0
	jmp	.L7                         
	
.L8:
	mov	eax, 0
	call	form_ans@PLT            # form_ans()
	add	DWORD PTR -4[rbp], 1        # i++
	
.L7:
	cmp	DWORD PTR -4[rbp], 2999999  # сравнение i с 3000000
	jle	.L8                         # если < 3000000, то выполняется тело
	mov	edi, 0                      # аргумент для функции time
	call	time@PLT                # time(NULL)
	mov	QWORD PTR -24[rbp], rax     # time_t end = time(NULL) (rax)
	mov	rsi, QWORD PTR -24[rbp]     # rax = end
	sub	rsi, QWORD PTR -16[rbp]     # end - start (2-й аргумент printf)
	lea	rdi, .LC5[rip]              # 1-й аргумент для функции printf
	mov	eax, 0
	call	printf@PLT              # printf(.LC5, end - start)
	
	mov	rax, QWORD PTR -48[rbp]     # argv[0]
	add	rax, 16                     # смещаемся на argv[2]
	mov	rdi, QWORD PTR [rax]        # аргумент для подпрограммы output
	call	output@PLT              # output(argv[2])
	
	mov	eax, 0
	leave                           #
	ret                             # конец основной программы
