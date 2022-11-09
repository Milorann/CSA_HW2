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
	
	mov	r13d, edi                   # загрузка в регистр параметра int n
	mov	edi, 0                      # аргумент для функции time
	call	time@PLT                # time(NULL)
	mov	edi, eax                    # аргумент для функции srand
	call	srand@PLT               # srand(time(NULL))
	
	mov	r12d, 0                     # i = 0
	jmp	.L5                         # прыжок на проверку условия i < n
	
.L6:
	call	rand@PLT                # rand()
	movsx	rdx, eax                # переносим полученное значение 
	
	imul	rdx, rdx, -1401515643   # 
	shr	rdx, 32                     # 
	add	edx, eax                    # 
	sar	edx, 6                      # 
	mov	ecx, eax                    # 
	sar	ecx, 31                     # 
	sub	edx, ecx                    # 
	imul	ecx, edx, 95            # 
	sub	eax, ecx                    # вычисление rand() % 95
	
	add	eax, 32                     # 32 + rand() % 95
	mov	ecx, eax                    # 
	
	mov	eax, r12d                   # берем i
	lea	rdx, str[rip]               # получаем начало str
	mov	BYTE PTR [rax+rdx], cl      # str[i] = 32 + rand() % 95
	
	add	r12d, 1                     # i++
	
.L5:
	cmp	r12d, r13d                  # сравнение i с n
	jl	.L6                         # если i <, то выполняется тело цикла
	
	lea	rsi, str[rip]               # 2-й аргумент для функции printf (str)
	lea	rdi, .LC3[rip]              # 1-й аргумент для функции printf
	mov	eax, 0
	call	printf@PLT              # printf(.LC3, str)
	
	mov	edi, 10                     # 1-й аргумент для функции printf ('\n')
	call	putchar@PLT             # putchar('\n') (printf('\n'))
	leave                           #
	ret                             # выход из подпрограммы
	.size	generate, .-generate
	
	.globl	form_ans
	.type	form_ans, @function
form_ans:                       # подпрограмма формирования ответа
	push	rbp                 #
	mov	rbp, rsp                # подготовка стэка
	
	mov	r13d, 0                     # start = 0
	mov	r15d, 0                     # end = 0
	mov	DWORD PTR -8[rbp], 1        # flag = 1
	mov	r10d, 0                     # ind_ans = 0
	mov	ebx, 0                      # i = 0
	jmp	.L8                         # прыжок на проверку условия i < 1000
	
.L20:
	mov	eax, ebx                    # берем i
	lea	rdx, str[rip]               # получаем начало str
	movzx	eax, BYTE PTR [rax+rdx] # str[i]
	cmp	al, 64                      # сравнение str[i] с 65
	jle	.L9                         # если < 65, то переходим в тело if
	
	mov	eax, ebx                    # берем i
	lea	rdx, str[rip]               # получаем начало str
	movzx	eax, BYTE PTR [rax+rdx] # str[i]
	cmp	al, 90                      # сравнение str[i] с 90
	jle	.L10                        # если <, то проверяем следующее условие
	
	mov	eax, ebx                    # берем i
	lea	rdx, str[rip]               # получаем начало str
	movzx	eax, BYTE PTR [rax+rdx] # str[i]
	cmp	al, 96                      # сравнение str[i] с 97
	jle	.L9                         # если < 97, то переходим в тело if
	
.L10:
	mov	eax, ebx                    # берем i
	lea	rdx, str[rip]               # получаем начало str
	movzx	eax, BYTE PTR [rax+rdx] # str[i]
	cmp	al, 122                     # сравнение str[i] с 122
	jle	.L11                        # если < 122, то заканчиваем шаг цикла
	
.L9:
	mov	eax, ebx                    # i
	mov	r15d, eax                   # end = i
	mov	eax, r13d                   #
	cmp	eax, r15d                   # сравнение start с end
	jne	.L12                        # если не равно, то пропускаем тело if
	
	add	r13d, 1                     # start++
	jmp	.L11                        # завершаем шаг цикла
	
.L12:
	mov	eax, r13d                   # start
	mov	DWORD PTR -20[rbp], eax     # j = start
	jmp	.L13                        # прыжок на проверку условия цикла
	
.L16:
	mov	eax, DWORD PTR -20[rbp]     # j
	lea	rdx, str[rip]               # начало str
	movzx	edx, BYTE PTR [rax+rdx] # str[i]
	mov	ecx, r13d                   # start
	mov	eax, r15d                   # end
	add	eax, ecx                    # start + end 
	sub	eax, DWORD PTR -20[rbp]     # start + end - j
	sub	eax, 1                      # start + end - j - 1
	lea	rcx, str[rip]               # начало str
	movzx	eax, BYTE PTR [rax+rcx] # str[start + end - j - 1]
	
	cmp	dl, al                      # str[j] c str[start + end - j - 1]
	je	.L14                        # если ==, то заканчиваем шаг цикла
	
	mov	DWORD PTR -8[rbp], 0        # flag = 0
	jmp	.L15                        # выход из цикла
	
.L14:
	add	DWORD PTR -20[rbp], 1       # j++
	
.L13:
	mov	eax, r15d                   # end
	sub	eax, r13d                   # end - start
	mov	edx, eax                    # 
	shr	edx, 31                     #
	add	eax, edx                    #
	sar	eax                         # (end - start) / 2
	
	mov	edx, eax
	mov	eax, r13d                   # start
	add	eax, edx                    # start + (end - start) / 2
	
	cmp	DWORD PTR -20[rbp], eax     # j c start + (end - start) / 2
	jl	.L16                        # если <, то выполняется тело цикла
	
.L15:
	cmp	DWORD PTR -8[rbp], 1        # сравнение flag с 1
	jne	.L17                        # если не равно, то пропускам тело if
	jmp	.L18                        # переход в тело if
	
.L19:
	mov	eax, r13d                   # start
	lea	rdx, str[rip]               # начало str
	movzx	edx, BYTE PTR [rax+rdx] # str[start]
	
	mov	eax, r10d                   # ind_ans
	lea	rcx, ans[rip]               # начало ans
	mov	BYTE PTR [rax+rcx], dl      # ans[ind_ans]
	
	add	r13d, 1                     # start++
	add	r10d, 1                     # ind_ans++
	
.L18:
	mov	eax, r13d                   # start
	cmp	eax, r15d                   # сравнение start с end
	jl	.L19                        # если <, переход в тело цикла
	
	mov	eax, r10d                   # ind_ans
	lea	rdx, ans[rip]               # начало ans
	mov	BYTE PTR [rax+rdx], 32      # ans[ind_ans] = ' '
	
	add	r10d, 1                     # ind_ans++
	
.L17:
	mov	DWORD PTR -8[rbp], 1        # flag = 1
	
	mov	eax, r15d                   # end
	add	eax, 1                      # end + 1
	mov	r13d, eax                   # start = end + 1
	
.L11:
	add	ebx, 1                      # i++
	
.L8:
	cmp	ebx, 999                    # сравнение i с 1000
	jle	.L20                        # если <, переход в тело цикла
	pop	rbp                         #
	ret                             # выход из подпрограммы
