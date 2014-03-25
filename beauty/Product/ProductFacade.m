
//
//  ProductFacade.m
//  beauty
//
//  Created by xiaoyuan wang on 3/25/14.
//  Copyright (c) 2014 1010.am. All rights reserved.
//

#import "ProductFacade.h"
#import "ProductTableViewController.h"

#define STORYBOARD_NAEM @"Product"

@implementation ProductFacade

+ (UIViewController *)instantiateInitialViewControllerWithProductId:(int)productId
{
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:STORYBOARD_NAEM bundle:[NSBundle mainBundle]];
    
    ProductTableViewController *controller = (ProductTableViewController *)storyBoard.instantiateInitialViewController;
    controller.productId = productId;
    
    return controller;
}

@end
