//
//  main.m
//  class
//
//  Created by Minami Kyohei on 2016/06/02.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      //Personインスタンスを生成する
        Person *person = [[Person alloc] init];//Personインスタンスを生成するメモリを確保
        
        //インスタンス変数に値を設定する
        [person setWeightInKilos:96];//ドット記法にできない？
        [person setHeightInMeters:1.8];//同じく
        
        //bodyMassIndexメソッドを呼び出す
        float bmi = person.bodyMathIndex;
        //NSLog(@"Person has a BMI of %f", bmi);
        NSLog(@"person (%d, %.2f) has a BMI of %f",person.getWeightInkilos, person.getHeightInMeters, bmi);
    }
    return 0;
}
