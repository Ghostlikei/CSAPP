# Chapter 2: Bits, Bytes, and Integer

#### Boolean Algebra

- `&` : **And**, 交集
- `|`: **Or**，并集
- `~`: **Not**，补集
- `^`: **Exclusive-Or**(异或)，差集

![Figure 2.1](D:\Git_Projects\CSAPP\src\Figures\Figure 2.1.png)

- Contrast to Logical Operators

`&&`, `||`, `!`

`p && *p`判断是否是空指针

判断语句结果是否为真，和位运算不同

return true(1) or false(0)

#### Shift Operations

- `<<` 

左移是没有区别的，`x << y` ：x向左移y位

- `>>`

右移分为以下两种情况：

```
x == 0b10100010;
log. >> 2 == 0b00101000;
arith. >> 2 == 0b11101000;// 补齐最高位
```

#### Numeric Ranges

- Use 5 bits as an example

```
UMax:
0b11111 == 1+2+4+8+16 == 31(2^5-1)
TMax:
0b01111 == 1+2+4+8+0 == 15(2^4-1)
TMin:
0b10000 == -16+0+0+0+0 == -16(-2^4)
-1:
0b11111 == -16+8+4+2+1 == -1
0:
0b00000 == 0
```

- Casting

如果比较函数中两个值出现一个unsigned，那么int会被转换(cast)成unsigned int

```
0 == 0U;
-1 < 0;
-1 > 0U;
(unsigned)-1 > -2;
2147483647 > (int)2147483648U;
```

#### Sign Extension

- Expanding

```
int x = 0b0110;
extend(x,1);
x == 0b00110;

int y = 0b1110;
extend(y,2);
y == 0b111110;//int 每一个扩展位都是原先首位的复制

unsigned int z = 0b1110;
extend(z,4);
z == 0b00001110;
```

- Truncating

无符号相当于取模运算，有符号类似于取模运算

```
int x = 0b11011;// 27
truncate(x,1);
x = 0b1011;()// 27 mod 16 == 11

int y = 0b10011;// -13
truncate(y,1);
y == 0b0011// -13 mod 16 == 3;(-13 / 16 = -1 ... 3)

int z = 0b11010;// -6
truncate(z,1);
z == 0b1010// -6
```

