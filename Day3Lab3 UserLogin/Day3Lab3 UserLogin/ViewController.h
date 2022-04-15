//
//  ViewController.h
//  Day3Lab3 UserLogin
//
//  Created by Karam Ibrahim on 4/10/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property NSUserDefaults *data;

@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *passWord;
- (IBAction)signinBTN:(UIButton *)sender;
- (IBAction)signupBTN:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *result;

@end

