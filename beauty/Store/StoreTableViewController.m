//
//  StoreTableViewController.m
//  beauty
//
//  Created by xiaoyuan wang on 3/20/14.
//  Copyright (c) 2014 1010.am. All rights reserved.
//

#import "StoreTableViewController.h"
#import "MKNumberBadgeView.h"

@interface StoreTableViewController ()

@end

@implementation StoreTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    [self removeTheBadgeView];
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
    
    int num = [CartFacade numberOfProductsInCart];
    
    if (num) {
        MKNumberBadgeView *numberBadge = [[MKNumberBadgeView alloc] initWithFrame:CGRectMake(35, 0, 40, 40)];
        numberBadge.value = num;
        
        [self.navigationController.navigationBar addSubview:numberBadge];
    }
    
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

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BrandCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}

@end
