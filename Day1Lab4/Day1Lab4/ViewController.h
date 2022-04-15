//
//  ViewController.h
//  Day1Lab4
//
//  Created by Karam Ibrahim on 4/6/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property NSArray *arr;
@property int count;

@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)prevButton:(UIButton *)sender;
- (IBAction)nextButton:(UIButton *)sender;

@end

