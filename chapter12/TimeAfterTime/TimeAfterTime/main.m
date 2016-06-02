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
        
        double seconds = [now timeIntervalSince1970];//nowオブジェクトの中にtimeIntervalSince1970というメソッドがある？
        NSLog(@"It has been %f seconds since the start of 1970.", seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"IN 100,000 seconds it will be %@", later);
    }
    return 0;
}
