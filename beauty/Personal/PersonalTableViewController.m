//
//  PersonalTableViewController.m
//  beauty
//
//  Created by xiaoyuan wang on 3/20/14.
//  Copyright (c) 2014 1010.am. All rights reserved.
//

#import "PersonalTableViewController.h"

@interface PersonalTableViewController ()

@end

@implementation PersonalTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%@, %d, %d", indexPath, indexPath.section, indexPath.row);
    if (indexPath.section == 0 && indexPath.row == 2) {
        // to Favorite
        UIViewController *controller = [FavoriteFacade instantiateInitialViewController];
        [self.navigationController pushViewController:controller animated:YES];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end