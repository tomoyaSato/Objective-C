//
//  ViewController.h
//  TahDoodle
//
//  Created by Minami Kyohei on 2016/06/06.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface ViewController : NSViewController

@property (weak, nonatomic) IBOutlet NSTextField *myLabel;
@property (weak) IBOutlet NSTextField *textField;


        

- (IBAction)pushBotton:(id)sender;

@end

