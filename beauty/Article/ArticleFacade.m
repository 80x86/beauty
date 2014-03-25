
//
//  ArticleFacade.m
//  beauty
//
//  Created by xiaoyuan wang on 3/25/14.
//  Copyright (c) 2014 1010.am. All rights reserved.
//

#import "ArticleFacade.h"
#import "ArticleViewController.h"

#define STORYBOARD_NAEM @"Article"

@implementation ArticleFacade

+ (UIViewController *)instantiateInitialViewControllerWithArticleId:(int)articleId
{
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:STORYBOARD_NAEM bundle:[NSBundle mainBundle]];
    
    ArticleViewController *controller = (ArticleViewController *)storyBoard.instantiateInitialViewController;
    controller.articleId = articleId;
    
    return controller;
}

@end
