//
//  property.m
//  propertyPractice
//
//  Created by Minami Kyohei on 2016/06/08.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "property.h"

@interface property()
@property NSString *str;
@property NSUInteger num;

//privateメソッドの宣言は不要
@end

@implementation property

+ (void)test1{
    // '_'でのプロパティへのアクセスでは値を変更したりできない
    //self.[property名]は独自のsetter getterメソッドを作れる
    //forkeyメソッドはstrを検索し setValueメソッドで格納
    NSLog(@"Hello");
}


@end
