//
//  memoryControl.h
//  propertyPractice
//
//  Created by Minami Kyohei on 2016/06/08.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "property.h"

//プロパティを継承
@interface memoryControl : property
{
    
}
//propertyのポインタ
@property (weak) property *W_prp;
@property NSString *label;
-(void)getPrpStr;

@end
