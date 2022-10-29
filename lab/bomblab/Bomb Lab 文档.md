# Bomb Lab 文档

对应的作业编号为11，汇编的代码太长就不展示了，讲解当中会写一些发现的方法，有的有自己反编译的版本

## 目录

- <a href="res">运行结果</a>
- <a href="process">简要讲解</a>



## <a id="res">解答和运行结果</a>

```sh
> cat solution.txt
The future will be better tomorrow.
0 1 3 6 10 15
7 749
60 3
5 115
6 4 2 1 3 5

> ./bomb solution.txt
Welcome to my fiendish little bomb. You have 6 phases with
which to blow yourself up. Have a nice day!
Phase 1 defused. How about the next one?
That's number 2.  Keep going!
Halfway there!
So you got that one.  Try this one.
Good work!  On to the next...
Congratulations! You've defused the bomb!
```



## <a id="process">简要讲解</a>

### phase 1

比较输入的字符串和内存当中的是否一致,这个函数分为两部分，先通过`string_length`比较两个字符串是否相等，接着通过朴素比较算法，逐字比较是否相等



### phase 2

发现六个数字的规律，写了一个简单的反编译版本

```c
int* phase_2(){
	int[6] array = [0, 0, 0, 0, 0, 0];
  for(int i = 0; i < 6; i++){
    if(i = 0) continue;
    array[i] = array[i-1] + i;
  }
}
```

所以答案就是0, 1, 3, 6, 10, 15



### phase 3

我的感觉是类似于一个`switch ... case`的结构，需要找到正确的case才能避开炸弹，最后把case的赋值得出十进制的答案即可

观察可以得到case 7是不会引发炸弹的，把16进制转化成10进制即可得到答案749



### phase 4

类似于一个递归函数，反编译一个简单的递归的版本

```c
int func4(int a, int b) {
  if (b == 0) return 0;
  if (b == 1) return a;
  return b + func4(a, b - 1) + func4(a, b - 2);
}
```

这个函数不一定准确，但是意思是差不多的，最后可以输入之后在寄存器当中fun4(6)发现结果为60，需要的参数a是3



### phase 5

一个数组链表，数组包含15个元素，需要找到链表的头在哪里（也就是找15次后退出链表，否则会引发炸弹）

写了一个脚本来看每个元素如果找下去需要找几次，找15次的那个就是答案

```py
array = [10, 2, 14, 7, 8, 12, 15, 11, 0, 4, 1, 13, 3, 9, 6, 5]
def main():
    for i in range(0,15):
        print(f"{i}: ", p5(i))

def p5(k):
    edx = 0
    while k != 15:
        edx += 1
        k = array[k]
    return edx
  
main()
```

运行结果

```
0:  6
1:  4
2:  3
3:  13
4:  8
5:  15
6:  1
7:  12
8:  7
9:  9
10:  5
11:  11
12:  14
13:  10
14:  2
```

所以答案就是5，第二个参数就是把0到15加起来，是115



### phase 6

一个链表，需要输出链表当中从小到大的书的位置

汇编一开始需要输入一串1-6，且不能重复的数字的排序

写了一个大概意思的反编译的版本

```c
int check_identity(unsigned int* array){
	for (int i = 0; i < 6; i++){
	  unsigned int identity = array[i]
	  if ((array[i] - 1) > 5) explode_bomb();// 小于等于0也会引爆炸弹
		for (int j = i + 1; j < 6; j++){
			if (array[j] == array[i]) explode_bomb();
		}
	}
}
```

之后通过输入的顺序寻找链表当中的数字，并且按顺序比较，如果比较错误就引爆炸弹

``` c
int check_sequence(int* array, node* Node6){
  int temp1 = Node6.get(array[i]);
  for (int i = 0; i < 6; i++){
    int temp2 = Node6.get(array[i+1]);
    if (temp2 < temp1) explode_bomb();
    temp1 = temp2;
  } 
}
```

通过打印链表即可发现顺序为6，4，2，1，3，5