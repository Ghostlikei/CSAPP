# Chapter 5: Machine Level Programming I: Basics

### 汇编/机器语言总览

![Figure 3.1](..\src\Figures\Figure 3.1.png)

## 汇编语言特征

### 数据类型

- "整形"数据有1,2,4,8个bytes

一般用来表示data values 或者 地址(无类型指针)

- 浮点型数据分为4,8,10个字节
- 没有类似于数组或者结构体类型的数据结构

### 操作符

- Perform arithmetic function on register or memory data
- Transfer data between memory and register
  - Load data from memory into register
  - Store register data into memory
- Transfer control
  - Unconditional jumps to/from prodedures
  - Conditional branches

## 目标代码（Object Code）

- 还没写好

## 寄存器

### x86-64 整数寄存器

![Figure 3.2](..\CSAPP\src\Figures\Figure 3.2.png)

- %r：表示使用64位，%e：表示使用32位（历史遗留问题）
- 旧机器可以访问%e当中的高低2字节，甚至可以访问低位的1字节

- 特殊寄存器

`%rsp`栈指针寄存器

`%rbp`基指针寄存

## 操作数指令符

![Figure 3.4](..\src\Figures\Figure 3.4.png)

## 操作符

### Moving Data

```assembly
mov_ Source, Dest
```

- Combinations

![Figure 3.3](..\src\Figures\Figure 3.3.png)

`Imm`：立即数

`Reg`：寄存器

`Mem`：内存

- 我们来看以下一个例子

C语言

```c
void swap(long *xp, long *yp){
	long t0 = *xp;
	long t1 = *yp;
	*xp = t1;
	*yp = t0;
}
```

汇编代码

```assembly
swap:
	movq (%rdi), %rax
	movq (%rsi), %rdx
	movq %rdx, (%rdi)
	movq %rax, (%rsi)
	ret
```

### Loading effective address(lea)

```assembly
leaq Src, Dst
```

- 类似于c的取地址`&`，Dst只能是寄存器
- 通常用于直接取地址`p = &x[i]`，或者计算类似于$x+k*y,\ k=1,2,4,8$的数学表达式
- 例子 

```c
long m12(long x){
	return x*12;
}
```

```assembly
leaq (%rdi, %rsi, 2), %rax # t = x+x*2
sal $2, %rax # return t << 2
```



### Arithmetic Operations

- 二元操作符

![Figure 3.5](..\src\Figures\Figure 3.5.png)

- 一元操作符

![Figure 3.6](..\src\Figures\Figure 3.6.png)
