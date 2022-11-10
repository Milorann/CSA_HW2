### Листеренко Ольга Руслановна ###
### БПИ 217 ###
  
### Вариант 29 ###
### Задача ###
Разработать программу, которая ищет в ASCII-строке слова — палиндромы и формирует из них новую строку, в которой слова разделяются пробелами. Слова состоят из букв. Все остальные символы являются разделителями слов.  
    
### Тесты ###
Все программы выдают одинаковый результат и были протестированы на следующих примерах:  

#### 1 тест ####
Указано неверное количество аргументов коммандной строки.  
  
##### Результат (одинаковый во всех программах) #####
Wrong number of command line arguments. Termination of the program.   

#### 2 тест ####
Пользователь вводит несуществующий файл для чтения и выбирает чтение из него.  

##### Результат (одинаковый во всех программах) #####
Cannot open file.  

#### 3 тест ####
Пользователь выбирает сгенерировать строку, но указывает длину вне диапазона от 10 до 1000. Например, 9.  

##### Результат (одинаковый во всех программах) #####
Wrong length. Termination of the program.  

#### 4 тест ####
Пользователь выбирает ввод из файла.  
SDS sdk nvn a 2  

##### Результат (одинаковый во всех программах) #####
SDS nvn a  

#### 5 тест ####
Пользователь выбирает генерацию строки из 1000 символов.  
;C,rbo+,/xHv/2A}zcWSq6c>~eZI*(YEKc9+SA7_7\SFntAiVu:H)=g(a?NkG&/oiEw:c,vzhG>X<\?rRZ9XV}a8:-!_00LyRE16Q%.8LImi&*YUao/8mmM&zOe,\2#0T2C'7O<dx*K 1%Usra,'OZfH'IQc\Qp1c55xaN]ZX&Zj+.[}og\=?@bFj4(DexRG+e@l4zHm! U)+1%xua63=xVf*^+oX[4'ATKUOp@PprZy!_rw>&(={^"&>*rse(Q$Y|Z*mwW\k2VinF^-LfHEFJHaT;U;@$?z"v"ooYLXi BXF"foe/5,V]j+v@C4Bc,DW.1De[|O[=( <ko"w#,N]vZT5}fW^r{7=-XdeS1Bp6B*#/,z25Gm-"BB|&vYyrpu|FWcyh#g~Bq~N{z^1?L;An];rQtiDb_?*7 $|#l{B[{pWsOf3{"Qh]l[/_EQB"mL6mN3m;/0s(}LxN0)G2Z0lEhy%+KG-9qC'@VqXc"Lh|ubK&ks6D! ijykrE0!["A_?xQtYP??N2=v6kjL-iLsQD_DioECog#,]U"4#>SQPSIf<10IzZ=L~yqei4&Vx*cV\bg_}</KlX0)f@Obwi,sczWJ-]~&dbZABB=@[.kHc{NJ:}*/d4!E/Xp<3o@xOz7n:6/vDw?(qkP,fZ8Lk9q{nb5#OUx{M0jhGv_ho{nad?jLv xc:j\)Kn)wB"to0\UTT2=A,) pHj==g6}"=W)GF/?e21S?n)sC91dE;d3'LQz4dx4cM:(tIHWXY+wH2khKzJm3,!pUOlg5b{u.6= _DW6}'.Drw*;oU)#^'p5WZ|l;u_I)[Ie !{~a+@Q Jlo|ro\z'nR9h<T^x}dUDJUBGQ"OqSO:><71,p,i_[#EwT!qOeDs1y7XI9%8iTR(mg:vXC`6 a[t6]cfC(WQ k*I",^l]2tKy,BOP!eMb?Bu|'Y=,2o)}vO!$/jaA\+8iMg7NKd.j'%d+^"5pn>lcnjgzUF92QQx|60K^tWIy\+"  

##### Результат (одинаковый во всех программах) #####
C A c H g a c X a Q T C O K c e l U Q Y Z k U z v V j v C O w N r B z BB g N z L l B l m s G Z D A N v U L f d E o n q M j A g W e S n d b u p l u I a Q z h T x p i y a t k I l Y o j d K    

#### 6 тест ####
Пользователь выбирает генерацию строки из 10 символов.  
.u)kC`L8u_  

##### Результат (одинаковый во всех программах) #####
u L u  

#### 7 тест ####
Пользователь выбирает генерацию строки из 345 символов.  
t3cT<2ynqe/6%{Xt7Y3XU$'R~}C2rX/dko9%=4qnv!"xzXn22~kd I4~DW/4-;xv+3{'Dmu8lx1gQ|y'{bBx-TxN)(c7C\.Kl'R.rFF_?XDmR;KL=jE)?>WIC8]fuh/bo_n_&5<Bj'0>|Xjx@-='LS'oldTbMcB:@1zFD7h,uuGoN2eo=dMi8TV"6+dcl%}-3uQW+:a!1)m\9PIV5v@JHvJ^ /Bi1>sE4Ey<'[:nb(H{XrRjfo30c]nci/J{J?>[d5xBn3.Q<WJqJ|Z1lm>PH+227\+axF=[Y3zEG*v'^>O&;*4%tSR=[aMr<UT5|nmS#ixGpl(O+WRFbfHW:wruZ@evu  

##### Результат (одинаковый во всех программах) #####
t Y R C I y c C R n h a m v H c J J d Q Z Y v O O  
    
### Программа на C ###
Код находится в папке Code_in_C.  
  
### Оптимизированная программа на ассембелере с комментариями ### 
Код находится в папке Assembly_modified.  
   
### Программа на ассембелере от компилятора ### 
Код находится в файле Assembly_from_C.  
Код получен путем компиляции кода на C следующим образом:  
gcc -masm=intel -fno-asynchronous-unwind-tables -fno-jump-tables -fno-stack-protector -fno-exceptions ./file_name.c -S -o ./file_name.s
  
### Информация, подтверждающая выполнение задания на 8 ###
Приведен код на C на оценку 8.  
Добавлены комментарии.  
Удалены из конца кода строки ниже ret, а из начала информация о файле, из которой получили код на ассемблере.  
Убраны лишние макросы, в том числе endbr64.    
Удалены cdqe и nop, добавленные компилятором для дополнения.  
Удалены промежуточные присваивания на подобии:  
<img width="151" alt="image" src="https://user-images.githubusercontent.com/57359954/200162263-9bbf45f8-cef4-4c22-a298-bba1cd8c2154.png">  
<img width="180" alt="image" src="https://user-images.githubusercontent.com/57359954/200162287-fd5b32b1-9454-4762-a81c-19b18b748944.png">  
или  
<img width="206" alt="image" src="https://user-images.githubusercontent.com/57359954/200162943-fcd441b2-3f04-4593-894f-d792313ba688.png">  
<img width="184" alt="image" src="https://user-images.githubusercontent.com/57359954/200162977-5a3a157a-adde-41ab-81ab-32c99dbe74d8.png">  
или  
<img width="204" alt="image" src="https://user-images.githubusercontent.com/57359954/200165522-b875b501-484c-48f3-afde-2f32024b0bb1.png">  
<img width="205" alt="image" src="https://user-images.githubusercontent.com/57359954/200165560-70d15e6e-c221-4955-947d-85e72592cc69.png">  
или  
<img width="229" alt="image" src="https://user-images.githubusercontent.com/57359954/200772055-505ef661-547a-4cee-b09e-61b2be62f3d8.png">  
<img width="230" alt="image" src="https://user-images.githubusercontent.com/57359954/200772189-1ac31128-dd15-45fa-8642-7b107632555c.png">    
Программа протестирована на приведенных тестах. Результаты совпадают с результатами программы на C.  
В программе использованы следующие функции с аргументами: ввод из файла (на вход имя файла), вывод в файл (на вход имя файла), генерация случайной строки(на вход n).  
Использованы локальные переменные n, i, end, start, ind_ans, flag, j, choice.  
Добавлены комментарии о передаче параметров (фактических и формальных).
Программа протестирована на приведенных тестах. Результаты совпадают с результатами программы на C.  
-4[rbp] заменен на регистр r12d в основной программе и в generate — это i. В form_ans заменен на r13d — это start. 
-12[rbp] заменен на r10d в form_ans — это ind_ans.  
-16[rbp] заменен на регистр ebx. В form_ans это i.  
-20[rbp] заменен на регистр r13d в generate — это n. В form_ans заменен на r11d — это j.  
-24[rbp] заменен на регистр r15d в form_ans — end.  
-28[rbp] заменен на регистр r13d. В основной программе это choice.  
-48[rbp] заменен на регистр r14. В основной программе это argv.  
myfile[rip] заменен на регистр r12.  
Комментарии об использовании регистров добавлены.  
Программа протестирована на приведенных тестах. Результаты совпадают с результатами программы на C.  
Необработанный файл functions.s занимает 272 строки, обработанный — 266. Начальный main.s — 154 строки, конечный — 137. В оба файла так же были добавлены пустые строки для улучшения читаемости кода. Можно говорить о заметном сокращении кода.  
Программа реализована в виде двух единиц компиляции.  
Реализовано использование файлов. В файле для чтения находится одна строка (читаются первые 1000 символов). Имена файлов являются аргументами командной строки. Первый — файл, из которого читаем, второй — в который записываем: "./program.exe input.txt output.txt". Проверяется количество аргументов, а также существование файла для чтения.  
Подготовлены файлы для тестирования. Расположены в папке Tests.  
В программу добавлен генератор случайной строки длиной от 10 до 1000 (включительно и на усмотрение пользователя). Выбор способа получения строки выполняется через консоль.  
Производится замер времени выполнения 3000000 формирований ответа.  
