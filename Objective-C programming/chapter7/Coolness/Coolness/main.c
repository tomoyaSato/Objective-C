//
//  main.c
//  Coolness
//
//  Created by Minami Kyohei on 2016/06/01.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    int i;
    for(i = 0; i < 12; i++){
        printf("Checking i = %d\n", i);
        if(i + 90 == i * i){
            break;
        }
    }
    printf("The answer is %d.\n", i);
    
    return 0;
}
