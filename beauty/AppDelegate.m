//
//  AppDelegate.m
//  beauty
//
//  Created by xiaoyuan wang on 3/20/14.
//  Copyright (c) 2014 1010.am. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)searchButtonPressed:(UIButton *)sender
{
    NSLog(@"searchButtonPressed...");
    
    UIViewController *controller = [SearchFacade instantiateInitialViewController];
    
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    UINavigationController *navController = tabBarController.viewControllers[sender.tag];
//    UIViewController *presentingController = [navController viewControllers][0];
    [navController pushViewController:controller animated:YES];
//    [presentingController presentViewController:controller animated:NO completion:nil];
}
- (void)addSearchButtonForViewController:(UIViewController *)navController withTag:(NSInteger)tag
{
    UIViewController *controller = [(UINavigationController *)navController viewControllers][0];
    UIButton *searchButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [searchButton setImage:[UIImage imageNamed:@"first"] forState:UIControlStateNormal];
    searchButton.frame = CGRectMake(0, 0, 30, 30);
    searchButton.tag = tag;
    [searchButton addTarget:self action:@selector(searchButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc] initWithCustomView:searchButton];
    controller.navigationItem.leftBarButtonItem = buttonItem;
}

- (void)cartButtonPressed:(UIButton *)sender
{
    
    UIViewController *controller = [CartFacade instantiateInitialViewController];
    
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    UINavigationController *navController = tabBarController.viewControllers[sender.tag];
    
    [navController pushViewController:controller animated:YES];
}
- (void)addCartButtonForViewController:(UIViewController *)navController withTag:(NSInteger)tag
{
    UIViewController *controller = [(UINavigationController *)navController viewControllers][0];
    UIButton *cartButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [cartButton setImage:[UIImage imageNamed:@"second"] forState:UIControlStateNormal];
    cartButton.frame = CGRectMake(0, 0, 30, 30);
    cartButton.tag = tag;
    [cartButton addTarget:self action:@selector(cartButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc] initWithCustomView:cartButton];
    controller.navigationItem.rightBarButtonItem = buttonItem;
    
}

- (void)setupTheTabBarViewController
{
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    
    NSMutableArray *controllers = [NSMutableArray arrayWithArray:tabBarController.viewControllers];
    
    [controllers addObject:[PersonalFacade instantiateInitialViewController]];
    [controllers addObject:[StoreFacade instantiateInitialViewController]];
    
    tabBarController.viewControllers = controllers;
    
    // 首页
    [tabBarController.viewControllers[0] tabBarItem].image = [UIImage imageNamed:@"first"];
    [tabBarController.viewControllers[0] tabBarItem].title = @"首页";
    // 个人中心
    [tabBarController.viewControllers[1] tabBarItem].image = [UIImage imageNamed:@"second"];
    [tabBarController.viewControllers[1] tabBarItem].title = @"个人中心";
    // 商城
    [tabBarController.viewControllers[2] tabBarItem].image = [UIImage imageNamed:@"first"];
    [tabBarController.viewControllers[2] tabBarItem].title = @"商城";
    
    
    // add Search Button
    [self addSearchButtonForViewController:tabBarController.viewControllers[0] withTag:0];
    [self addSearchButtonForViewController:tabBarController.viewControllers[2] withTag:2];
    
    // add Cart Button
    [self addCartButtonForViewController:tabBarController.viewControllers[0] withTag:0];
    [self addCartButtonForViewController:tabBarController.viewControllers[2] withTag:2];
    
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self setupTheTabBarViewController];
    
    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
