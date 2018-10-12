//
//  TRTMainPageManger.m
//  TRTHealthDoctor
//
//  Created by 周鹏钜 on 2018/9/28.
//  Copyright © 2018年 zhoupengju. All rights reserved.
//

#import "AppDelegate.h"
#import "TRTMainPageManger.h"
#import "TRTGuideController.h"
#import "TRTMainTabBarManger.h"
#import "TRTBotAIChatController.h"
#import "TRTBaseNavigationController.h"

@interface TRTMainPageManger()

@end

@implementation TRTMainPageManger

#pragma mark - 主界面管理
- (void)makeMainPage {
    
    //1. 创建 window
    self.appdelegate.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.appdelegate.window.backgroundColor = [UIColor whiteColor];
    
    //2. 主界面启动逻辑管理
    [self mainPageStartLogicManger];
    
    [self.appdelegate.window makeKeyAndVisible];
}

#pragma mark - 主界面启动逻辑管理
- (void)mainPageStartLogicManger {
    
    TRTBaseNavigationController *baseNav = [[TRTBaseNavigationController alloc] initWithRootViewController:[[TRTBotAIChatController alloc] init]];
    self.appdelegate.window.rootViewController = baseNav;
}

#pragma mark - 主界面启动逻辑管理 备注: 有引导页面的逻辑
//- (void)mainPageStartLogicManger {
//
//    if ([CommonStatusValueManager sharedManager].isFistStartMainPage) {
//        [self mainPageTabBarManger];
//    } else{
//        [self systemGuidePageLogicManger];
//    }
//
//    [self mainPageTabBarManger];
//}
//
//- (void)systemGuidePageLogicManger {
//
//    TRTGuideController *vc = [[TRTGuideController alloc] init];
//    self.appdelegate.window.rootViewController = vc;
//
//    vc.pushMainVc = ^() {
//        [self mainPageTabBarManger];
//    };
//}
//
//- (void)mainPageTabBarManger {
//
//    TRTMainTabBarManger *tabBarManger = [[TRTMainTabBarManger alloc] init];
//    UITabBarController *tabBarVc = [tabBarManger settingTabBar];
//    self.appdelegate.window.rootViewController = tabBarVc;
//}

@end
