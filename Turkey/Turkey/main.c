//
//  main.c
//  Turkey
//
//  Created by Minami Kyohei on 2016/06/01.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    float weight;
    weight = 14.2;
    printf("Thre turkey weight %f. \n", weight);
    float cookingTime;
    cookingTime = 15.0 + 15.0 * weight;
    printf("Cook it for %f minutes. \n", cookingTime);
    return 0;
}
