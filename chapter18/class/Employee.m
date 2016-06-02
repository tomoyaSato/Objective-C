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
    return 19.0;
}

@end
