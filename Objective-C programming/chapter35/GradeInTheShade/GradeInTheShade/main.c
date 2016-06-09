//
//  main.c
//  GradeInTheShade
//
//  Created by Minami Kyohei on 2016/06/07.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h> // malloc, free

float averageFloats(float data[], int dataCount){
    float sum = 0.0;
    for (int i = 0; i < dataCount; i++) {
        sum = sum + data[i];
    }
    return sum / dataCount;
}

int main(int argc, const char * argv[]) {
    //フレーム上に配列を宣言する
    //float gradeBook[3];
    //要素数を宣言する必要のない書き方
    float gradeBook[] = {60.2, 94.5, 81.1};
    
    // floatの配列を生成
    /*
    //float *gradeBook = malloc(3 * sizeof(float));
    gradeBook[0] = 60.2;
    gradeBook[1] = 94.5;
    gradeBook[2] = 81.1;
    */
    
    //平均値を計算
    float average = averageFloats(gradeBook, 3);
    
    //解放する必要はない
    //関数が終了するとき自動的に解放される
    /*
    //メモリを解放
    free(gradeBook);
    gradeBook = NULL;
    */
    
    printf("Average is %.2f\n", average);
    
    return 0;
}
