//
//  AppDelegate.m
//  Day1Lab1
//
//  Created by Nayraa Ibrahim on 4/6/22.
//  Copyright © 2022 Nayraa . All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


-(BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary<UIApplicationLaunchOptionsKey,id> *)launchOptions{
    printf("\nwillFinishLaunchingWithOptions\n");
    return YES;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    printf("\ndidFinishLaunchingWithOptions\n");
    return YES;
}

-(void)applicationWillEnterForeground:(UIApplication *)application{
    printf("\napplicationWillEnterForeground\n");
    
}
-(void)applicationDidBecomeActive:(UIApplication *)application{
    printf("\napplicationDidBecomeActive\n");
}

-(void)applicationWillResignActive:(UIApplication *)application{
    printf("\napplicationWillResignActive\n");
}
-(void)applicationDidEnterBackground:(UIApplication *)application{
    printf("\napplicationDidEnterBackground\n");
}

-(void)applicationWillTerminate:(UIApplication *)application{
    printf("\napplicationWillTerminate");
}

@end
