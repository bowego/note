accumulator
counter rep loop
divide
baseAddress

basePointer
stackPointer  small:top->big:bottom
sourceIndex
destinationIndex

DataSegment ds+other+anyNumber
	move DS:[1222H],1234H
CodeSegment cs:ip=codeAddr
StackSegment ss:sp
ExtendSegment

xchg ax,bx
push ax
pop ax
pushf
pusha
popf
popa
lea ax,[si]
lds ax,[si]
les ax,[si]
add ax,bx  influence C,P,A,Z,S,O
sub ax,bx  influence C,P,A,Z,S,O
inc ax ++   influence P,A,Z,S,O
dec ax --	influence P,A,Z,S,O
neg ax infuence C,P,A,Z,S,O
mul,imul ax influence C,P,A,Z,S,O
div,idiv ax influence C,P,A,Z,S,O
cbw,cwd  ax 有符号数扩展指令 influence
aaa,aas,aam,aad 非压bcd码运算调整指令 influence(A,C)(S,Z,P)
daa,das 压缩bcd码运算调整指令 influence C,P,A,Z,S

位运算指令集 and or xor not test 逻辑
shr shl sar sal 移位
ror rol rcr rcl 循环移位
clc stc cmc 设定进位标志 influence C
cld std 设定方向标志 influence D
cli sti 设定中断标志 influence I
cmp a,b CPAZO 
jmp addr
jxx addr 条件满足跳转
loop addr 循环
loope(z)
int n iret n 中断调用和返回,int把标志寄存器入栈,iret标志值栈返回寄存器

字符串操作指令集 movs movsw movsd 字符串传送指令
cmpsb cmpsw cmpsd 字符串比较指令 CPZSO
scasb scasw 字符串搜索指令 CPZSO
lodsb lodsw stosb stosw 字符串载入存贮指令
rep instrs repe instrs repne instrs 重复前缀指令集

汇编语句格式1:指令性语句2:伪指令语句:定义变量名,段名,过程名,符号名
3:数据项:常数,寄存器,存储器
		 变量:段值,偏移地址,类型byte,word,doubleword
		 标号:段值,偏移地址,类型 near段内转义,far段间调用
伪指令:1:数据定义1:变量名 助记符 操作数,操作数 ;注释
				 2:变量名 助记符 n dup(操作数,操作数)
				 db,dw,dd,dq四字,dt十字
	   2:表达式赋值语句: 符号 equ 表达式:左边不允许重新定义
						 符号 = 表达式:左边允许重新定义
	   3:段定义语句:代码,数据,堆栈,附加段
					data segment .. data ends
					起始定位类型:para 节(16整数倍)的整数边界
								 byte 任何字节地址
								 word 字的边界,首地址必须是偶数
								 page 页的边界,256的整数倍
								 none 独立
								 public 同名段连接时由低地址到高地址连接起来
								 common 同名段连接最长的覆盖其余
								 at 表达式 起始地址指定的节边界上
								 stack 堆栈段,中不可省略
								 memory 第一个覆盖其余同名
					2:段分配,assume cs: ds: ss: es: 定义寄存器和段关系
					3:过程定义: 过程名 proc 属性
								过程内容
								ret N
								过程名 endp:主程序可以call指令调用
								段属性,偏移地址,距离属性 ret N 堆栈中应有N各字节作废
		4:程序开始和结束语句1):name 程序名 为源程序目标模块赋予名字
							2)title 文本名
							3)org 给汇编程序设置位置指针,指定下面语句的起始偏移地址
							4)end 标号名 :源程序结束
		5:外部伪指令,对准伪指令
					public 共享
					extrn 使用
					even 下一语句地址为偶地址
					名称 label 属性




dos 中断
输出字符ah 2->21h dl
输入字符ah 0->16h al/读键盘  ah 1->16h al/读键盘缓冲区
ah 4ch->21h 结束中断???
ah 0ah->21h ds:dx指向输入缓冲区,从此缓冲区读数据
ah 09h->21h ds:dx指向缓冲字符串,输出缓冲区数据

offset string 偏移地址
lea dx string 偏移地址



HelloWorld
mov ax,72
push ax
mov ax,103
push ax
mov ax,108
push ax
mov ax,108
push ax
mov ax,111
push ax
mov ax,44
push ax
mov ax,119
push ax
mov ax,111
push ax
mov ax,114
push ax
mov ax,108
push ax
mov ax,100
push ax


