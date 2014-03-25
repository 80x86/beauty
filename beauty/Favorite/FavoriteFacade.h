//
//  FavoriteFacade.h
//  beauty
//
//  Created by xiaoyuan wang on 3/25/14.
//  Copyright (c) 2014 1010.am. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    FavoriteTypeArticle,
    FavoriteTypeProduct
} FavoriteType;

@interface FavoriteFacade : NSObject

+ (UIViewController *)instantiateInitialViewController;

+ (BOOL)addToFavoriteType:(FavoriteType)favType withItemId:(int)itemId;

@end
