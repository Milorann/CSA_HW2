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
Пользователь выбирает ввод из файла. Файл Tests/test4.txt.    
SDS sdk nvn a 2  

##### Результат (одинаковый во всех программах) #####
SDS nvn a  

#### 5 тест ####
Пользователь выбирает генерацию строки из 1000 символов. Сгенерированная строка также добавлена в файл Tests/test5.txt и проверена с использованием ввода из файла.    
;C,rbo+,/xHv/2A}zcWSq6c>=eZI*(YEKc9+SA7_7\SFntAiVu:H)=g(a?NkG&/oiEw:c,vzhG>X<\?rRZ9XV}a8:-!_00LyRE16Q%.8LImi&*YUao/8mmM&zOe,\2#0T2C'7O<dx*K 1%Usra,'OZfH'IQc\Qp1c55xaN]ZX&Zj+.[}og\=?@bFj4(DexRG+e@l4zHm! U)+1%xua63=xVf*^+oX[4'ATKUOp@PprZy!_rw>&(={^"&>*rse(Q$Y|Z*mwW\k2VinF^-LfHEFJHaT;U;@$?z"v"ooYLXi BXF"foe/5,V]j+v@C4Bc,DW.1De[|O[=( <ko"w#,N]vZT5}fW^r{7=-XdeS1Bp6B*#/,z25Gm-"BB|&vYyrpu|FWcyh#g~Bq~N{z^1?L;An];rQtiDb_?*7 $|#l{B[{pWsOf3{"Qh]l[/_EQB"mL6mN3m;/0s(}LxN0)G2Z0lEhy%+KG-9qC'@VqXc"Lh|ubK&ks6D! ijykrE0!["A_?xQtYP??N2=v6kjL-iLsQD_DioECog#,]U"4#>SQPSIf<10IzZ=L~yqei4&Vx*cV\bg_}</KlX0)f@Obwi,sczWJ-]~&dbZABB=@[.kHc{NJ:}*/d4!E/Xp<3o@xOz7n:6/vDw?(qkP,fZ8Lk9q{nb5#OUx{M0jhGv_ho{nad?jLv xc:j\)Kn)wB"to0\UTT2=A,) pHj==g6}"=W)GF/?e21S?n)sC91dE;d3'LQz4dx4cM:(tIHWXY+wH2khKzJm3,!pUOlg5b{u.6= _DW6}'.Drw*;oU)#^'p5WZ|l;u_I)[Ie !{~a+@Q Jlo|ro\z'nR9h<T^x}dUDJUBGQ"OqSO:><71,p,i_[#EwT!qOeDs1y7XI9%8iTR(mg:vXC`6 a[t6]cfC(WQ k*I",^l]2tKy,BOP!eMb?Bu|'Y=,2o)}vO!$/jaA\+8iMg7NKd.j'%d+^"5pn>lcnjgzUF92QQx|60K^tWIy\+"  

##### Результат (одинаковый во всех программах) #####
C A c H g a c X a Q T C O K c e l U Q Y Z k U z v V j v C O w N r B z BB g N z L l B l m s G Z D A N v U L f d E o n q M j A g W e S n d b u p l u I a Q z h T x p i y a t k I l Y o j d K    

#### 6 тест ####
Пользователь выбирает генерацию строки из 10 символов. Сгенерированная строка также добавлена в файл Tests/test6.txt и проверена с использованием ввода из файла.  
.u)kC`L8u_  

##### Результат (одинаковый во всех программах) #####
u L u  

#### 7 тест ####
Пользователь выбирает генерацию строки из 345 символов. Сгенерированная строка также добавлена в файл Tests/test7.txt и проверена с использованием ввода из файла.  
t3cT<2ynqe/6%{Xt7Y3XU$'R~}C2rX/dko9%=4qnv!"xzXn22~kd I4~DW/4-;xv+3{'Dmu8lx1gQ|y'{bBx-TxN)(c7C\.Kl'R.rFF_?XDmR;KL=jE)?>WIC8]fuh/bo_n_&5<Bj'0>|Xjx@-='LS'oldTbMcB:@1zFD7h,uuGoN2eo=dMi8TV"6+dcl%}-3uQW+:a!1)m\9PIV5v@JHvJ^ /Bi1>sE4Ey<'[:nb(H{XrRjfo30c]nci/J{J?>[d5xBn3.Q<WJqJ|Z1lm>PH+227\+axF=[Y3zEG*v'^>O&;*4%tSR=[aMr<UT5|nmS#ixGpl(O+WRFbfHW:wruZ@evu  

##### Результат (одинаковый во всех программах) #####
t Y R C I y c C R n h a m v H c J J d Q Z Y v O O  

#### 8 тест ####
Пользователь выбирает ввод из файла. Файл Tests/test8.txt. Строка из 1001 символа.   
J,W$>N]0JR$9Ed)A.'=X8NLvR>IsmP45]k6{8s)bG.xio"+=''TxU!o(<6x*g-?BvS>/GGnkRhUCg]?HdsA7t.<1E38*=TL4(g@M/09_ul#]JB$-3BA(Q[6snKz, G>&/^S;nizdVz@":D,MfMR5)e)t1$"/H@5T=emkOeM'aj&{/2Gs\y&c'0Xn1Z}Ww0,tuy]F`+M?vP8#b_s<Zz 8(Y'61#m*3z{*qYPOdznXK(\+dMG?HHTP"\d3_R:rJ6y=oJiRBY+m^dx@3A][f2*eknuH>19iD3'2[md}Gol#UbDh!"Ag1HJ}4AFSR\=spA&L/jGTX1T+tuprt2X'X#"lDH@s&Zhs{k=)Wd]-v/8h&)[z;1=s5!^YG=KJW1>S|[YQ@4^4Dv|J VB9gB*|ChTge|2=.Pm()HZG\9[!1VH.*kGq+RlK;>4};F;Ft*N}R)B,@{.NRS\\?%KGT5slS(kkN'/C.[?]aaj"]uP-I.ff00.dE"Nv':_S?osMH3,*rs-Pi][0hBvuR#Wu"'l*>L]]9Q)ab2iU&v#lQ^|8"t.QtcGvj4!)^^dt.mTp >F&2Ioc)l{(^(YSk"KS3L\n)Ad4,6%,TK/fq=GwiA HFWy2VBbin<Vt[8)gN+t V!cF}+>gI?-ov'"JFa43=g(Z /BK:4Kn6/518Sxao#Rc(Q.N4@a3(jj&v-Q1?}|R*/cB'Y"P\T2d&=47]uGc]2iQ=8'\3]/>mo]NI_{&1.k8L|L'otgN$Q|Ag]zz<'6'vtU@QNDcZ-x$*E+y7sE<B@Z*}V#:]9>U.pr]@4AzA:=H\'Ctwe.;&hB"?E9z_XMjI=HfRf^s!Z=[b]PW@[rDD6FaX_\85*!\DFCv. k/W&j7c8o$sbE6ukwOITd^[b8 *Yt8Y'D1f0IGE9H7xnMlZE<!v}]OauLkOA$&=H8bU^*xtS0mB]Zy#sxvrVFQLr=y2> 1c5t:s{3hOCTn}/f}!_tp38B\+\V:zTI^i>x^7)DgIuS1u  

##### Результат (одинаковый во всех программах) #####
J W N A X k s o x g t E g M Q G S D e t H T y c Z F M b s Y m z d R y m A f L T X X s k v h z s S J F N R B C I ff S l L Q v t F l L n t V g Z Q N a jj v Q R Y P T d k L L Q zz x E y B Z V U AzA H E z s Z b k W j c o b Y D f H v H y c t s f B V i x  
(символ за тысячей не был обработан)  

### Программа на C ###
Код находится в папке Code_in_C.  
  
### Оптимизированная программа на ассембелере с комментариями ### 
Код находится в папке Assembly_modified.  
   
### Программа на ассембелере от компилятора ### 
Код находится в файле Assembly_from_C.  
Код получен путем компиляции кода на C следующим образом:  
gcc -masm=intel -fno-asynchronous-unwind-tables -fno-jump-tables -fno-stack-protector -fno-exceptions ./file_name.c -S -o ./file_name.s
  
### Информация, подтверждающая выполнение задания на 8 ###
В программе обрабатываются строки длиной до 1000 символов. Если строка в файле состоит из более, чем 1000 символов, то она обрабатывается до первой тысячи.  
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
#### Результаты замеров на тестах 5, 6 и 7 ####  
##### 5 тест #####
(1000 символов)  
69 секунд необработанный ассемблер.  
64 секунд оптимизированный ассемблер.  

##### 6 тест #####
(10 символов)  
63 секунд необработанный ассемблер.  
63 секунд оптимизированный ассемблер.  

##### 7 тест #####
(345 символов)  
65 секунд необработанный ассемблер.  
63 секунд оптимизированный ассемблер.  
