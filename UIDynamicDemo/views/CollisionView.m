//
//  CollisionView.m
//  UIDynamicDemo
//
//  Created by tang07070 on 15/11/16.
//  Copyright © 2015年 tang07070. All rights reserved.
//

#import "CollisionView.h"

@implementation CollisionView


- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self addBehavior];
    }
    
    return self;
}

- (void)addCollisionBehavior {
    UIGravityBehavior *gravityBehavior = [[UIGravityBehavior alloc] initWithItems:@[self.testItem]];
    [self.animator addBehavior:gravityBehavior];
    
    UICollisionBehavior *collisionBehavior = [[UICollisionBehavior alloc] initWithItems:@[self.testItem]];
    collisionBehavior.translatesReferenceBoundsIntoBoundary = YES;
    [self.animator addBehavior:collisionBehavior];
}

- (void)addBehavior {
    [self addCollisionBehavior];
}
@end
