/* 
 * CS:APP Data Lab 
 * 
 * <Please put your name and userid here>
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting if the shift amount
     is less than 0 or greater than 31.


EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implement floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants. You can use any arithmetic,
logical, or comparison operations on int or unsigned data.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operations (integer, logical,
     or comparison) that you are allowed to use for your implementation
     of the function.  The max operator count is checked by dlc.
     Note that assignment ('=') is not counted; you may use as many of
     these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */


#endif
//1
/* 
 * bitXor - x^y using only ~ and & 
 *   Example: bitXor(4, 5) = 1
 *   Legal ops: ~ &
 *   Max ops: 14
 *   Rating: 1
 */
int bitXor(int x, int y) {
  // Find where both bits equals 1 and zero them then one others
  int FindAllOne = ~(x&y);
  // Find where both bits equals 0 and zero them then one others
  int FindAllZero = ~(~x&~y);
  // the rests are different where the value should be all 1, then use and operator &
  return FindAllOne & FindAllZero;
}
/* 
 * tmin - return minimum two's complement integer 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 4
 *   Rating: 1
 */
int tmin(void) {
  // Tmin == 0b10000000 == 0x01<<(IntBits - 1)
  int One = 0x01;
  int Tmin = One<<31;
  return Tmin;
}
//2
/*
 * isTmax - returns 1 if x is the maximum, two's complement number,
 *     and 0 otherwise 
 *   Legal ops: ! ~ & ^ | +
 *   Max ops: 10
 *   Rating: 1
 */
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
/* 
 * allOddBits - return 1 if all odd-numbered bits in word set to 1
 *   where bits are numbered from 0 (least significant) to 31 (most significant)
 *   Examples allOddBits(0xFFFFFFFD) = 0, allOddBits(0xAAAAAAAA) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 2
 */
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
/* 
 * negate - return -x 
 *   Example: negate(1) = -1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int negate(int x) {
  // the definition of -(x) operator
  return (~x)+1;
}
//3
/* 
 * isAsciiDigit - return 1 if 0x30 <= x <= 0x39 (ASCII codes for characters '0' to '9')
 *   Example: isAsciiDigit(0x35) = 1.
 *            isAsciiDigit(0x3a) = 0.
 *            isAsciiDigit(0x05) = 0.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 3
 */
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
/* 
 * conditional - same as x ? y : z 
 *   Example: conditional(2,4,5) = 4
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 3
 */
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
/* 
 * isLessOrEqual - if x <= y  then return 1, else return 0 
 *   Example: isLessOrEqual(4,5) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
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
//4
/* 
 * logicalNeg - implement the ! operator, using all of 
 *              the legal operators except !
 *   Examples: logicalNeg(3) = 0, logicalNeg(0) = 1
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 4 
 */
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
//float
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
