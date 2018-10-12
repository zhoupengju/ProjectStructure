
//
//  CommonStatusValueManager.m
//  TRTHealthDoctor
//
//  Created by 周鹏钜 on 2018/9/29.
//  Copyright © 2018年 zhoupengju. All rights reserved.
//

#import "CommonStatusValueManager.h"

@implementation CommonStatusValueManager

+ (instancetype)sharedManager {
    
    static CommonStatusValueManager *manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[CommonStatusValueManager alloc] init];
    });
    return manager;
}

#pragma mark - 引导页状态管理
// 引导页已经启动
-(void)startedMainPage {
    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"fistLaunched"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

// 引导页启动状态清除
-(void)clearMainPage {
    [[NSUserDefaults standardUserDefaults] setBool:NO forKey:@"fistLaunched"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

// 检测是不是第一次启动APP
- (BOOL)isFistStartMainPage {
    BOOL startStatus = [[NSUserDefaults standardUserDefaults] objectForKey:@"fistLaunched"];
    return startStatus;
}

@end
