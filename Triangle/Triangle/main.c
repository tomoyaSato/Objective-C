//
//  main.c
//  Triangle
//
//  Created by Minami Kyohei on 2016/06/01.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#include <stdio.h>

float remainingAngle(float angle1, float angle2){
    
    return 180.0 - (angle1 + angle2);
}

int main(int argc, const char * argv[]) {
   
    float angleA = 30;
    float angleB = 60;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n", angleC);
    
    return 0;
}
