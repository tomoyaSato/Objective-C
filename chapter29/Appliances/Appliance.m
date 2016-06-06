//
//  Appliance.m
//  Appliances
//
//  Created by Minami Kyohei on 2016/06/06.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "Appliance.h"


@interface Appliance()

@property (copy) NSString *productName;
@property int voltage;@end


@implementation Appliance


- (id) init
{
    self = [super init];
    
    if (self) {
        _voltage = 120;//_でアクセスすると何が違う？
    }
    
    return self;
}

@end
