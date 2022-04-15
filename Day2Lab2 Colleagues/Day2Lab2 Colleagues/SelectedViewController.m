//
//  SelectedViewController.m
//  Day2Lab2 Colleagues
//
//  Created by Karam Ibrahim on 4/7/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import "SelectedViewController.h"

@interface SelectedViewController ()

@end

@implementation SelectedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
 
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    _name.text = _colleagues.name;
      _email.text = _colleagues.email;
      _phone.text = _colleagues.phone;
      _age.text = [NSString stringWithFormat:@"%i", _colleagues.age ];
      _address.text = _colleagues.address;
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
