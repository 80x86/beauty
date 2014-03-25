//
//  LoginFacade.m
//  beauty
//
//  Created by xiaoyuan wang on 3/25/14.
//  Copyright (c) 2014 1010.am. All rights reserved.
//

#import "LoginFacade.h"
#import "LoginTableViewController.h"

#define STORYBOARD_NAEM @"Login"

@implementation LoginFacade

+ (void)presentTheLoginPageFrom:(UIViewController *)fromViewController success:(void (^)(BOOL))completion
{
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:STORYBOARD_NAEM bundle:[NSBundle mainBundle]];
    
    UINavigationController *navController = (UINavigationController *)storyBoard.instantiateInitialViewController;
    
    LoginTableViewController *loginController = navController.viewControllers[0];
    
    loginController.completion = completion;
    
    [fromViewController presentViewController:navController animated:YES completion:nil];
    
//    return storyBoard.instantiateInitialViewController;
    
}

+ (BOOL)isLoggedIn
{
    return YES;
}

+ (Userinfo *)sharedUserinfo
{
    return nil;
}

@end
