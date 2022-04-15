//
//  main.m
//  Lab1
//
//  Created by Karam Ibrahim on 4/3/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MyRect.h"
#import "MyComplex.h"

int main(int argc, const char * argv[]) {

    printf("karam says Hello World\n\n");
    NSLog(@"karam");
    
    
    MyRect *r = [MyRect new];
    [r setWidth:5];
    [r setHeight:6];
    
    [r printArea];
    
    
    MyComplex *c1 = [MyComplex new];
    MyComplex *c2 = [MyComplex new];
   
    [c1 setY:7];
    [c1 setX:6];
    
    [c2 setY:2];
    [c2 setX:3];
    
    
    
    [ MyComplex add:c1 : c2];
    [c1 print];
    
    
    
    
    
    
    
    
    
    

    int size =20;
    
    size/=2;
    
    for(int i = 0 ;i < size ; i++ ){
        for(int j = 0 ; j < size-i ; j++){
            printf(" ");
        }
        for(int j = 0 ; j < i ; j++){
            printf("* ");
        }
         
        
        printf("\n");
    }
    
     for(int i = 0 ;i < size ; i++ ){
           for(int j = 0 ; j < i ; j++){
               printf(" ");
           }
           for(int j = 0 ; j < (size-i) ; j++){
               printf("* ");
           }
            
           printf("\n");
       }
}
