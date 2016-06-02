
//
//  Person.m
//  class
//
//  Created by Minami Kyohei on 2016/06/02.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "Person.h"

@implementation Person
//Person.hがインタフェースとなっていて実態がPerson.m？疎結合としている？

-(void)setHeightInMeters:(float)h{
    heightInMeters = h;
}

-(float)getHeightInMeters{
    return heightInMeters;
}

-(int)getWeightInkilos{
    return weightInKilos;
}

-(void)setWeightInKilos:(int)w{
    weightInKilos = w;
}

-(float)bodyMathIndex{
    return weightInKilos / (heightInMeters * heightInMeters);
}

@end
