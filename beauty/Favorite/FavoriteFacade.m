//
//  FavoriteFacade.m
//  beauty
//
//  Created by xiaoyuan wang on 3/25/14.
//  Copyright (c) 2014 1010.am. All rights reserved.
//

#import "FavoriteFacade.h"

#define STORYBOARD_NAEM @"Favorite"

@implementation FavoriteFacade

+ (UIViewController *)instantiateInitialViewController
{
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:STORYBOARD_NAEM bundle:[NSBundle mainBundle]];
    
    return storyBoard.instantiateInitialViewController;
}

+ (BOOL)addToFavoriteType:(FavoriteType)favType withItemId:(int)itemId
{
    return YES;
}

@end
