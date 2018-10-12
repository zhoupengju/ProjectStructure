//
//  AppDelegate.m
//  TRTHealthDoctor
//
//  Created by 周鹏钜 on 2018/9/29.
//  Copyright © 2018年 zhoupengju. All rights reserved.
//

#import "AppDelegate.h"
#import "TRTMainPageManger.h"
#import "TRTMainTabBarManger.h"
#import "TRTSDKIntegrationManger.h"

@interface AppDelegate ()

@property (nonatomic, strong) TRTMainPageManger *mangerMainPage; //!<负责主界面管理

@property (nonatomic, strong) TRTSDKIntegrationManger *mangerSDK; //!<负责第三方SDK的集成管理

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //1.主界面管理
    [self makeMainPageManger];
    [self.mangerMainPage makeMainPage];
    
    //2.第三方SDK集成管理类
    [self makeAppStartingThirdIntegrationManger];
    [self.mangerSDK makeThirdIntegration];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    [self.mangerSDK applicationWillResignActive:application];
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    [self.mangerSDK applicationDidEnterBackground:application];
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    [self.mangerSDK applicationWillEnterForeground:application];
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    [self.mangerSDK applicationDidBecomeActive:application];
}


- (void)applicationWillTerminate:(UIApplication *)application {
    [self.mangerSDK applicationWillTerminate:application];
}

#pragma mark - 界面管理
- (void)makeMainPageManger {
    _mangerMainPage = [[TRTMainPageManger alloc] init];
    _mangerMainPage.appdelegate = self;
}

#pragma mark - App启动时第三方SDK管理
- (void)makeAppStartingThirdIntegrationManger {
    _mangerSDK = [[TRTSDKIntegrationManger alloc] init];
}

@end
