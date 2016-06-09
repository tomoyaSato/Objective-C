//
//  Employee.m
//  class
//
//  Created by Minami Kyohei on 2016/06/02.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee

@synthesize employeeID;

-(void)addAssetsObject:(Asset *)a{
    //assetsがnilか？
    if(!assets){
        //配列を生成する
        assets = [[NSMutableArray alloc]init];
    }
    [assets addObject:a];
    [a setHolder:self];//AssetのholderにEmployeeのアドレスを保存
    
}
-(unsigned int)valueOfAssets{
    //assetsのresaleValueを合計する
    unsigned int sum = 0;
    
    for(Asset *a in assets){
        sum += [a resaleValue];
    }
    return sum;
}

//改めてEmployee.hに宣言する必要はない --Personを継承しているため
-(float)bodyMathIndex{
    //superはスーパクラスのメソッドを検索するという意味
    //つまり、スーパークラスの.bodyMathIndexということになる
    float normalBMI = super.bodyMathIndex;
    return normalBMI * 0.9
    ;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %d: $%d in assets>", [self employeeID], [self valueOfAssets]];
}

-(void)dealloc
{
    NSLog(@"deallocating %@",self);
}

@end
