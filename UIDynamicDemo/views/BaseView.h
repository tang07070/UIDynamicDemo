//
//  BaseView.h
//  UIDynamicDemo
//
//  Created by tang07070 on 15/11/13.
//  Copyright © 2015年 tang07070. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseView : UIView

@property (nonatomic, strong) UIDynamicAnimator *animator;
@property (nonatomic, strong) UIView *testItem;

- (void)doAgain;
- (void)addBehavior;
@end
