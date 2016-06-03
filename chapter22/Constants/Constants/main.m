//
//  main.m
//  Constants
//
//  Created by Minami Kyohei on 2016/06/03.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //NSStringのリテラルでは、\uを使って任意のUnicode文字を表す
        //maxは関数ではない
        NSLog(@"\u03c0 is %f", M_PI);
        NSLog(@"%d is larger", MAX(10,12));
    }
    return 0;
}
