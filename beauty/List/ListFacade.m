//
//  ListFacade.m
//  beauty
//
//  Created by xiaoyuan wang on 3/25/14.
//  Copyright (c) 2014 1010.am. All rights reserved.
//

#import "ListFacade.h"
#import "ListViewController.h"

#define STORYBOARD_NAEM @"List"

@implementation ListFacade

+ (UIViewController *)instantiateInitialViewControllerWithType:(ArticleCataType)cataType
{
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:STORYBOARD_NAEM bundle:[NSBundle mainBundle]];
    
    ListViewController *controller = (ListViewController *)storyBoard.instantiateInitialViewController;
    controller.cataType = cataType;
    
    return controller;
}

@end
