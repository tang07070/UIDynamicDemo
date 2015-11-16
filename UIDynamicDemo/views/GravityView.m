//
//  GravityView.m
//  UIDynamicDemo
//
//  Created by tang07070 on 15/11/13.
//  Copyright © 2015年 tang07070. All rights reserved.
//

#import "GravityView.h"

@implementation GravityView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self addBehavior];
    }
    
    return self;
}

- (void)addGravityBehavior {
    UIGravityBehavior *behavior = [[UIGravityBehavior alloc] initWithItems:@[self.testItem]];
    behavior.magnitude = (arc4random() % 5) + .5;
    [self.animator addBehavior:behavior];
}

- (void)addBehavior {
    [self addGravityBehavior];
}

@end
