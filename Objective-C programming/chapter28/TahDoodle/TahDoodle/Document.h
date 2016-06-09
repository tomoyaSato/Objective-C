//
//  Document.h
//  TahDoodle
//
//  Created by Minami Kyohei on 2016/06/06.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Document : NSDocument
{
    
    NSMutableArray *todoItem;
    IBOutlet NSTableView *itemTableView; //todoItemに格納された文字列を示す
     
}

-(IBAction)createNewItem:(id)sender;



@end

