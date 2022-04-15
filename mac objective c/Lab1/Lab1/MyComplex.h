//
//  MyComplex.h
//  Lab1
//
//  Created by Karam Ibrahim on 4/3/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#ifndef MyComplex_h
#define MyComplex_h

@interface MyComplex : NSObject{
    int x;
    int y;
}

-(void) setX:(int) _x;
-(void) setY:(int) _y;
-(int) getX;
-(int) getY;

-(void) print;

+(void) add:(MyComplex*) c1 :(MyComplex*) c2;
+(void) sub:(MyComplex*) c1 :(MyComplex*) c2;

@end
#endif /* MyComplex_h */
