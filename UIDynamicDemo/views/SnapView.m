//
//  SnapView.m
//  UIDynamicDemo
//
//  Created by tang07070 on 15/11/16.
//  Copyright © 2015年 tang07070. All rights reserved.
//

#import "SnapView.h"

@implementation SnapView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self addBehavior];
    }
    return self;
}

- (void)addSnapBehavior {
    CGPoint pt = CGPointMake(arc4random()%200+100, arc4random()%300+200);
    UISnapBehavior *snapBehavior = [[UISnapBehavior alloc] initWithItem:self.testItem snapToPoint:pt];
    [self.animator addBehavior:snapBehavior];
}

- (void)addBehavior {
    [self addSnapBehavior];
}
@end
