//
//  Appliance.m
//  Appliances
//
//  Created by Minami Kyohei on 2016/06/06.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "Appliance.h"




@implementation Appliance
@synthesize productName, voltage;

- (id) initWithProductname:(NSString *)pn
{
    self = [super init];
    
    if (self) {
        // productNameを設定
        [self setProductName:pn];
        voltage = 120;//_でアクセスすると何が違う？
    }
    
    return self;
}

/*
- (id) init
{
    return [self initWithProductName:@"Unknown"];
}
*/
 
-(NSString *)description
{
    return [NSString stringWithFormat:@"<%@: %d volts>", productName, voltage];
}

@end
