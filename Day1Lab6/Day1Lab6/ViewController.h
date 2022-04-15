//
//  ViewController.h
//  Day1Lab6
//
//  Created by Karam Ibrahim on 4/6/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *num1;

@property (weak, nonatomic) IBOutlet UITextField *num2;
@property (weak, nonatomic) IBOutlet UILabel *res;

- (IBAction)add:(UIButton *)sender;

- (IBAction)sub:(UIButton *)sender;

- (IBAction)multi:(UIButton *)sender;

- (IBAction)div:(UIButton *)sender;

@end

