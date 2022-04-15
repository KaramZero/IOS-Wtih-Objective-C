//
//  ViewController.h
//  Day2Lab1.2
//
//  Created by Karam Ibrahim on 4/7/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClearProtocol.h"


@interface ViewController : UIViewController <ClearProtocol>

@property (weak, nonatomic) IBOutlet UITextField *input;

@end

