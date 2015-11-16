//
//  BaseView.m
//  UIDynamicDemo
//
//  Created by tang07070 on 15/11/13.
//  Copyright © 2015年 tang07070. All rights reserved.
//

#import "BaseView.h"

@implementation BaseView


- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        _animator = [[UIDynamicAnimator alloc] initWithReferenceView:self];
        _testItem = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 80, 80)];
        _testItem.center = CGPointMake(200, 100);
        _testItem.backgroundColor = [UIColor redColor];
        [self addSubview:_testItem];
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)doAgain {
    [_animator removeAllBehaviors];
    self.testItem.center = CGPointMake(200, 100);
    [self addBehavior];
}

- (void)addBehavior {
    
}

@end
