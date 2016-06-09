//
//  Employee.h
//  class
//
//  Created by Minami Kyohei on 2016/06/02.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

//importではなくこの記述を使うことでコンパイル速度が向上する
//importに比べて伝える情報量が減る
@class Asset;
@interface Employee : Person //スーパークラスがPersonを意味する
{
    int employeeID;
    NSMutableArray *assets;
}

@property  int employeeID;
-(void)addAssetsObject:(Asset *)a;
-(unsigned int)valueOfAssets;


@end
