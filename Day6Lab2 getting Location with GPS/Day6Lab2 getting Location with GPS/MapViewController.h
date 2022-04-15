//
//  MapViewController.h
//  Day6Lab2 getting Location with GPS
//
//  Created by Karam Ibrahim on 4/13/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import <MapKit/MapKit.h>
#import "MyAnnotation.h"

NS_ASSUME_NONNULL_BEGIN

@interface MapViewController : UIViewController
@property ViewController *v;
@property MyAnnotation *annotation;
- (IBAction)confirm:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet MKMapView *myMap;

- (IBAction)onClick:(UITapGestureRecognizer *)sender;

@end

NS_ASSUME_NONNULL_END
