# Data Lab Solution

## 前言

- 个人对于data lab的题解和讲解文档，累计花费三天时间独立自主完成该lab，没有借鉴任何其他题解或者参考，因此不能保证代码使用的运算步数最少，效率最高，但可以保证能够通过测试和在逻辑上成立，使用的步数在规定范围之内。如有不对的地方，欢迎指出错误，有不一样的想法也可以进行交流。
- 写文档的目的在于分享自己的思路，并没有其他的用途
- 题解思路部分只简单解释一下是如何想到正确解法的，具体实现的过程请见代码的注释
- 做题环境：本地linux(ubuntu)

## 目录

- 本次lab一共13道题目，要求请见文件夹内作业参考文档，简要来说就是只使用**给定的运算符**，在**指定有限**步骤之内实现函数的功能，并且通过测试用例
- <a href="result">测试结果</a>

### 整数部分
- <a href="bitXor">bitXor</a>
- <a href="tmin">tmin</a>
- <a href="isTmax">isTmax</a>
- <a href="allOddBits">allOddBits</a>
- <a href="negate">negate</a>
- <a href="isAsciDigit">isAsciDigit</a>
- <a href="conditional">conditional</a>
- <a href="isLessOrEqual">isLessOrEqual</a>
- <a href="logicalNeg">logicalNeg</a>
- <a href="howManyBits">howManyBits</a>

### 浮点数部分
- <a href="floatScale2">floatScale2</a>
- <a href="floatFloat2Int">floatFloat2Int</a>
- <a href="floatPower2">floatPower2</a>

## 题解

#### 1.<a id="bitXor">bitXor</a>

- 题目要求

```c
/* 
 * bitXor - x^y using only ~ and & 
 *   Example: bitXor(4, 5) = 1
 *   Legal ops: ~ &
 *   Max ops: 14
 *   Rating: 1
 */
```
- 题解思路

实现异或操作符`^`，也就是说把x，y都是0的位变成0，都是1的位变成1，剩下的位全部赋值为1

题目给了取反`~`和取与`&` 操作，我们可以用**与**筛选出全是1的位，取与后是1，再取反变成0，这样一来剩下的位全变成了1；同样的，**取反后取与**能够筛选出全是0的位，进行一样的操作后可以赋值为0，这样剩下的位就全部变成1了，进行取与操作即可获得答案

- 题解

```c
int bitXor(int x, int y) {
  // Find where both bits equals 1 and zero them then one others
  int FindAllOne = ~(x&y);
  // Find where both bits equals 0 and zero them then one others
  int FindAllZero = ~(~x&~y);
  // the rests are different where the value should be all 1, then use and operator &
  return FindAllOne & FindAllZero;
}
```

#### 2.<a id="tmin">tmin</a>

- 题目要求

```c
/* 
 * tmin - return minimum two's complement integer 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 4
 *   Rating: 1
 */
```

- 题解思路

根据CSAPP，`Tmin`的定义就是2的补码的最小值，在二进制表示下就是`0b100000`，0的位数取决于机器定义的整数位数，在`makefile`当中定义编译为32位，所以我们只要取得`0x80000000`，即可

可以使用的整数范围在`0x00` 到`0xff`之间，我们只要取`0x01`再左移31位即可

- 题解

```c
int tmin(void) {
  // Tmin == 0b10000000 == 0x01<<(IntBits - 1)
  int One = 0x01;
  int Tmin = One<<31;
  return Tmin;
}
```

#### 3.<a id="isTmax">isTmax</a>

- 题目要求

```c
/*
 * isTmax - returns 1 if x is the maximum, two's complement number,
 *     and 0 otherwise 
 *   Legal ops: ! ~ & ^ | +
 *   Max ops: 10
 *   Rating: 1
 */
```

- 题解思路

利用边界条件进行操作，`0b01111111`+1之后是`0b10000000`，再取异或之后即可得到**全0**这一独特信息

但是通过测试用例发现，这样的操作对于`0b11111111`是同样成立的，所以要排除这一种情况

这里使用了**取双非**`!!`的方法来保留信息，这一方法在后面也用了很多次，非常重要

- 题解

```c
int isTmax(int x) {
  // 0b01111111 + 1 = 0b10000000
  int TmaxPlusOne = x + 1;
  // 0b01111111 ^ 0b10000000 = 0b11111111
  int bitXorTmax = x ^ (TmaxPlusOne);
  // ~0b11111111 = 0b00000000
  int allDifferent = ~(bitXorTmax);
  // !0 = 1
  int isATmax = !allDifferent;
  // !!(~0b11111111) = 0b00000000
  // !!(~0b11011010) = 0x01
  int excludeMinusOne = !!(~x);
  // only 0x01 & 0x01 is true
  int result = isATmax & excludeMinusOne;
  return result;
}
```

#### 4.<a id="allOddBits">allOddBits</a>

- 题目要求

```c
/* 
 * allOddBits - return 1 if all odd-numbered bits in word set to 1
 *   where bits are numbered from 0 (least significant) to 31 (most significant)
 *   Examples allOddBits(0xFFFFFFFD) = 0, allOddBits(0xAAAAAAAA) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 2
 */
```

- 题解思路

从这道题开始引入了**分离高低位**的思想，因为能够使用的整数范围有限，所以只能最多保留8位的信息

普遍来说，分离的代码如下

```c
int detach8bits = (arg >> 8) & 0b11111111;
```

当然也可以修改移动的位数和保留的位数，保留的位数定位1，其余为0

这样做的好处是可以**分块**保留信息，在最后取得答案的时候需要进行组装

这道题的要求是全奇数位为1，所以需要每8位都满足，所以需要对于每8位进行与操作，最后和`0b10101010`来去一个异或，取单反或者双反来取得答案

- 题解

```c
int allOddBits(int x) {
  //Idea: Seperate every 8 bits and judge whether it is 1 on odd bits
  //Get the const 8 bits for testing
  int test8Bits = 0b10101010;
  //Separate the lowest four bits
  int firstByte = x >> 24;
  int firstResult = firstByte & test8Bits;// if true, return 0b01010101
  // Rest bytes are the same;
  int secondByte = x >> 16;
  int secondResult = secondByte & test8Bits;// if true, return 0b01010101
  int thirdByte = x >> 8;
  int thirdResult = thirdByte & test8Bits;// if true, return 0b01010101
  int fourthByte = x;
  int fourthResult = fourthByte & test8Bits;// if true, return 0b01010101
  //Get the result
  int ans = (firstResult & secondResult & thirdResult & fourthResult) ^ test8Bits;//return 0b00000000 if true
  int result = !ans;
  return result;
}
```



#### 5.<a id="negate">negate</a>

- 题目要求

```c
/* 
 * negate - return -x 
 *   Example: negate(1) = -1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
```

- 题解思路

按照运算符`-`的定义，就是对于整数的取反+1

- 题解

```c
int negate(int x) {
  // the definition of -(x) operator
  return (~x)+1;
}
```

#### 6.<a id="isAsciDigit">isAsciDigit</a>

- 题目要求

```c
/* 
 * isAsciiDigit - return 1 if 0x30 <= x <= 0x39 (ASCII codes for characters '0' to '9')
 *   Example: isAsciiDigit(0x35) = 1.
 *            isAsciiDigit(0x3a) = 0.
 *            isAsciiDigit(0x05) = 0.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 3
 */
```

- 题解思路

这道题需要对于char的范围进行一个判断，需要让其在一定范围内，观察要求可以知道高4位一定是3，低4位一定要在0~9之间，所以同样分离高低位进行操作，这次是分离4位

对于高4位来说，我们需要用`^`来代替`==`操作（这个操作在后面也用了很多次），再取非或取双非获得信息，只要保留是否==3这一个信息即可

对于低4位来说，个人的思路是把0~9进行分块，对于0~7来说，都满足`0b0xxx`这一形式，所以只要看首位是否是0的信息即可

对于8~9来说，一样用`^`来代替==来保留信息

最后把结果进行组装即可

- 题解

```c
int isAsciiDigit(int x) {
  // 0b00110000 <= x <= 0b00111001

  // Extract higher 4 bits and judge whether it equals 0b0011
  int HighFourBits = x >> 4;
  int isHighBitsThree = !!(HighFourBits ^ 0b0011);// if true, = 0
  // Extract lower 4 bits
  int LowerFourBits = x & (0b00001111);

  // if bits are lower than 0b0111(highest bit is 0), it is true
  int isLowerThan7 = LowerFourBits >> 3;//if true, = 0

  // Finally, else if x(mod16) == 0b1000 or 0b1001, it is true
  int is8or9 = ((!(LowerFourBits^(0b00001000)))|(!(LowerFourBits^(0b00001001))));// if true, =1

  // assemble to judge whether lowerbits are lower than 9
  // the corrent situaation should be 1, 1 or 0, 0
  int isLowerThan9 = isLowerThan7 ^ is8or9;// if true, =0

  // assemble to return the result (only 0 | 0 is right)
  int result = !(isHighBitsThree|isLowerThan9);
  return result;
}
```

#### 7.<a id="conditional">conditional</a>

- 题目要求

```c
/* 
 * conditional - same as x ? y : z 
 *   Example: conditional(2,4,5) = 4
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 3
 */
```

- 题解思路

实现一个三元运算符，个人的思路如下

```c
bool x;
int result = y + x*(z-y);
```

通过取非或者取双非来获得x的布尔值，乘法的部分因为只有0和1两种情况，

如果是0，那就把0和z-y按位取与

如果是1，那就把-1（`0b11111111`）和z-y按位取与

-1可以由1的移位操作取得，`1<<31`之后可以得到Tmin，`Tmin`右移31位，因为是算数右移所以可以得到每一位都是1，同时对于0进行同样的操作得到的结果还是0

减法就由`z - y = z + (~y) + 1`取得

最后进行简单的逻辑调整和组装结果即可得到答案

- 题解

```c
int conditional(int x, int y, int z) {
  //Idea: return y + (!x)*(z-y)
  //z - y = z + ~(y) + 1
  int ZminusY = z + ~(y) + 1;
  //Idea: if !x = 0, we create 0x00 & (z-y), else ,we create 0xff&(z-y)
  int condition = !x;
  int Tmin = condition << 31;
  //We use arithmetic shift to create 0xff and 0x00
  int multiOp = Tmin >> 31;
  int result = y + (multiOp & ZminusY);

  return result;
}
```



#### 8.<a id="isLessOrEqual">isLessOrEqual</a>

- 题目要求

```c
/* 
 * isLessOrEqual - if x <= y  then return 1, else return 0 
 *   Example: isLessOrEqual(4,5) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
```

- 题解思路

通过减法操作之后是否是负数来判断大小

本道题一共就三种情况：（假设是8位下操作）

Case1：两正数（0）相减，如果减下来是负数（首位是1）那就满足条件，这种情况下可以证明没有溢出问题，因为最坏情况也就是$0-127=-127$，还在表示范围之内

Case2：两负数相减，和两正数的情况一样，最坏情况也就$-128-(-1) = -127$

Case3：一正一负，这种情况会有溢出的可能，不过好在一共就**正-负**，**负-正**两种情况，直接判断符号位保留信息即可

- 题解

```c
int isLessOrEqual(int x, int y) {
  // Idea: get the sign of X, Y
  // if sgn(x) != sgn(y), sgn(x) == -1, return 1, else return 0
  // else if sgn(x) == sgn(y): return isLess
  int sgnX = (x>>31) & 0x01;
  int sgnY = (y>>31) & 0x01;
  // less x - y >> 31 == 1 (xy > 0)
  int isLess = !((y + ~(x) + 1) >> 31 & 0x01);
  // return sgn(X) == sgn(Y) ? isLess : sgnX;
  // Now we implement the (conditional(x, y, z)) function
  int X = !(sgnX ^ sgnY);
  int Y = isLess;
  int Z = sgnX;

  int ZminusY = Z + ~(Y) + 1;
  int condition = !X;
  int Tmin = condition << 31;
  int multiOp = Tmin >> 31;
  int result = Y + (multiOp & ZminusY);

  return result;
}
```



#### 9.<a id="logicalNeg">logicalNeg</a>

- 题目要求

```c
/* 
 * logicalNeg - implement the ! operator, using all of 
 *              the legal operators except !
 *   Examples: logicalNeg(3) = 0, logicalNeg(0) = 1
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 4 
 */
```

- 题解思路

是0取1，非1取0

在2的补码表示下，0有一条很重要的性质，也就是$-0=0$，取负之后和自己异或即可保留信息

然而，2的补码当中有一个整数也满足这一个性质，也就是Tmin，需要排除这一种情况（本题使用移位取得信息）

- 题解

```c
int logicalNeg(int x) {
  // Idea: Resemble isTmax, only 0b00000000 and 0b10000000 match x = -x
  int NegX = ~(x) + 1;
  // if x != -x,  x^(-x) the highest bit should be 1, then shift to the right
  // 0b1xxxxxxx >> 31 = 0xffff mod 1 = 0x01
  int HighestBit = (NegX >> 31) & 0x01;
  // then exclude 0b10000000, x >> 31 = 0xff, (0xff + 2) mod 1 = 1, then we get this infomation
  int excludeTmin = ((x >> 31)+2) & 1;
  // finally only 0 returns (0 | 0) ^ 1
  int result = (HighestBit | excludeTmin) ^ 1;
  return result;
}
```



#### 10.<a id="howManyBits">howManyBits</a>

- 题目要求

```c
/* howManyBits - return the minimum number of bits required to represent x in
 *             two's complement
 *  Examples: howManyBits(12) = 5
 *            howManyBits(298) = 10
 *            howManyBits(-5) = 4
 *            howManyBits(0)  = 1
 *            howManyBits(-1) = 1
 *            howManyBits(0x80000000) = 32
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 90
 *  Rating: 4
 */
```

- 题解思路

我们可以观察到负数需要的位数和他们进行取反`~`操作是一样的，原因在于这是2的补码的性质，也就是除了tmin都有一个正数和负数一一对应，这样一来，我们可以简化问题，使其变成正数最多需要几位

这道题目的关键在于**找出正整数的最高位**，个人的想法还是**分块**操作，用基16,8,4,2,1为基就可以表示31以内的任何一位数，加上一个符号位正好是32位

先判断高16位有没有1，如果有则右移16位，保留高位有1的信息，没有则不进行任何操作

对于处理之后的数，只剩下低16位，再判断高8位有没有1，和上面的方法一样，以此递推，最后加上符号位一个1，就可以得到答案

- 题解

```c
int howManyBits(int x) {
  int negative = (x>>31) & 0x01;
  // x < 0 ? -x : x; use condition() here
  int y = ~(x);
  int z = x;
  int ZminusY = z + ~(y) + 1;
  int condition = !negative;
  int Tmin = condition << 31;
  int multiOp = Tmin >> 31;
  int X = y + (multiOp & ZminusY);
  // Idea: use base 16, 8, 4, 2, 1 to express every number under 32
  // x >> 16 == 0 ? x : x >> 16
  int shiftedX = X >> 16;
  int isHigher16Empty = !(shiftedX ^ 0x00);// return 1 if true
  int saveOriginBits = isHigher16Empty << 31 >> 31;
  int saveShiftedBits = ~saveOriginBits;
  X = (saveOriginBits & X) + (saveShiftedBits & shiftedX);
  //For right shifting 8, 4, 2, 1 bits the operation is the same
  shiftedX = X >> 8;
  int isHigher8Empty = !(shiftedX ^ 0x00);// return 1 if true
  saveOriginBits = isHigher8Empty << 31 >> 31;
  saveShiftedBits = ~saveOriginBits;
  X = (saveOriginBits & X) + (saveShiftedBits & shiftedX);

  shiftedX = X >> 4;
  int isHigher4Empty = !(shiftedX ^ 0x00);// return 1 if true
  saveOriginBits = isHigher4Empty << 31 >> 31;
  saveShiftedBits = ~saveOriginBits;
  X = (saveOriginBits & X) + (saveShiftedBits & shiftedX);

  shiftedX = X >> 2;
  int isHigher2Empty = !(shiftedX ^ 0x00);// return 1 if true
  saveOriginBits = isHigher2Empty << 31 >> 31;
  saveShiftedBits = ~saveOriginBits;
  X = (saveOriginBits & X) + (saveShiftedBits & shiftedX);

  shiftedX = X >> 1;
  int isHigher1Empty = !(shiftedX ^ 0x00);// return 1 if true
  saveOriginBits = isHigher1Empty << 31 >> 31;
  saveShiftedBits = ~saveOriginBits;
  X = (saveOriginBits & X) + (saveShiftedBits & shiftedX);

  int isHigher0Empty = !(X ^ 0x00);

  //Concat the result 
  int result = ((!isHigher16Empty << 4) + (!isHigher8Empty << 3) + (!isHigher4Empty << 2) + (!isHigher2Empty << 1) + ((!isHigher1Empty) + (!isHigher0Empty))) + 1;
  return result;


  
  

}
```



#### 11.<a id="floatScale2">floatScale2</a>

- 题目要求

```c
/* 
 * floatScale2 - Return bit-level equivalent of expression 2*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
```

- 题解思路

引入了逻辑符号之后，题解会变得相对容易，同样，对于浮点数，这三道题最关键的有以下几点

1.单精度浮点数满足1|8|23的结构，计算公式是$(-1)^s*M*2^{Exp-Bias}$

2.浮点数需要处理溢出问题，对于denormalized的数以及越界数：$+inf,-inf,NaN$需要特别注意

所以这三道题个人都是分离这三部分，分别进行操作之后最后组装获得答案

对于这一道题来说，

先排除Exp位为`0b11111111`的情况，

再对于\*2之后越界的数单独取出，

最后处理denormalized情况，发现有一个性质，也就是对于这些数，左移frac的位正好可以把1放到Exp位上，满足了\*2的条件

剩下的界内情况只要把Exp位+1即可

- 题解

```c
unsigned floatScale2(unsigned uf) {
  //
  int sgn = (uf >> 31) & 1;
  int exp = (uf >> 23) & 0xff;
  int frac = (uf << 9) >> 9;
  // if overflowed, return the arg itself
  if (!(exp ^ 0b11111111)) return uf;
  // judge whether uf is a normalized number
  int normalized = !!(exp ^ 0x00);// return 1 if normalized
  // 2*f means E + 1 if exp
  if (normalized) exp = exp + 1;
  // if the first bit of frac is 1 and denormalized, this bit 1 is moved to exp part
  if (!normalized) frac <<= 1;
  // Concat the parts and return
  int result = (sgn << 31) | (exp << 23) | frac;
  return result;
}
```

#### 12.<a id="floatFloat2Int">floatFloat2Int</a>

- 题目要求

```c
/*  
 * floatFloat2Int - Return bit-level equivalent of expression (int) f
 *   for floating point argument f.
 *   Argument is passed as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point value.
 *   Anything out of range (including NaN and infinity) should return
 *   0x80000000u.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
```

- 题解思路

这道题的越界情况就是超过$2^{31}$的情况，我们知道指数位的计算公式$E=Exp-Bias$,而在`float`当中，$Bias=127$，所以即可得到指数分段Exp的范围

对于越上界（$>2^{31}$）返回Tmin

对于越下界（$<2^{0}$）返回0

剩下的情况对于frac部分进行左移操作即可，对于负数则转化为2的补码表示

- 题解

```c
int floatFloat2Int(unsigned uf) {
  //Get the parts of float
  int sgn = (uf >> 31);// return 0 if positive
  int exp = (uf >> 23) & 0b11111111;
  // Concat the 1.0 with frac part
  int frac = (uf << 9) >> 9 | (0b10000000 << 16);

  //Whether uf is inf/NaN
  int overflow = !(exp ^ 0b11111111);// if true, return 1
  if (overflow) return 0x80000000;
  // Since E = exp - bias(127), we know if exp < 127, then return 0
  int underflow = !(((exp + 1) >> 7 ));// if true, return 1
  if (underflow) return 0;
  // if E = exp-bias >= 31, we get a overflowed number
  int shiftOverflow = !!(((exp + (~(127)) + 2) >> 6) ^ 0x00);// if true, return 1
  if (shiftOverflow) return 0x80000000;
  // We have excluded all boundary situations, we right shift(23-(exp-bias))
  int result;
  int shiftBits = 151 + ~(exp);
  // in C, >> a negative number is undefined
  int definedRightShift = (shiftBits>>31) & 0x01;
  if (definedRightShift){
    result = frac << (~shiftBits + 1);
  }
  if(!definedRightShift){
    result = frac >> shiftBits;
  }
  if (sgn) return ~result + 1;
  return result;
}
```

#### 13.<a id="floatPower2">floatPower2</a>

- 题目要求

```c
/* 
 * floatPower2 - Return bit-level equivalent of the expression 2.0^x
 *   (2.0 raised to the power x) for any 32-bit integer x.
 *
 *   The unsigned value that is returned should have the identical bit
 *   representation as the single-precision floating-point number 2.0^x.
 *   If the result is too small to be represented as a denorm, return
 *   0. If too large, return +INF.
 * 
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. Also if, while 
 *   Max ops: 30 
 *   Rating: 4
 */
```

- 题解思路

这道题好在要求仅仅是2的整数次幂，所以只要进行简单的移位操作和判断越界问题即可，请见代码注释

- 题解

```c
unsigned floatPower2(int x) {
  //Idea: the exp range is 0 to 255, exp = x + 127
  int exp = x + 127;
  //So if x + 127 <= 0, return 0
  int underflow = !!((x + 127) >> 31);//if underflow, return 1
  if(underflow) return 0;
  //If x + 127 >= 255, return +inf
  int overflow = !!(((x + 127 + 1) >> 8) ^ 0x00);// if overflow, return 1
  if (overflow) return 0b11111111 << 23;
  return exp << 23;
}

```



## <a id="result">测试结果</a>

- 本地测试

```sh
./btest -T 50
```

```sh
Score	Rating	Errors	Function
 1	1	0	bitXor
 1	1	0	tmin
 1	1	0	isTmax
 2	2	0	allOddBits
 2	2	0	negate
 3	3	0	isAsciiDigit
 3	3	0	conditional
 3	3	0	isLessOrEqual
 4	4	0	logicalNeg
 4	4	0	howManyBits
 4	4	0	floatScale2
 4	4	0	floatFloat2Int
 4	4	0	floatPower2
Total points: 36/36
```

- [Github Action 测试](https://github.com/GhostlikeVM/Computer-Systems-Labs/actions/runs/3110877849/jobs/5042531251)