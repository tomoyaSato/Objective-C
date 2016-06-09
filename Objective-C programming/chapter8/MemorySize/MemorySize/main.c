//
//  main.c
//  MemorySize
//
//  Created by Minami Kyohei on 2016/06/01.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
   
    
    int shortsize = 2;
    int loop = (8 * sizeof(short)) -1;//bit数
    while(loop > 1){
        shortsize *=  2;
        loop--;
    }
    printf("float size is %zu\n",sizeof(float));
    printf("short max is %d\n" ,shortsize);
    printf("short min ix %d\n", (-1) * shortsize);
    return 0;
}
