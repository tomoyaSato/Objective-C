//
//  main.m
//  class
//
//  Created by Minami Kyohei on 2016/06/02.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Employee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      //Employeeインスタンスを生成する
        Person *person = [[Employee alloc] init];//Personインスタンスを生成するメモリを確保
        
        //インスタンス変数に値を設定する
        person.weightInKilos = 96;//ドット記法にできない？
        person.heightInMeters = 1.8;
        
        //bodyMassIndexメソッドを呼び出す
        float bmi = person.bodyMathIndex;
        //NSLog(@"Person has a BMI of %f", bmi);
        NSLog(@"person (%d, %.2f) has a BMI of %f",person.weightInKilos, person.heightInMeters, bmi);
    }
    return 0;
}
