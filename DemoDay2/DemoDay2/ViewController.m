//
//  ViewController.m
//  DemoDay2
//
//  Created by Iti on 4/7/22.
//  Copyright © 2022 jets. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    printf("viewDidLoad\n");
    // Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    printf("viewWillAppear\n");
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
    printf("viewDidAppear\n");
}
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:YES];
    printf("viewWillDisappear\n");
}
-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:YES];
    printf("viewDidDisappear\n");
    
}

-(void)clear{
    self.myTxtField.text = @"";
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSString *str = @"Hello Jets!";
    SecondViewController * secondVC = segue.destinationViewController;
    secondVC.str = str;
    secondVC.firstVC = self;
    
}

@end
