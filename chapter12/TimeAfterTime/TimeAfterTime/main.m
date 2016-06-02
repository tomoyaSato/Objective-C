//
//  main.m
//  TimeAfterTime
//
//  Created by Minami Kyohei on 2016/06/02.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    //自動解放プールを意味する
    @autoreleasepool {
        NSDate *now = [NSDate date];
        //printfと同じような働きをする
        //\nが必要ない
        //%pはアドレスのトークン
        //%@はobject情報のトークン
        NSLog(@"The date is %@", now);
    }
    return 0;
}
