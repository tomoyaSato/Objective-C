//
//  property.h
//  propertyPractice
//
//  Created by Minami Kyohei on 2016/06/08.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>
@class memoryControl;

@interface property : NSObject
{
    
}

@property NSString *str1;
@property NSString *str2;
@property memoryControl *mc;

//メソッドの省略は不可？
- (void)test:(memoryControl *)mc;

@end
