
//
//  Person.m
//  class
//
//  Created by Minami Kyohei on 2016/06/02.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters, weightInKilos;

-(float)bodyMathIndex{
    return weightInKilos / (heightInMeters * heightInMeters);
}

@end
