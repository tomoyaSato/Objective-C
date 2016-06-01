//
//  main.c
//  Numbers
//
//  Created by Minami Kyohei on 2016/06/01.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    long x = 255;
    printf("x is %ld.\n", x);
    printf("In local, x is %lo. \n", x);
    printf("In hexadecimea, x is %lx.\n", x);
    
    return 0;
}
