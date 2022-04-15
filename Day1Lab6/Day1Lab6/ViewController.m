//
//  ViewController.m
//  Day1Lab6
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


- (IBAction)add:(UIButton *)sender {
    int x = self.num1.text.intValue + self.num2.text.intValue;
   
    self.res.text = [NSString stringWithFormat : @"%i",x];
}

- (IBAction)sub:(UIButton *)sender {
    self.res.text = [NSString stringWithFormat : @"%i",self.num1.text.intValue - self.num2.text.intValue];
}

- (IBAction)multi:(UIButton *)sender {
    self.res.text = [NSString stringWithFormat : @"%i",self.num1.text.intValue * self.num2.text.intValue];
}

- (IBAction)div:(UIButton *)sender {
    if (self.num2.text.doubleValue!=0) {
        self.res.text = [NSString stringWithFormat : @"%i",self.num1.text.intValue / self.num2.text.intValue];
        
    }else self.res.text = @"0";
}
@end
