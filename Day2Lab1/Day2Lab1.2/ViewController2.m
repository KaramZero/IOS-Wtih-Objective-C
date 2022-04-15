//
//  ViewController2.m
//  Day2Lab1.2
//
//  Created by Karam Ibrahim on 4/7/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _output.text = [NSString stringWithFormat:@"%@ says Hello",_str ];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
/*
- (IBAction)clearr:(UIBarButtonItem *)sender {
  printf("hi ------\n");
    [_firstView clear];
    [self.navigationController popViewControllerAnimated:YES];
    
}*/
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:YES];
    printf("hi ------\n");
    [_firstView clear];
}

- (IBAction)clearTxtButton:(id)sender {
    printf("hi ------\n");
       [_firstView clear];
       [self.navigationController popViewControllerAnimated:YES];
}


@end
