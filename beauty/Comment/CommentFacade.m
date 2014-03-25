//
//  CommentFacade.m
//  beauty
//
//  Created by xiaoyuan wang on 3/25/14.
//  Copyright (c) 2014 1010.am. All rights reserved.
//

#import "CommentFacade.h"

#define STORYBOARD_NAEM @"Comment"

@implementation CommentFacade

+ (UIViewController *)instantiateInitialViewController
{
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:STORYBOARD_NAEM bundle:[NSBundle mainBundle]];
    
    return storyBoard.instantiateInitialViewController;
}

@end
