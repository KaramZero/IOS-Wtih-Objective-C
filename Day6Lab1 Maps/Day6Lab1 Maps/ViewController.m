//
//  ViewController.m
//  Day6Lab1 Maps
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
    _annotation = [MyAnnotation new];
    static NSString *s = @"identifier";
    _pin = [_myMap dequeueReusableAnnotationViewWithIdentifier:s];
    _myMap.delegate = self;
    [_myMap addAnnotation:_annotation];
}


- (IBAction)onClick:(UITapGestureRecognizer *)sender {
    
    CGPoint touch = [sender locationInView:_myMap];
    
    CLLocationCoordinate2D coord = [_myMap convertPoint:touch toCoordinateFromView:_myMap];
    
    _annotation.coordinate = coord;
}


-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation{

    printf("hhhhhhhhhh\n");
 if (annotation == mapView.userLocation)
 return nil;

 if (!_pin) {
     _pin = [[MKPinAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:@"identifier"];
     _pin.canShowCallout = YES;
     _pin.image = [UIImage imageNamed:@"carr.png"];
     _pin.calloutOffset = CGPointMake(0, 0);
 }
 return _pin;

    
}

@end
