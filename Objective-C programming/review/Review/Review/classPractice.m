//
//  classPractice.m
//  NSMethods
//
//  Created by Minami Kyohei on 2016/06/07.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "classPractice.h"

@interface classPractice()
@property NSString *name;
@property (nonatomic)  int weight;
@property (nonatomic)  int height;
@end


@implementation classPractice

- (void) setHeight:(int)height{
    self.height = height;
}

- (void)setWeight:(int)weight
{
    self.weight = weight;
}

- (int) calcBMI
{
    if(self.weight != NULL){    
        return self.weight / self.height * self.height;
    }else{
        return 0;
    }
    
}

@end
