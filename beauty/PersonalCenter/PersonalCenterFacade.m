//
//  PersonalCenterFacade.m
//  beauty
//
//  Created by xiaoyuan wang on 3/20/14.
//  Copyright (c) 2014 1010.am. All rights reserved.
//

#import "PersonalCenterFacade.h"

#define STORYBOARD_NAEM @"Personal"

@implementation PersonalCenterFacade

+ (UIViewController *)instantiateInitialViewController
{
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:STORYBOARD_NAEM bundle:[NSBundle mainBundle]];
    
    return storyBoard.instantiateInitialViewController;
}

@end
