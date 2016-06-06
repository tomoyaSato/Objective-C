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
        a.productName = @"Washing Machine";
        NSLog(@"a is %@", a);
    }
    return 0;
}
