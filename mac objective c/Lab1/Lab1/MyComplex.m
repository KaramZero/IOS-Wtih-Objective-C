//
//  MyComplex.m
//  Lab1
//
//  Created by Karam Ibrahim on 4/3/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyComplex.h"

@implementation MyComplex

-(void) setX:(int) _x{
    x = _x;
}
-(void) setY:(int) _y{
    y =_y;
}

-(int) getX{
    return x;
}
-(int) getY{
    return y;
}
-(void) print{
    printf("%d + %di",x,y);
}

+(void) add:(MyComplex*) c1 :(MyComplex*) c2{
    [c1 setX:([c1 getX] + [c2 getX])];
    [c1 setY:([c1 getY] + [c2 getY])];
   
}


+(void) sub:(MyComplex*) c1 :(MyComplex*) c2{
        [c1 setX:([c1 getX] - [c2 getX])];
    [c1 setY:([c1 getY] - [c2 getY])];}

@end
