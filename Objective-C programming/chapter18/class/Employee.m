//
//  Employee.m
//  class
//
//  Created by Minami Kyohei on 2016/06/02.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "Employee.h"

@implementation Employee

@synthesize employeeID;

//改めてEmployee.hに宣言する必要はない --Personを継承しているため
-(float)bodyMathIndex{
    //superはスーパクラスのメソッドを検索するという意味
    //つまり、スーパークラスの.bodyMathIndexということになる
    float normalBMI = super.bodyMathIndex;
    return normalBMI * 0.9;
}

@end
