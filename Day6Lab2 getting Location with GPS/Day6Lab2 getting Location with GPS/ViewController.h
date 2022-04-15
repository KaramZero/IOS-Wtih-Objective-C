//
//  ViewController.h
//  Day6Lab2 getting Location with GPS
//
//  Created by Karam Ibrahim on 4/13/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ShowLocationProtocol.h"
@interface ViewController : UIViewController <ShowLocationProtocol>
@property (weak, nonatomic) IBOutlet UITextField *lon;

@property (weak, nonatomic) IBOutlet UITextField *lat;

- (IBAction)getGPS:(UIButton *)sender;

@end

