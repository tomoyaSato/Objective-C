//
//  memoryControl.m
//  propertyPractice
//
//  Created by Minami Kyohei on 2016/06/08.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "memoryControl.h"
#import "property.h"

@implementation memoryControl

- (void)getPrpStr
{
    // property *prp = [property new];
    //継承しているためpropertyを扱うことができる
    
    NSLog(@"label is %@", self.label);
    
    //子のポインタを親に持たせる
    [_W_prp setMc:self];
    
    //親クラスのメソッド呼び出し
    [_W_prp test:self];
}


@end
