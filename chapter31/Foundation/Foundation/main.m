//
//  main.m
//  Foundation
//
//  Created by Minami Kyohei on 2016/06/06.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+AowelCounting.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *string = @"Hello, World";
        NSLog(@"%@ has %d vowels", string, [string vowelCount]);
    }
        return 0;
}
