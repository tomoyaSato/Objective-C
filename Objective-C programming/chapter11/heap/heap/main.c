//
//  main.c
//  heap
//
//  Created by Minami Kyohei on 2016/06/01.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

/*
int main(int argc, const char * argv[]) {
    
    float *startObBuffer;
    
    startObBuffer = malloc(1000 * sizeof(float));
    
    //ここでバッファを使う
    //メモリ解放して、そのメモリを再利用できるようにする
    free(startObBuffer);
    
    //以前のメモリの場所を忘れる
    startObBuffer = NULL;
    
    return 0;
}
*/

//構造体の宣言
typedef struct{
    float heightInMeters;
    int weightInkilos;
}Person;

float bodyMassIndex(Person p){
    return p.weightInkilos / (p.heightInMeters * p.heightInMeters);
}

int main(int argc, const char * argv[]) {
    
    //１つのperson構造体用のメモリを確保する
    Person *x = (Person *)malloc(sizeof(Person));
    
    //二つのメンバ変数の値を設定する
    x->weightInkilos = 81;
    x->heightInMeters = 2.0;
    
    //このPersonのBMIを出力する
    float xBMI = bodyMassIndex(*x);
    printf("x has a BMI of %f\n", xBMI);
    
    //メモリを再利用できるようにする
    free(x);
    
    //xが差していたものを忘れる
    x = NULL;
    
    return 0;
}