//
//  main.m
//  Appliances
//
//  Created by Minami Kyohei on 2016/06/06.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Appliance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Appliance *a  = [[Appliance alloc] init];
        NSLog(@"a is %@ ", a);
        //この場合"setProductName"というメソッドを探し、見つからなければインスタンス変数に直接アクセスする
        [a setValue:@"washing machine" forKey:@"productName"];
        NSLog(@"a is %@", a);
        
        NSLog(@"the product name is %@", [a valueForKey:@"productNammmmmmmme"]);
    }
    return 0;
}
