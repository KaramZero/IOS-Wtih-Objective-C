//
//  ViewController.h
//  Day1Lab3
//
//  Created by Karam Ibrahim on 4/6/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;

@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)button:(UIButton *)sender;

@end

