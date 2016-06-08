//
//  property.m
//  propertyPractice
//
//  Created by Minami Kyohei on 2016/06/08.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "property.h"
#import "memoryControl.h"

@implementation property


- (void)test:(memoryControl *)mc {
    // '_'でのプロパティへのアクセスでは値を変更したりできない
    //self.[property名]は独自のsetter getterメソッドを作れる
    //forkeyメソッドはstrを検索し setValueメソッドで格納
    self.str1 = self.str2;
    NSLog(@"%@", self.str1);
    
    //子クラスに親のポインタを持たせる
    [mc setW_prp:self];
    
    [mc getPrpStr];
    
    
}


@end
