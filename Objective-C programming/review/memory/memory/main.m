//
//  main.m
//  memory
//
//  Created by Minami Kyohei on 2016/06/08.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    /*
        __strong NSString *strong1 = [[NSString alloc] initWithFormat:@"りんご"];
        __weak      NSString *weak1   = strong1;
        // strong りんご / weak りんご
        NSLog(@"strong: %@ , weak: %@", strong1, weak1);
       
        //解放
        strong1 = [[NSString alloc] initWithFormat:@"みかん"];
         // strong みかん / weak nil
        NSLog(@"strong: %@ , weak: %@", strong1, weak1);
        
     
        
        __strong NSString *strong2 = [[NSString alloc] initWithFormat:@"Apple"];
        __weak   NSString *weak2   = strong2;
        // strong Apple / weak Apple
        NSLog(@"strong: %@ , weak: %@", strong2, weak2);
       
        //解放
        strong2 = [[NSString alloc] initWithFormat:@"Orange"];
        // strong Apple / weak Orange
        NSLog(@"strong: %@ , weak: %@", strong2, weak2);
    */
        
        /*
        __strong NSArray *strongArray = @[@"Monday",@"Tuesday"];
        __weak NSArray *weakArray = strongArray;
        // strong : Monday Tuesday / weak Monday Tuesday
        NSLog(@"%@ : %@", strongArray, weakArray);
         */
        /*
        for (int i = 0; i < strongArray.count; i++) {
            NSLog(@"%@ : %@", strongArray[i], weakArray[i]);
        }
        */
         
        //解放
        //strongArray = @[@"Wednesday",@"Thursday"];
        // strong : Wednesday Thursday  / weak Monday Tuesday
        //NSLog(@"%@ : %@", strongArray, weakArray);
        /*
        for (int i = 0; i < strongArray.count; i++) {
            NSLog(@"%@ : %@", strongArray[i], weakArray[i]);
        }
        */
        
        Person *person = [Person new];
        [person loop];
        
    }
    return 0;
}
