//
//  MyRect.h
//  Lab1
//
//  Created by Karam Ibrahim on 4/3/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#ifndef MyRect_h
#define MyRect_h

@interface MyRect : NSObject{
    int width;
    int height;
}
-(void) setWidth:(int) w;
-(void) setHeight:(int) h;

-(int) getWidth;
-(int) getHeight;
-(int) printArea;

+(int) calAreaWithWidth:(int) w andWithHeight:(int) h;

@end

#endif /* MyRect_h */
