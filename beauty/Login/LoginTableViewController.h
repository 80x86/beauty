//
//  LoginTableViewController.h
//  beauty
//
//  Created by xiaoyuan wang on 3/25/14.
//  Copyright (c) 2014 1010.am. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginTableViewController : UITableViewController

@property (nonatomic, strong) void (^completion)(BOOL);

@end
