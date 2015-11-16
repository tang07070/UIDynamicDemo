//
//  PushView.m
//  UIDynamicDemo
//
//  Created by tang07070 on 15/11/16.
//  Copyright © 2015年 tang07070. All rights reserved.
//

#import "PushView.h"

@implementation PushView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self addBehavior];
    }
    return self;
}

- (void)addPushBehavior {
    UIPushBehavior *pushBehavior = [[UIPushBehavior alloc] initWithItems:@[self.testItem] mode:UIPushBehaviorModeInstantaneous];
    pushBehavior.pushDirection = CGVectorMake(0.5, 0.5);
    pushBehavior.magnitude = 5;
    [self.animator addBehavior:pushBehavior];
    
    UICollisionBehavior *collisionBehavior = [[UICollisionBehavior alloc] initWithItems:@[self.testItem]];
    collisionBehavior.translatesReferenceBoundsIntoBoundary = YES;
    [self.animator addBehavior:collisionBehavior];
}

- (void)addBehavior {
    [self addPushBehavior];
}

@end
