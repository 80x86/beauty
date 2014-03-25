//
//  HomeTableViewController.m
//  beauty
//
//  Created by xiaoyuan wang on 3/20/14.
//  Copyright (c) 2014 1010.am. All rights reserved.
//

#import "HomeTableViewController.h"
#import "MKNumberBadgeView.h"

@interface HomeTableViewController ()

@end

@implementation HomeTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)removeTheBadgeView
{
    for (UIView *subview in self.navigationController.navigationBar.subviews) {
        if ([subview isKindOfClass:[MKNumberBadgeView class]]) {
            [subview removeFromSuperview];
        }
    }
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    // add badge number as the number of product in cart
    
    [self removeTheBadgeView];
    
    
    int num = 3;//[CartFacade numberOfProductsInCart];
    
    MKNumberBadgeView *numberBadge = [[MKNumberBadgeView alloc] initWithFrame:CGRectMake(285, 0, 40, 40)];
    numberBadge.hideWhenZero = YES;
    numberBadge.font = [UIFont systemFontOfSize:10];
    numberBadge.shadow = NO;
    numberBadge.shine = NO;
    numberBadge.pad = 1;
    numberBadge.strokeColor = numberBadge.fillColor;
    numberBadge.value = num;
    
    
    [self.navigationController.navigationBar addSubview:numberBadge];
    
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    [self removeTheBadgeView];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HomeBannerCell" forIndexPath:indexPath];
        return cell;
    }else if (indexPath.row == 1) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HomeArticleCell" forIndexPath:indexPath];
        return cell;
    }else if (indexPath.row == 2) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HomeHotHeaderCell" forIndexPath:indexPath];
        return cell;
    }else if (indexPath.row == 3) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HomeHotDetailCell" forIndexPath:indexPath];
        return cell;
    }
    
    
    // Configure the cell...
    
    return nil;
}

- (IBAction)ArticleCataButtonPressed:(UIButton *)sender {    
    UIViewController *controller = [ListFacade instantiateInitialViewControllerWithType:sender.tag];
    [self.navigationController pushViewController:controller animated:YES];
}



@end
