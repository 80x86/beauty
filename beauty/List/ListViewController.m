//
//  ListViewController.m
//  beauty
//
//  Created by xiaoyuan wang on 3/25/14.
//  Copyright (c) 2014 1010.am. All rights reserved.
//

#import "ListViewController.h"

@interface ListViewController ()

@end

@implementation ListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"%d", self.cataType);
    if (self.cataType == ArticleCataTypeMakeUp) {
        self.title = @"美妆";
    }else if (self.cataType == ArticleCataTypeSkin) {
        self.title = @"护肤";
    }else if (self.cataType == ArticleCataTypePerfume) {
        self.title = @"香水";
    }else if (self.cataType == ArticleCataTypeNews) {
        self.title = @"资讯";
    }
}
- (IBAction)goToArticle:(UIButton *)sender {
    UIViewController *controller = [ArticleFacade instantiateInitialViewControllerWithArticleId:0];
    [self.navigationController pushViewController:controller animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
