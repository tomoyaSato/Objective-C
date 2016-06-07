//
//  main.m
//  Review
//
//  Created by Minami Kyohei on 2016/06/07.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //NSStringを作成
        NSString *str = @"Hello World!";
        NSLog(@"NSString inner is %@", str);
        
        //文字列の長さを取得
        NSLog(@"%lu",(unsigned long)str.length);
        
        //文字列の内容か同じか判定
        //引数のあるメソッドはドット記法で呼べないらしい
        if([str isEqual:@"Hello World!"]){
            NSLog(@"success isEqual　method");
        }
        
        //NSArrayを作成
        NSArray *array = [NSArray array];
        
        //arrayWithObjectメソッドを使って格納
        //配列の最後にはnilを挿入する
        array = [NSArray arrayWithObjects:@"日本",@"中国",@"韓国",@"朝鮮", nil];
        
        //NSArrayの要素数を返すcountメソッドを使用して要素を全て表示
        //arrayを直接出力すると文字化けするようだ
        for (int i = 0; i < array.count; i++) {
            NSLog(@"array is %@", array[i]);
        }
        
        //高速列挙を使ってNSArrayの内容を表示
        for(NSArray *nsa in array){
            NSLog(@"array is %@", nsa);
        }
    }
    return 0;
}
