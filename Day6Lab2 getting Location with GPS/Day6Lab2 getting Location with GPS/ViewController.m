//
//  ViewController.m
//  Day6Lab2 getting Location with GPS
//
//  Created by Karam Ibrahim on 4/13/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import "ViewController.h"
#import "MapViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)showLocation:(double)lat :(double)lon{
    printf("hiiii %d  %d \n",lon,lat);
    _lon.text = [NSString stringWithFormat:@"%d",lon];
    _lat.text = [NSString stringWithFormat:@"%d",lat];

}


- (IBAction)getGPS:(UIButton *)sender {
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
  
    MapViewController * secondVC = segue.destinationViewController;
    secondVC.v = self;
    
}
@end
