//
//  CartFacade.m
//  beauty
//
//  Created by xiaoyuan wang on 3/21/14.
//  Copyright (c) 2014 1010.am. All rights reserved.
//

#import "CartFacade.h"

#define STORYBOARD_NAEM @"Cart"

@implementation CartFacade

+ (UIViewController *)instantiateInitialViewController
{
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:STORYBOARD_NAEM bundle:[NSBundle mainBundle]];
    
    return storyBoard.instantiateInitialViewController;
}

@end
