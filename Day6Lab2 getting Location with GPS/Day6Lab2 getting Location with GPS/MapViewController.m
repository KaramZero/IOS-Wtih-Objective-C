//
//  MapViewController.m
//  Day6Lab2 getting Location with GPS
//
//  Created by Karam Ibrahim on 4/13/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@property CLLocationCoordinate2D coord;
@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _annotation = [MyAnnotation new];
      [_myMap addAnnotation:_annotation];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)confirm:(UIButton *)sender {

    [ _v showLocation:_coord.latitude :_coord.longitude];
    [self.navigationController popViewControllerAnimated:YES];

}

- (IBAction)onClick:(UITapGestureRecognizer *)sender {
    
    CGPoint touch = [sender locationInView:_myMap];
    
    _coord = [_myMap convertPoint:touch toCoordinateFromView:_myMap];
    
    _annotation.coordinate = _coord;
}
@end
