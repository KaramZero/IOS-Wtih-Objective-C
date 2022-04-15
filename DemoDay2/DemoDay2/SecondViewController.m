//
//  SecondViewController.m
//  DemoDay2
//
//  Created by Iti on 4/7/22.
//  Copyright © 2022 jets. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    printf("viewDidLoad\n");
    _myLabel.text = _str;
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
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)clearTextIsideFirstScreen:(id)sender {
    [_firstVC clear];
    [self.navigationController popViewControllerAnimated:YES];
}
@end
