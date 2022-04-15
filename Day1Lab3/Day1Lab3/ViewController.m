//
//  ViewController.m
//  Day1Lab3
//
//  Created by Karam Ibrahim on 4/6/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)button:(UIButton *)sender {
    
    _label.text = _textField.text;
}

@end
