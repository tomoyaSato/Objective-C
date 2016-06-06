//
//  main.m
//  Block
//
//  Created by Minami Kyohei on 2016/06/06.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //　変換対象文字列の配列を￥と、母音を取り除いた文字列を格納する配列を生成する
        NSArray *oldString = [NSArray arrayWithObjects:@"Sauerkraut", @"Raygun", @"Big Nerd", @"Mississippi", nil];
        NSLog(@"odl strings: %@", oldString);
        NSMutableArray *newStrings = [NSMutableArray array];
        //文字列から取り除く母音の配列を生成する
        NSArray *vowels = [NSArray arrayWithObjects:@"a", @"e", @"i", @"o", @"u", nil];
        
        //　ブロック変数を宣言する
        //devowelizerは変数名
        void (^devowelizer)(id,NSUInteger, BOOL *);
        
        //変数にブロックを代入する
        devowelizer = ^(id string, NSUInteger i, BOOL *stop) {
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            //配列vowelsをイテレートしてそれぞれの母音を空文字列に置き換える
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
                
            }
            [newStrings addObject:newString];
        };//ブロックの代入はここまで(セミコロン必要)
        
        //ブロックを使用する
        [oldString enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"new strings %@", newStrings);
    }
    return 0;
}
