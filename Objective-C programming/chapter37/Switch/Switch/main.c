//
//  main.c
//  Switch
//
//  Created by Minami Kyohei on 2016/06/07.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#include <stdio.h>

void printBeer(){
    printf("Beer is only a little\n");
}

int main(int argc, const char * argv[]) {
    int beer = 2;
    /*
     Objective-Cではswitch文はほとんど用いられない
     switch文は定数しか扱えないため非常に限られた状況でしか機能しない
    */
    switch (beer) {
        case 0:
            printBeer();
            break;
        case 1:
            printBeer();
            break;
        case 2:
            printBeer();
            break;
        default:
            break;
    }
    
    
    return 0;
}
