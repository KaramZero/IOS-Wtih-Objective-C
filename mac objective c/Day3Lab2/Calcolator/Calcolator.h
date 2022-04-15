//
//  Calcolator.h
//  Calcolator
//
//  Created by Nayra Khaled on 4/4/22.
//  Copyright © 2022 Nayra Khaled. All rights reserved.
//


@interface Calculator : NSObject{
  
}
@property int num1;
@property int num2;

+(int) addNumbers:(int) numberOne  :(int) numberTwo ;
+(int) subNumbers:(int) numberOne  :(int) numberTwo ;
+(int) multiNumbers:(int) numberOne  :(int)numberTwo ;
+(int) divNumbers:(int) numberOne  :(int) numberTwo ;

@end
