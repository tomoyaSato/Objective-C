//
//  main.c
//  Bitwize
//
//  Created by Minami Kyohei on 2016/06/07.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    unsigned char a = 0x3c;
    unsigned char b = 0xa9;
    
    unsigned char c = a | b; //or演算
    printf("Hex: %x | %x = %x\n", a, b, c);
    printf("Decimal: %d | %d = %d\n", a, b, c);
    
    unsigned char d = a & b;　//and演算
    printf("Hex: %x & %x = %x\n", a, b, d);
    printf("Decimal: %d & %d = %d\n", a, b, d);
    
    unsigned char e = a ^ b;　//xor演算
    printf("Hex: %x ^ %x = %x\n", a, b, e);
    printf("Decimal: %d ^ %d = %d\n", a, b, e);
    
    unsigned char f = a << 2; //左シフト演算 左に２つ
    printf("Hex: %x shift left two places is %x\n", a, f);
    printf("Decimal: %d shifted left two places is %d\n", a, f);
    
    unsigned char g = a >> 1;
    printf("Hex: %x shift right one places is %x\n", a, g);
    printf("Decimal: %d shifted right one places is %d\n", a, g);
    
    return 0;
}
