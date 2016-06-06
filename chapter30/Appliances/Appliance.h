//
//  Appliance.h
//  Appliances
//
//  Created by Minami Kyohei on 2016/06/06.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Appliance : NSObject
{
    NSString *productName;
    int voltage;
}


@property (copy) NSString *productName;
@property int voltage;
- (id) initWithProductname:(NSString *)pn;


@end
