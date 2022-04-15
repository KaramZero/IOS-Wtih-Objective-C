//
//  ViewController.m
//  Day3Lab1 SwipeScreens
//
//  Created by Karam Ibrahim on 4/10/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UISwipeGestureRecognizer *left = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(gotoNext)];
    left.direction = UISwipeGestureRecognizerDirectionLeft;
    
    [self.view addGestureRecognizer:left];
    
}

-(void) gotoNext{
    SecondViewController *second = [self.storyboard instantiateViewControllerWithIdentifier:@"secondVC"];
    second.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:second animated:YES completion:nil];
}

@end
