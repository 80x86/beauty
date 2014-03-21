//
//  SearchFacade.m
//  beauty
//
//  Created by xiaoyuan wang on 3/21/14.
//  Copyright (c) 2014 1010.am. All rights reserved.
//

#import "SearchFacade.h"

#define STORYBOARD_NAEM @"Search"

@implementation SearchFacade

+ (UIViewController *)instantiateInitialViewController
{
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:STORYBOARD_NAEM bundle:[NSBundle mainBundle]];
    
    return storyBoard.instantiateInitialViewController;
}

@end
