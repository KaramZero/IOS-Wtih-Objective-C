//
//  main.m
//  Day3Lab4
//
//  Created by Karam Ibrahim on 4/5/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
   
    NSString *s;
   
    char cString[20];

    scanf("%s",&cString);
    s = [NSString stringWithCString:cString encoding:NSASCIIStringEncoding];
    NSArray *res1 = [s componentsSeparatedByString:@"."];
    
    printf("%s \n%s  \n%s \n%s\n\n",[res1[0]UTF8String],[res1[1]UTF8String],[res1[2]UTF8String],[res1[3]UTF8String]);
    
    for (int i=0;i<[s length] ; i++) {
        if( [s characterAtIndex:i] != '.')
            printf("%c",[s characterAtIndex:i]);
        else
            printf("   \n");
    }
    
    printf(" \n\n\n");
    
    NSString *s1 = [s stringByReplacingOccurrencesOfString:@"." withString:@"\n"];
    
    printf("\n%s \n ",[s1 UTF8String]);
    
}
