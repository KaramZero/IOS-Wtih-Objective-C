//
//  ViewController2.h
//  Day2Lab1.2
//
//  Created by Karam Ibrahim on 4/7/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClearProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface ViewController2 : UIViewController

@property id<ClearProtocol> firstView;
@property NSString *str;
@property (weak, nonatomic) IBOutlet UILabel *output;

- (IBAction)clearTxtButton:(id)sender;

@end

NS_ASSUME_NONNULL_END
