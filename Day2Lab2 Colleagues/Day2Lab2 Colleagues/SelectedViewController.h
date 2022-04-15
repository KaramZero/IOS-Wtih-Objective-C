//
//  SelectedViewController.h
//  Day2Lab2 Colleagues
//
//  Created by Karam Ibrahim on 4/7/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyColleagues.h"
NS_ASSUME_NONNULL_BEGIN

@interface SelectedViewController : UIViewController

@property MyColleagues *colleagues;

@property (weak, nonatomic) IBOutlet UILabel *name;

@property (weak, nonatomic) IBOutlet UILabel *email;
@property (weak, nonatomic) IBOutlet UILabel *address;
@property (weak, nonatomic) IBOutlet UILabel *phone;

@property (weak, nonatomic) IBOutlet UILabel *age;

@end

NS_ASSUME_NONNULL_END
