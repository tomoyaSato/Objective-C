//
//  MixiSampleClass.m
//  practice
//
//  Created by Minami Kyohei on 2016/06/09.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "MixiSampleClass.h"

static NSString *const constString = @"const"; //クラス定数 constで定数となる
static NSString *staticString = @"static"; //クラス変数

//無名カテゴリ これらはprivate扱いになる
@interface MixiSampleClass()

@property (nonatomic, assign) BOOL isEnabled;
@property (nonatomic, assign) sampleType sampleType;

@end

@implementation MixiSampleClass

- (id)initWithName:(NSString *)name sampleType:(sampleType)sampleType
{
    //スーパークラスのインスタンス変数を初期化しオブジェクトのポインタを返す
    self = [super init];
    
    if (self) {
        
        //時クラス内のインスタンス変数を参照、代入するときは
        //_name = hoge, fuga = _name (self.name　も可)
        //他クラスのインスタンス変数の場合は obj.name
        
        _name = name;
        _isEnabled = YES;
        _sampleType = sampleType;
    }
    return self;
}

+ (NSString *)getStaticString
{
    return staticString;
}

@end
