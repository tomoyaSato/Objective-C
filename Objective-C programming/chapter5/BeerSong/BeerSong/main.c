//
//  main.c
//  BeerSong
//
//  Created by Minami Kyohei on 2016/06/01.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#include <stdio.h>

void singTheSong(int number){
    if(number == 0){
        printf("There are simply no more bottles of beer on the wall. \n");
    }else{
        printf("%d bottles of beer on thre wall. %d bottles of beer. \n", number, number);
        int oneFewer = number - 1;
        
        printf("Take one down, pass it around, %d bottles of beer. \n", oneFewer);
        singTheSong(oneFewer);
        printf("Put a bottle in thre recyling, %d empty bottles in the bin. \n", number);
        
    }
    
}

int main(int argc, const char * argv[]) {
    // insert code here...
    singTheSong(99);
    return 0;
}
