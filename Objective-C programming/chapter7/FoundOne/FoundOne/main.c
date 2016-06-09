//
//  main.c
//  FoundOne
//
//  Created by Minami Kyohei on 2016/06/01.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    for(int i = 99; i >= 0; i = i -3){
        if(i % 5 == 0){
            if(i == 0) printf("%d\n", i);
            printf("Found one!\n");
        }else{
            printf("%d\n",i);
        }
    }
    
    return 0;
}
