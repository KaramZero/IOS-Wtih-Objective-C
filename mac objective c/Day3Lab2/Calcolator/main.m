//
//  main.m
//  Calcolator
//
//  Created by Nayra Khaled on 4/4/22.
//  Copyright © 2022 Nayra Khaled. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Calcolator.h"
#import "Calcolator+Squaring.h"

int main(int argc, const char * argv[]) {
    
    int flag = 1;
    while(flag == 1){
        Calculator *c= [Calculator new];
          int num1;
          int num2;
          int numberChoose;
          printf("enter the first number \n");
          scanf("%d", &num1);
        
          printf("enter the second number \n");
          scanf("%d",&num2);
        
          c.num1 = num1;
          c.num2 = num2;

        
        printf("choose operator \n");
        printf(" 1) Add \n 2) Sub \n 3) Multi \n 4) Div \n 5) Squared num1 ");
        int res;
        scanf("%d",&numberChoose);
        switch(numberChoose){
            case 1: res = [Calculator addNumbers:num1 :num2];
                printf("%d + %d = %d \n", c.num1, c.num2, res);
                break;
            case 2: res = [Calculator subNumbers:num1 :num2];
                 printf("%d - %d = %d \n", c.num1, c.num2, res);
                break;
            case 3: res = [Calculator multiNumbers:num1 :num2];
                 printf("%d * %d = %d \n", c.num1, c.num2, res);
                break;
            case 4 : res = [Calculator divNumbers:num1 :num2];
                 printf("%d / %d = %d \n", c.num1, c.num2, res);
                break;
                
            case 5 : res = [c squaringNumber: num1];
                 printf("%d ^ 2 = %d \n", c.num2, res);
                            
                break;
            default:  printf("pls Enter valid op");
            
          }
        printf("1) Enter new 2 Number: \n 2) Exit");
        int op;
        scanf("%d", &op);
        flag = op;
    }
        return 0;
}
