//
//  main.m
//  Birthday
//
//  Created by Minami Kyohei on 2016/06/02.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1993];
        [comps setMonth:5];
        [comps setDay:8];
        [comps setHour:13];
        [comps setMinute:10];
        [comps setSecond:0];
        
        //NSGregorianCalendar　→　NSCalendarIdentifierGregorian
        //資料はios8以前の仕様となっているため動作しなかった
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        NSLog(@"%@",dateOfBirth);
        
        NSDate *now = [NSDate date];
        
        double d = [now timeIntervalSinceDate: dateOfBirth];
        NSLog(@"%f",d);
   
    }
    return 0;
}
