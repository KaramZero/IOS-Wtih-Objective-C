//
//  ViewController.m
//  Day3Lab3 UserLogin
//
//  Created by Karam Ibrahim on 4/10/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _data = [NSUserDefaults standardUserDefaults];
}


- (IBAction)signinBTN:(UIButton *)sender {
    NSString *password = [_data objectForKey:_userName.text];
    if (password!=nil && password == _passWord.text) {
        _result.text = @"Correct and Logged In";
    }else{
        _result.text = @"Wrong";
    }
}

- (IBAction)signupBTN:(UIButton *)sender {
    [_data setObject:_passWord.text forKey:_userName.text];
}
@end
