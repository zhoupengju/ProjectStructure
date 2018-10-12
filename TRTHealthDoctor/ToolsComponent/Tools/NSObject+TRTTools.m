//
//  NSObject+TRTTools.m
//  TRTHealthDoctor
//
//  Created by 周鹏钜 on 2018/10/8.
//  Copyright © 2018年 zhoupengju. All rights reserved.
//

#import "NSObject+TRTTools.h"

@implementation NSObject (TRTTools)

#pragma mark - 检测是否为 IPhoneX 类设备
- (BOOL)isIPhoneXSeriesEquipment {
    
    BOOL iPhoneXSeries = NO;
    if (UIDevice.currentDevice.userInterfaceIdiom != UIUserInterfaceIdiomPhone) {
        return iPhoneXSeries;
    }
    
    if (@available(iOS 11.0, *)) {
        UIWindow *mainWindow = [UIApplication sharedApplication].delegate.window;
        if (mainWindow.safeAreaInsets.bottom > 0.0) {
            iPhoneXSeries = YES;
        }
    }
    
    return iPhoneXSeries;
    
}

@end
