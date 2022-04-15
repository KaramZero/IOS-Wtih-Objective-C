//
//  MyRect.m
//  Lab1
//
//  Created by Karam Ibrahim on 4/3/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyRect.h"

@implementation MyRect

-(void) setWidth:(int) w{
    width = w;
}

-(void) setHeight:(int) h{
    height = h;
}

-(int) getWidth{
    return width;
}
-(int) getHeight{
    return height;
}
-(int) printArea{
    printf("Area is %d",(width*height));
    return (width*height);
    
}

+(int) calAreaWithWidth:(int) w andWithHeight:(int) h{
     printf("Area is %d",(w*h));
       return (w*h);}

@end
