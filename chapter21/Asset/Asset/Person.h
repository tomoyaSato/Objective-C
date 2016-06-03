//
//  Person.h
//  class
//
//  Created by Minami Kyohei on 2016/06/02.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    float heightInMeters;
    int weightInKilos;
}

//メソッドの宣言
/*
 -(float)getHeightInMeters;
 -(void)setHeightInMeters:(float)h;
 -(int)getWeightInkilos;
 -(void)setWeightInKilos:(int)w;
 
 */

@property float heightInMeters;
@property int weightInKilos;
-(float)bodyMathIndex;

@end
