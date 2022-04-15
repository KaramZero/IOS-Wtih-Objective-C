//
//  ViewController.h
//  DemoDay2
//
//  Created by Iti on 4/7/22.
//  Copyright © 2022 jets. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CleartxtProtocol.h"
@interface ViewController : UIViewController <ClearTxtProtocol>
@property (weak, nonatomic) IBOutlet UITextField *myTxtField;


@end

