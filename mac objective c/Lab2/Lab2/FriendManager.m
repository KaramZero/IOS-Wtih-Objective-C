//
//  FriendManager.m
//  Lab2
//
//  Created by Karam Ibrahim on 4/4/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FriendManager.h"
#import "Friend.h"

@implementation FriendManager

- (id)init {
    self = [super init];
    self.friends = [NSMutableArray new];
    return self;
}

-(void) add:(Friend*) friendd{
    [self.friends addObject:friendd];
}
-(void) removeByID:(int) friendID{
    NSMutableArray *temp = [NSMutableArray new ];
    for (Friend *f in self.friends ) {
        if(f.friendId != friendID){
            [temp addObject:f];
        }
    }
    
    self.friends = temp;
    
}
-(void) removeByObj:(Friend *)friendd{
    [self.friends removeObject:friendd];
}
-(NSMutableArray*) getAll{
    for (Friend *f in self.friends ) {
        printf(" name: %s ,, ID: %d ,, Email: %s ,, phone: %d ,, age: %d \n\n",[f.name UTF8String] , f.friendId ,[f.email UTF8String],f.phone,f.age);
    }
    return self.friends;
}

@end
