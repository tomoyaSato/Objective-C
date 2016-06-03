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
#import "Asset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      //Employeeインスタンスを生成する
        NSMutableArray *employees = [[NSMutableArray alloc] init];
    
        
        for(int i = 0; i < 10; i++){
            // Employee インスタンスを生成する
            Employee *person = [[Employee alloc]init];
            
            //個々のインスタンスを識別できる値を設定する
            [person setWeightInKilos:90 + 1];
            [person setHeightInMeters:1.8 - i / 10.0];
            [person setEmployeeID: i];
            
            //employees配列にEmployeeインスタンスを挿入する
            [employees addObject: person];
        }
        
        //10個のAssetを生成する
        for(int i = 0; i < 10; i++){
            //Assetインスタンスを生成する
            Asset *asset = [[Asset alloc]init];
            
            //個々のインスタンスを識別できるラベルを与える
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];//貼り付ける文字を用意
            [asset setLabel:currentLabel];//lebelにcurrentLabelをセット
            [asset setResaleValue:i *17];
            
            //0以上9以下の乱数を生成する
            NSUInteger randomIndex = random() % [employees count];
            
            //Employeeインスタンスを決める
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            //そのEmployeeにAssetを割り当てる
            [randomEmployee addAssetsObject:asset];
        }
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];
        
        NSLog(@"Giving up ownership of array");
        employees = nil;
        
        
    }
    return 0;
}
