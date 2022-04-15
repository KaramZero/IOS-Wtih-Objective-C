//
//  Calc.m
//  Lab2
//
//  Created by Karam Ibrahim on 4/4/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Calc.h"

@implementation Calc

-(void) add{

    printf("\n %d + %d = %d\n",self.num1,self.num2,self.num1+self.num2);
   
}
-(void) sub{
     printf("\n %d - %d = %d\n",self.num1,self.num2,self.num1-self.num2);
}
-(void) multi{
    printf("\n %d * %d = %d\n",self.num1,self.num2,self.num1*self.num2);
}
-(void) div{
    if(self.num2!=0) printf("\n %d / %d = %d\n",self.num1,self.num2,self.num1+self.num2);
           else printf("can't div by zero\n");
}




@end
