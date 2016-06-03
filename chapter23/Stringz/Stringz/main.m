//
//  main.m
//  Stringz
//
//  Created by Minami Kyohei on 2016/06/03.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString *str = [[NSMutableString alloc] init];
        
        for(int i = 0; i < 10; i++){
            [str appendString:@"Aaron is cool!\n"];//文字を追加する
        }
        //NSMutableString の writeToFileメソッドでファイルパスを指定
        [str writeToFile:@"/tmp/cool.txt"
              atomically:YES encoding:NSUTF8StringEncoding error:NULL];
        
        NSLog(@"dane writing /tmp/cool.txt");
    }
    return 0;
}
