//
//  ViewController.m
//  Day1Lab5
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


- (IBAction)myButton:(UIButton *)sender {
    NSNumberFormatter *format = [NSNumberFormatter new];
       [format setNumberStyle: NSNumberFormatterDecimalStyle];
       
       NSNumber *n = [format numberFromString: self.input.text];
       
       if(n){
           self.output.text = @"It is Number";
       }else{
           self.output.text = @"It is String";
       }
}

@end
