//
//  main.m
//  Lab2
//
//  Created by Karam Ibrahim on 4/4/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Counter.h"
#import "Rectt.h"
#import "Sq.h"
#import "Calc.h"
#import "Friend.h"
#import "FriendManager.h"
int main(int argc, const char * argv[]) {
  
    FriendManager *manager= [FriendManager new];
    
    Friend *f = [Friend new];
    f.age = 20;
    f.email = @"Karam@yahoo.com";
    f.friendId = 1;
    f.name = @"karam";
    f.phone = 123465;
    
    [manager add:f];
    
    
    Friend *f2 = [Friend new];

    f2.age = 22;
    f2.email = @"Karam@yahoo.com";
    f2.friendId = 2;
    f2.name = @"Ahmed";
    f2.phone = 123465;
    
    [manager add:f2];
    
    Friend *f3 = [Friend new];

    f3.age = 22;
       f3.email = @"Karam@yahoo.com";
       f3.friendId = 3;
       f3.name = @"eslam";
       f3.phone = 123465;
       
       [manager add:f3];
   
    
    [manager getAll];
    
    
   [manager removeByID:2];
    
    [manager getAll];
    
    [manager removeByObj:f];
    [manager getAll];
    
    
    
    
    
    
   /*
    Calc *c = [Calc new ];
    
    int num1,num2,op;
    Boolean flag = true;
    while (flag) {
         printf("\npls enter num1\n");
         scanf("%d",&num1);
        c.num1 = num1;
        printf("\npls enter num2\n");
        scanf("%d",&num2);
        c.num2 =num2;
        
        printf("\npls select method \n (1) Add \n (2) Sub \n (3) Multi \n (4) Div\n");
               scanf("%d",&op);
        
        if(op==1) [c add];
        else if(op==2) [c sub];
        else if(op==3) [c multi];
        else if(op==4) [c div];
        
        else printf("pls Select right mithod\n");
        
        
        printf("\n again enter 1 ,,,, or enter 0 to exit \n");
              scanf("%d",&num2);
        if (num2==0) {
            flag = false;
        }
        
        
        
    }*/
    
    
    
    
}
