//
//  Person.m
//  memory
//
//  Created by Minami Kyohei on 2016/06/08.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void) loop
{
    NSLog(@"loop now");
    [self loop];
    NSLog(@"after");
}
@end
