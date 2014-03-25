//
//  ProductFacade.h
//  beauty
//
//  Created by xiaoyuan wang on 3/25/14.
//  Copyright (c) 2014 1010.am. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ProductFacade : NSObject

+ (UIViewController *)instantiateInitialViewControllerWithProductId:(int)productId;

@end
