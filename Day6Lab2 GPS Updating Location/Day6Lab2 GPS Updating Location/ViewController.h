//
//  ViewController.h
//  Day6Lab2 GPS Updating Location
//
//  Created by Karam Ibrahim on 4/13/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>


@interface ViewController : UIViewController <CLLocationManagerDelegate,MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *myMap;

@property CLLocationManager *manager;


@end

