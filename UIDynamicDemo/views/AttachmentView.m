//
//  AttachmentView.m
//  UIDynamicDemo
//
//  Created by tang07070 on 15/11/16.
//  Copyright © 2015年 tang07070. All rights reserved.
//

#import "AttachmentView.h"

@implementation AttachmentView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self addBehavior];
        
        UIView *anchor = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
        anchor.center = CGPointMake(100, 300);
        anchor.backgroundColor = [UIColor blackColor];
        anchor.layer.cornerRadius = 15;
        [self addSubview:anchor];
    }
    return self;
}

- (void)addAttachmentBehavior {
    UIAttachmentBehavior *attachementBehavior = [[UIAttachmentBehavior alloc] initWithItem:self.testItem attachedToAnchor:CGPointMake(100, 300)];
    [self.animator addBehavior:attachementBehavior];
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
    [self addAttachmentBehavior];
    [self addPushBehavior];
}

@end
