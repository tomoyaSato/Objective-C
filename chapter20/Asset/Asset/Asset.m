//
//  Asset.m
//  class
//
//  Created by Minami Kyohei on 2016/06/02.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "Asset.h"
#import "Employee.h"

@implementation Asset
@synthesize label,holder,resaleValue;

-(NSString *) description
{
   // holder が　nilでないか？
    if([self holder]){
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>",
                [self label], [self resaleValue], [self holder] ];
    }else{
        return [NSString stringWithFormat:@"<%@: $%d unassigned>",
                [self label],[self resaleValue]];
    }
}

-(void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
