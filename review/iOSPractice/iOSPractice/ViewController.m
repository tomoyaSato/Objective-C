//
//  ViewController.m
//  iOSPractice
//
//  Created by Minami Kyohei on 2016/06/07.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    IBOutlet UILabel *label;
    IBOutlet UITextField *textField;
    __weak IBOutlet UILabel *label2;
    NSString *text;
    int num;
}

//プラスボタンの処理
- (IBAction)action1:(id)sender {
    num++;
    text = [NSString stringWithFormat: @"%d", num];
    [label setText:text];
}

//マイナスボタンの処理
- (IBAction)action2:(id)sender {
    if (num > 0) {
        num = num - 1;
    }
    text = [NSString stringWithFormat: @"%d", num];
    [label setText:text];
}

//インサートボタンの処理

- (IBAction)action3:(id)sender {
    [label2 setText:textField.text];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    num = 0;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
