//
//  memoryControl.m
//  propertyPractice
//
//  Created by Minami Kyohei on 2016/06/08.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "memoryControl.h"

@implementation memoryControl

-(void)getPrpStr:(property *)prp
{
    // property *prp = [property new];
    //継承しているためpropertyを扱うことができる
    self.label = prp.str1;
    NSLog(@"label is %@", self.label);
}


@end
