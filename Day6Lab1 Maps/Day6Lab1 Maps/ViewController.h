//
//  ViewController.h
//  Day6Lab1 Maps
//
//  Created by Karam Ibrahim on 4/13/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MyAnnotation.h"
@interface ViewController : UIViewController <MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *myMap;

- (IBAction)onClick:(UITapGestureRecognizer *)sender;

@property MyAnnotation *annotation;

@end

