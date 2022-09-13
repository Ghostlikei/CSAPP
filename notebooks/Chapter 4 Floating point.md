# Chapter 4 Floating Point

#### 二进制表达方式

![Figure 2.4](../src/Figures/Figure 2.4.png)

- 2整数次幂分母

$5+3/4=101.11_{2}$

$1+7/16=1.0111_{2}$

- 非2整数次分母用循环表示

#### 浮点数的表示方法

- 数学形式

$$
(-1)^{s}M2^{E}
$$

s: 决定浮点数是正还是负

M:通常是一个$[1.0,2.0)$上面的一个分数

E:2的指数

- 编码形式

```
s|exp           |frac                                    
```

s为符号位，exp是E的编码，frac是M的编码

- 精度选择

单精度32位：1|8|23

双精度64位：1|11|52

#### 精度和偏差问题

$$
E = Exp-Bias
$$

Exp:unsigned

Bias:$2^{k-1}-1$,对于float来说是127，double是1023

- 用frac可以省一位，例如100.01，先左移浮点变成1.00xx

#### 浮点数表示法举例

`float F = 15213.0`
$$
\begin{align}
15213_{10} &= 11101101101101_{2}\\
&=1.1101101101101_{2}*2^{13}\\
\end{align}
$$
由单精度frac位一共23位即可得知
$$
frac=\underline{1101101101101}0000000000_{2}
$$
然后我们来计算Exp
$$
\begin{align}
E &= 13 \\
Bias &= 127 \\
Exp &= 13 + 127 = 140 = 10001100_{2}
\end{align}
$$
最后我们就可以得到单精度浮点数
$$
\underbrace{0}_{s}\underbrace{10001100}_{exp}\underbrace{11011011011010000000000}_{frac}
$$

- 我们来看一下几个参数的表示范围

$$
0 \leq exp \leq 255 \\
-127 \leq E \leq 128
$$

#### 非标准化的值

- $exp=000..0$

- 指数:$E=1-Bias$  instead of 0 - Bias

#### 特殊值

- $exp=111..1$

- 如果$frac=000..0$

表示$\infty$，$1.0/0.0=-1.0/-0.0=+\infty,1.0/-0.0=-\infty$

- 如果$frac \neq 000..0$

表示NaN，例如$\sqrt{-1},\infty-\infty,\infty*0$

![Figure 2.5](../src/Figures/Figure 2.5.png)
