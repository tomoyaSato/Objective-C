//
//  main.m
//  propertyPractice
//
//  Created by Minami Kyohei on 2016/06/08.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "property.h"
#import "memoryControl.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //[[property alloc] init]を以下のように記述できる
        //メソッドのようにtestを呼び出せない？
        //インスタンメソッドとして呼び出しに成功
        property *prp = [property new];
        [prp setValue:@"Hello Property" forKey:@"str2"];
        [prp test];
      
        //memoryControlのメソッド呼び出し
        memoryControl *mc = [memoryControl new];
        
        //出力 HelloProterty
        [mc getPrpStr: prp];
        
        
        
    
    }
    return 0;
}
