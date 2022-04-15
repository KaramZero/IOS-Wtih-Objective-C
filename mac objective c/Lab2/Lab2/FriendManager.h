//
//  FriendManager.h
//  Lab2
//
//  Created by Karam Ibrahim on 4/4/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#ifndef FriendManager_h
#define FriendManager_h



#endif /* FriendManager_h */
#import "Friend.h"

@interface FriendManager : NSObject

@property NSMutableArray *friends ;

-(void) add:(Friend*) friendd;
-(void) removeByID:(int) friendID;
-(void) removeByObj:(Friend*) friendd;
-(NSMutableArray*) getAll;


@end
