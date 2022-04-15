//
//  ViewController.m
//  Day1Lab4
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
     self.arr = [NSArray new];
    
       self.arr = @[@"karam" , @"Ahmed",@"Ibrahim",@"Mohamed",@"mahmoud" ];
       self.count = 0;
}



- (IBAction)prevButton:(UIButton *)sender {
    if (self.count > 0) {
        self.count--;
    }else {
        self.count = 4;
    }
    _label.text = self.arr[self.count];

}

- (IBAction)nextButton:(UIButton *)sender {
    if (self.count < 4) {
           self.count++;
       }else {
           self.count = 0;
       }

       _label.text = self.arr[self.count];

}
@end
