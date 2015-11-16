//
//  DetailViewController.m
//  UIDynamicDemo
//
//  Created by tang07070 on 15/11/13.
//  Copyright © 2015年 tang07070. All rights reserved.
//

#import "DetailViewController.h"
#import "BaseView.h"

@interface DetailViewController ()
@property (nonatomic) UITableView *tableView;

@end

@implementation DetailViewController

- (instancetype)initWithViewName:(NSString *)viewName andTitle:(NSString *)title {
    if (self = [super init]) {
        self.navigationItem.title = title;
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"again" style:UIBarButtonItemStylePlain target:self action:@selector(doAgain)];
        self.view = [[NSClassFromString(viewName) alloc] init];
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)doAgain {
    BaseView *v = (BaseView *)self.view;
    [v doAgain];
}

@end
