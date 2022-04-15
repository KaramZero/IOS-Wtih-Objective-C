//
//  SecondViewController.m
//  Day3Lab1 SwipeScreens
//
//  Created by Karam Ibrahim on 4/10/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UISwipeGestureRecognizer *right = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(goBack)];
    right.direction = UISwipeGestureRecognizerDirectionRight;
    
    [self.view addGestureRecognizer:right];
    
}

-(void) goBack{
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
