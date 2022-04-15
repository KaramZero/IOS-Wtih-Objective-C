//
//  Counter.m
//  Lab2
//
//  Created by Karam Ibrahim on 4/4/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Counter.h"

@implementation Counter
static int x =0;

- (id)init {
    self = [super init];
    x++;
    return self;
}

+(int) getCounter{
    return x;
}

@end
