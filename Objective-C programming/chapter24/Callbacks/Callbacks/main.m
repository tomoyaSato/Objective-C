//
//  main.m
//  Callbacks
//
//  Created by Minami Kyohei on 2016/06/03.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Logger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Logger *logger = [[Logger alloc] init];
        
       __unused NSTimer *timer =
        [NSTimer scheduledTimerWithTimeInterval:2.0
                                      target:logger
                                       selector:@selector(sayOuch:)
                                       userInfo:nil
                                         repeats:YES];
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
