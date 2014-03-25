//
//  ListFacade.h
//  beauty
//
//  Created by xiaoyuan wang on 3/25/14.
//  Copyright (c) 2014 1010.am. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    ArticleCataTypeMakeUp,
    ArticleCataTypeSkin,
    ArticleCataTypePerfume,
    ArticleCataTypeNews
}ArticleCataType;

@interface ListFacade : NSObject

+ (UIViewController *)instantiateInitialViewControllerWithType:(ArticleCataType)cataType;

@end
