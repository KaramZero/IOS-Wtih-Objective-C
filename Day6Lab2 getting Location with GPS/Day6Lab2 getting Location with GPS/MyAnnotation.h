//
//  MyAnnotation.h
//  Day6Lab1 Maps
//
//  Created by Karam Ibrahim on 4/13/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#ifndef MyAnnotation_h
#define MyAnnotation_h


#endif /* MyAnnotation_h */
#import <MapKit/MapKit.h>

@interface MyAnnotation : NSObject <MKAnnotation>

@property (nonatomic) CLLocationCoordinate2D coordinate;
@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *subtitle;


@end
