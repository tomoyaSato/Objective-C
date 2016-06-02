//
//  main.m
//  NSString
//
//  Created by Minami Kyohei on 2016/06/02.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *lament = @"Why me!?";
        NSString *x = [NSString stringWithFormat:@"The best number is %d", 5];
        NSLog(@"%@", lament);
        NSLog(@"%@", x);

    }
    return 0;
}
