//
//  FieldView.m
//  UIDynamicDemo
//
//  Created by tang07070 on 15/11/16.
//  Copyright © 2015年 tang07070. All rights reserved.
//

#import "FieldView.h"

@interface FieldView ()
@property (nonatomic) UIView *ball;
@end

@implementation FieldView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {

        [self addBehavior];
    }
    return self;
}

- (void)addFieldBehavior {
    UIFieldBehavior *fieldBehavior = [UIFieldBehavior radialGravityFieldWithPosition:CGPointMake(230, 400)];
    [fieldBehavior addItem:self.testItem];
    [fieldBehavior addItem:self.ball];
    fieldBehavior.falloff = 0.1;
    fieldBehavior.strength = 20;
    [self.animator addBehavior:fieldBehavior];
}

- (void)addCollisionBehavior {
    UICollisionBehavior *collisionBehavior = [[UICollisionBehavior alloc] initWithItems:@[self.testItem, self.ball]];
    collisionBehavior.translatesReferenceBoundsIntoBoundary = YES;
    [self.animator addBehavior:collisionBehavior];
}

- (void)addBehavior {
    if (_ball) {
        [_ball removeFromSuperview];
    }
    _ball = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    _ball.center = CGPointMake(200, 400);
    _ball.backgroundColor = [UIColor blackColor];
    _ball.layer.cornerRadius = 15;
    [self addSubview:_ball];
        
    [self addFieldBehavior];
    [self addCollisionBehavior];
}

@end
