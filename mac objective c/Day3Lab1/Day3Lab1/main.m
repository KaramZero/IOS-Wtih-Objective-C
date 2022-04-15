//
//  main.m
//  Day3Lab1
//
//  Created by Karam Ibrahim on 4/5/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ClassB.h"
#import "ClassA.h"
#import "MyClass.h"

int main(int argc, const char * argv[]) {

    ClassA *objA = [ClassA new];
    ClassB *objB = [ClassB new];
    MyClass *myObj = [MyClass new];
    
    if([objA isMemberOfClass:[ClassB class]]){
        printf("ObjA is memeber of classA\n");
    }else printf("ObjA is not memeber of classA\n");
    
 
    if([objB isMemberOfClass:[ClassA class]]){
        printf("ObjB is memeber of classA \n");
    }else printf("ObjB is not memeber of classA \n");
    
    if([objB isKindOfClass:[ClassA class]]){
          printf("ObjB isKindOfClass classA \n");
      }else printf("ObjB is not KindOfClassclassA \n");
    
    if([objB respondsToSelector:@selector(methodA)]){
           printf("ObjA is respondsToSelector methodA\n");
       }else printf("ObjA is not respondsToSelector methodA\n");
       
       
    if([myObj respondsToSelector:@selector(methodA)]){
             printf("myObj is respondsToSelector methodA\n");
         }else printf("myObj is not respondsToSelector methodA\n");
         
         
    
    
}
