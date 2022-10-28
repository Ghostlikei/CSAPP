# Chapter 10: Program Optimization

## 常用的优化方法

- Code motion

把需要重复计算的代码块**提前计算**后带入

- Reduction in Strength(减小计算量)

16*x -> x << 4

乘法用加法替代

```c
for (i = 0; i < n; i++){
	int ni = n*i;
	for (j=0; j<n; j++) a[ni+j]=b[j]
}

// transfer * to +
int ni = 0;
for (i = 0; i < n; i++) {
  for (j = 0; j < n; j++) {
    a[ni + j] = b[j];
  }
  ni += n;
}
```

- Share Common Subexpressions

比如矩阵当中计算一个元素的上下左右元素，可以先把这个元素的index计算出来，之后通过简单的加减即可得到

```c
long index = i*n + j;
up = val[index - n];
down = val[index + n];
left = val[index - 1];
right = val[index + 1];
```

- Memory Aliasing

类似于打表， 把内存当中的部分内容拿出来，代替内存`mov`

```c
double a[9] = {1.1, 1.2, ...};
double b[3] = a + 3
sum_rows(a, b, 3);//直接把需要计算a的内容通过b指针计算，不需要额外的mov
```

### Cycle Per Element(CPE)

用来评价操作每个元素使用的相对时间（周期）

- Loop Unrolling

也叫循环展开，通常用于循环内部，通过流水线操作来减小循环的次数以减小开销，但是并不是总是有效的

```c
// 例子，获得一个数组的累乘
void combine(vec v, data* d) {
  long i;
  data x = IDENT;
  // Loop Unrolling
  for (i = 0; i < limit; i += 2) {
    x = (x OP d[i]) OP d[i+1];
  }
  
  // REASSOCIATION Optimization
  // x = x OP (d[i] OP d[i+1])
  
  for(; i < length; i++) {
    x = x OP d[i];// calculate the remaining data
  }
  
}
```

先和x结合，流水线需要等结果出来才能继续计算，但是如果先算d，那就可以第一次算d[i] op d[i+1], 下一个stage算后两个，

优化程度为$CPE' = CPE/2 + 1$



- Branch Prediction

在进入分支之前，**预测**进入的分支并且提前执行，前提是不会对程序造成损害，如果预测错误则需要倒退

预测失败需要重载缓存区，是有代价的

