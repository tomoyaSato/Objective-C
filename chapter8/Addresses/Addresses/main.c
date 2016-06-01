//
//  main.c
//  Addresses
//
//  Created by Minami Kyohei on 2016/06/01.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int i = 17;
    int *addressOfI = &i; //iのアドレスをポインタ変数addressOfIに代入
    printf("i stores its value at %p\n", addressOfI);
    
    return 0;
}
