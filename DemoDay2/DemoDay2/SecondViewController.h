//
//  SecondViewController.h
//  DemoDay2
//
//  Created by Iti on 4/7/22.
//  Copyright © 2022 jets. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CleartxtProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@property NSString * str;
@property id<ClearTxtProtocol> firstVC;
- (IBAction)clearTextIsideFirstScreen:(id)sender;

@end

NS_ASSUME_NONNULL_END
