//
//  DynamicItemView.m
//  UIDynamicDemo
//
//  Created by tang07070 on 15/11/16.
//  Copyright © 2015年 tang07070. All rights reserved.
//

#import "DynamicItemView.h"

@implementation DynamicItemView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self addBehavior];
    }
    return self;
}

- (void)addDynamicItemBehavior {
    UIDynamicItemBehavior *dynamicBehavior = [[UIDynamicItemBehavior alloc] initWithItems:@[self.testItem]];
    dynamicBehavior.elasticity = 0.5;
    dynamicBehavior.density = 2;
    [dynamicBehavior addAngularVelocity:10 forItem:self.testItem];
    [dynamicBehavior addLinearVelocity:CGPointMake(100, 200) forItem:self.testItem];
    [self.animator addBehavior:dynamicBehavior];
}

- (void)addCollisionBehavior {
    UICollisionBehavior *collisionBehavior = [[UICollisionBehavior alloc] initWithItems:@[self.testItem]];
    collisionBehavior.translatesReferenceBoundsIntoBoundary = YES;
    [self.animator addBehavior:collisionBehavior];
}

- (void)addBehavior {
    [self addCollisionBehavior];
    [self addDynamicItemBehavior];
}

@end
