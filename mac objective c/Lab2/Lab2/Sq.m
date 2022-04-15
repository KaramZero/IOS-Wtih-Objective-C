//
//  Sq.m
//  Lab2
//
//  Created by Karam Ibrahim on 4/4/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Sq.h"

@implementation Sq

-(void) setW:(int)w{
    super.w = w;
    super.h = w;
}

-(void) printArea{
    printf("Sq Area is %d \n",(super.w * super.h));
}


@end
