//
//  ViewController.m
//  Day2Lab1.2
//
//  Created by Karam Ibrahim on 4/7/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)clear{
    printf("clear view 11 \n");
    _input.text = @"";
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
  
    ViewController2 * secondVC = segue.destinationViewController;
    secondVC.str = _input.text;
    secondVC.firstView = self;
    
}


@end
