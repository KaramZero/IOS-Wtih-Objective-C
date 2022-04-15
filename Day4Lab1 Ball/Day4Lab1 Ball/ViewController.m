//
//  ViewController.m
//  Day4Lab1 Ball
//
//  Created by Karam Ibrahim on 4/11/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UICollisionBehaviorDelegate>

@property UIDynamicAnimator *animator;
@property (weak, nonatomic) IBOutlet UIView *myBall;
@property Boolean flag;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _flag = YES;
    _myBall.layer.cornerRadius = 25.0;
    _animator = [[UIDynamicAnimator alloc]initWithReferenceView:self.view];
    
    [self doGravity];
    
}



-(void)collisionBehavior:(UICollisionBehavior *)behavior endedContactForItem:(id)item withBoundaryIdentifier:(id)identifier{
    if (_flag) {
            self.myBall.backgroundColor = [UIColor blackColor];
        
    }else
        self.myBall.backgroundColor = [UIColor redColor];

    
    _flag = !_flag;
}
-(void) doGravity{
    
    UIGravityBehavior *gravity = [[UIGravityBehavior alloc]initWithItems:@[_myBall]];
    
    [_animator addBehavior:gravity];
    
    UICollisionBehavior *collision = [[UICollisionBehavior alloc]initWithItems:@[_myBall]];
   collision.translatesReferenceBoundsIntoBoundary = YES;
    
    

    collision.collisionDelegate = self;
    [_animator addBehavior:collision];
    
    UIDynamicItemBehavior *item = [[UIDynamicItemBehavior alloc] initWithItems:@[_myBall]];
    
    item.elasticity = 0.75;
    [_animator addBehavior:item];
    
    
    
}


@end
