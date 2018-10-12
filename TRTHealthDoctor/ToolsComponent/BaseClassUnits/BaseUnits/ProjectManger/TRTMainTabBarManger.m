//
//  TRTMainTabBarManger.m
//  TRTHealthDoctor
//
//  Created by 周鹏钜 on 2018/9/29.
//  Copyright © 2018年 zhoupengju. All rights reserved.
//

#import "TRTMainTabBarManger.h"
#import "TRTHomeViewController.h"
#import "TRTBaseTabBarController.h"
#import "TRTShoppingCartController.h"
#import "TRTBaseNavigationController.h"

@implementation TRTMainTabBarManger

-(UITabBarController *)settingTabBar {
    
    TRTBaseTabBarController *tabbar = [[TRTBaseTabBarController alloc] init];
    
    [tabbar.tabBar setTintColor:kTabBarNormal];
    [tabbar.tabBar setBarTintColor:kTabBarSelect];
    UIImage* tabBarBackground = [UIImage imageWithColor:kGlobal3 withFrame:CGRectMake(0, 0, WIDTH, 44)];
    [[UITabBar appearance] setBackgroundImage:[tabBarBackground resizableImageWithCapInsets:UIEdgeInsetsZero]];
    
    UITabBarItem *items1 = [self createTabBar:1 withString:@"首页"];
    TRTBaseNavigationController *nav1 = [[TRTBaseNavigationController alloc] initWithRootViewController:[[TRTHomeViewController alloc] init]];
    nav1.tabBarItem = items1;
    
    UITabBarItem *items2 = [self createTabBar:2 withString:@"购物车"];
    TRTBaseNavigationController *nav2 = [[TRTBaseNavigationController alloc] initWithRootViewController:[[TRTShoppingCartController alloc] init]];
    nav2.tabBarItem = items2;
    
//    UITabBarItem *items3 = [self createTabBar:3 withString:@"个人"];
//    TRTBaseNavigationController *nav3 = [[TRTBaseNavigationController alloc] initWithRootViewController:[[TRTMeViewController alloc] init]];
//    nav3.tabBarItem = items3;
    
    tabbar.viewControllers = @[nav1, nav2, nav2];
    
    return tabbar;
}

- (UITabBarItem *)createTabBar:(int)type withString:(NSString *)title {
    
    UIImage *selectedImage=[UIImage imageNamed:[NSString stringWithFormat:@"tabbar_%d_on",type]];
    UIImage * originImage=[UIImage imageNamed:[NSString stringWithFormat:@"tabbar_%d",type]];
    
    selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    originImage = [originImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UITabBarItem *item =[[UITabBarItem alloc] initWithTitle:title image:originImage selectedImage:selectedImage ];
    
    return item;
}

@end
