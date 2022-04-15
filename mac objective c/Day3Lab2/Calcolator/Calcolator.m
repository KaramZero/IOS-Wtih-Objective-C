//
//  Calcolator.m
//  Calcolator
//
//  Created by Nayra Khaled on 4/4/22.
//  Copyright © 2022 Nayra Khaled. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calcolator.h"
@implementation Calculator
  
   
+(int) addNumbers:(int)numberOne :(int)numberTwo{
    return numberOne+numberTwo;
    }
+(int) subNumbers:(int)numberOne :(int)numberTwo{
    return numberOne-numberTwo;
}

    
+(int) multiNumbers:(int)numberOne :(int)numberTwo{

    return numberOne*numberTwo;
    }
+(int) divNumbers:(int)numberOne :(int)numberTwo{
return numberOne/numberTwo;
}

@end
