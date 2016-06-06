//
//  ViewController.m
//  TahDoodle
//
//  Created by Minami Kyohei on 2016/06/06.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//
#import "ViewController.h"

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)pushBotton:(id)sender {
     NSLog(@"push botton");
    _myLabel.stringValue = textField.stringValue();
    
}
@end
