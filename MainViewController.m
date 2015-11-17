//
//  MainViewController.m
//  UIDynamicDemo
//
//  Created by tang07070 on 15/11/13.
//  Copyright © 2015年 tang07070. All rights reserved.
//

#import "MainViewController.h"
#import "DetailViewController.h"

@interface MainViewController ()
@property (nonatomic, copy) NSArray *items;
@end

@implementation MainViewController

- (instancetype)init {
    if (self = [super init]) {
        _items = @[
                   @{@"title":@"Gravity", @"vname":@"GravityView"},
                   @{@"title":@"Collision", @"vname":@"CollisionView"},
                   @{@"title":@"Snap", @"vname":@"SnapView"},
                   @{@"title":@"Push", @"vname":@"PushView"},
                   @{@"title":@"DynamicItem", @"vname":@"DynamicItemView"},
                   @{@"title":@"Attachment", @"vname":@"AttachmentView"},
                   @{@"title":@"Field", @"vname":@"FieldView"}
                   ];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"UIDynamicDemo";
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    NSDictionary *item = [_items objectAtIndex:indexPath.row];
    [cell.textLabel setText:item[@"title"]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *item = [_items objectAtIndex:indexPath.row];
    DetailViewController *detail = [[DetailViewController alloc] initWithViewName:item[@"vname"] andTitle:item[@"title"]];
    [self.navigationController pushViewController:detail animated:YES];
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
