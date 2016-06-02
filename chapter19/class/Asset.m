//
//  Asset.m
//  class
//
//  Created by Minami Kyohei on 2016/06/02.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "Asset.h"

@implementation Asset
@synthesize label,resaleValue;

-(NSString *) description
{
    return [NSString stringWithFormat:@"<%@: $%d>",self.label, self.resaleValue];
}

-(void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
