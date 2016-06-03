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
        
        //executivesディクショナリを生成する
        NSMutableDictionary *executives =
        [[NSMutableDictionary alloc] init];
        
        for(int i = 0; i < 10; i++){
            // Employee インスタンスを生成する
            Employee *person = [[Employee alloc]init];
            
            
            //個々のインスタンスを識別できる値を設定する
            [person setWeightInKilos:90 + 1];
            [person setHeightInMeters:1.8 - i / 10.0];
            [person setEmployeeID: i];
            
            //employees配列にEmployeeインスタンスを挿入する
            [employees addObject: person];
            
            //最初の従業員か？
            if(i == 0){
                [executives setObject:person forKey: @"CEO"];
            }
            //2番目の従業員か？
            if(i == 1){
                [executives setObject:person forKey:@"CTO"];
            }
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
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
            
            [allAssets addObject: asset];
        }
        
       /*
        //21章追加部分-sort
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSSortDescriptor *ei = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        [employees sortUsingDescriptors:[NSArray arrayWithObjects: voa,ei,nil]];
        //ここまで
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];
        
        
        //20章追加部分
        NSLog(@"allAssets: %@",allAssets);
        //
        */
        
        /*
        //21章追加部分-filter
        NSPredicate *predicate =
            [NSPredicate predicateWithFormat:@"holder.valueOdAssets > 70"];
        NSArray *toBeReclaimed =
            [allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"toBeRecclaimed: %@", toBeReclaimed);
        toBeReclaimed = nil;
        //ここまで
        */
        
        NSLog(@"executives: %@", executives);
        
       // NSLog(@"Giving up ownership of array");
        employees = nil;
        allAssets = nil;
        
        
    }
    return 0;
}
