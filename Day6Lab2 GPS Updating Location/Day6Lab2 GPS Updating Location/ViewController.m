//
//  ViewController.m
//  Day6Lab2 GPS Updating Location
//
//  Created by Karam Ibrahim on 4/13/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property MKAnnotationView *pin ;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    static NSString *s = @"identifier";
       _pin = [_myMap dequeueReusableAnnotationViewWithIdentifier:s];
    
    _myMap.delegate = self;
    
    _myMap.showsUserLocation = YES;
    
    _manager = [CLLocationManager new];
    [_manager setDesiredAccuracy:kCLLocationAccuracyBest];
    
    [_manager setDistanceFilter:kCLHeadingFilterNone];
    _manager.delegate = self;
    [_manager requestWhenInUseAuthorization ];
    [_manager startUpdatingLocation];
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    
    
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations{
    
}

-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation{

    printf("hhhhhhhhhh\n");

 if (!_pin) {
     _pin = [[MKPinAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:@"identifier"];
     _pin.canShowCallout = YES;
     _pin.image = [UIImage imageNamed:@"carr.png"];
     _pin.calloutOffset = CGPointMake(0, 0);
     
 }
 return _pin;

    
}
@end
