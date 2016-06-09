//
//  main.m
//  blockPractice
//
//  Created by Minami Kyohei on 2016/06/08.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^Blocktest1)(NSString *, NSString *);//定義
typedef NSArray* (^Blocktest2)(NSString *, NSString *);//返り値のある定義

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        //ブロック変数の宣言
        void (^block1)(NSUInteger, NSUInteger);
        
        //ブロッックを代入する
        block1 = ^(NSUInteger x, NSUInteger y) {
            NSLog(@"%lu", x + y);
        };
        
        block1(100,200);
        
        /*---------------------*/
        
        //ブロックの変数の宣言
        //typedefを使った場合
        Blocktest1 block2;
        
        //ブロックへ代入
        block2 = ^(NSString *str1, NSString *str2) {
            if([str1 isEqual:str2]) {
                NSLog(@"isEqual success!");
            }
        };
        
        //ブロックの呼び出し
        block2(@"test", @"test");
        
         /*---------------------*/
        
        //ブロック変数の宣言
        Blocktest2 block3;
        
       block3 = ^(NSString *str3, NSString *str4) {
            NSArray *array = [NSArray array];
            array = [NSArray arrayWithObjects:str3, str4, nil];
            return array;
            
       };
    
        //ブロックに代入し呼び出し
        NSArray *cast = block3(@"hello",@"block");
        NSLog(@"%@",cast);
    
    
        
     }
    return 0;
}
