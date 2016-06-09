//
//  MixiSampleClass.h
//  practice
//
//  Created by Minami Kyohei on 2016/06/09.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>

// 列挙型
typedef NS_ENUM(NSInteger, sampleType) {
    sampleTypeHoge = 0,
    sampleTypeFuga,
    sampleTypePiyo
};

@interface MixiSampleClass : NSObject


//nonatomic　複数のスレッドが同時にこの行のデータを変更することを許可
@property (nonatomic, strong) NSString *name;

//インスタンスメソッド　-　インスタンスを生成することで扱うことができる
-(id)initWithName:(NSString *)name sampleType:(sampleType)sampleType;
//クラスメソッド + インスタンスを生成せずとも扱える
+(NSString *) getStaticString;

@end
