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
        
        NSMutableArray *dateList = [NSMutableArray array];
        
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        
        //配列の先にyesterdayを挿入する
        [dateList insertObject:yesterday atIndex: 0];
        
        //高速列挙を使って表示
        for(NSDate *d in dateList){
            NSLog(@"Here is a date: %@", d);
        }
        
        //先頭を削除
        [dateList removeObjectAtIndex: 0];
        NSLog(@"Now the first date is %@", [dateList objectAtIndex: 0]);
        
        /*
        //３つのオブジェクトを保持する配列を生成する（nilはリストの終端を意味する）
        NSArray *dateList = [NSArray arrayWithObjects:now, tomorrow, yesterday, nil];
        
        NSUInteger count = [dateList count];
        for(int i = 0; i < count; i++){
            NSDate *d = [dateList objectAtIndex:i];
            NSLog(@"The first date is %@",d);//objectAtIndexで配列の要素にアクセスできる
        }
        */
    }
    return 0;
}
