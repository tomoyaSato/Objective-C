//
//  main.m
//  NSArray
//
//  Created by Minami Kyohei on 2016/06/02.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //3つのNSDateオブジェクトを生成sる
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        //３つのオブジェクトを保持する配列を生成する（nilはリストの終端を意味する）
        NSArray *dateList = [NSArray arrayWithObjects:now, tomorrow, yesterday, nil];
        
        //配列にはNSDateがいくつあるか？
        NSLog(@"There are %lu dates", [dateList count]);
        
        //そのうち2つを表示する
        NSLog(@"The first date is %@",[dateList objectAtIndex:0]);//objectAtIndexで配列の要素にアクセスできる
        NSLog(@"The third date is %@",[dateList objectAtIndex:2]);
        
        
    }
    return 0;
}
