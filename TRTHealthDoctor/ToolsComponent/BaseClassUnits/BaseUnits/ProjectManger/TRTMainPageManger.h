//
//  TRTMainPageManger.h
//  TRTHealthDoctor
//
//  Created by 周鹏钜 on 2018/9/28.
//  Copyright © 2018年 zhoupengju. All rights reserved.
//  负责整个app的启动界面管理

#import <Foundation/Foundation.h>

@class AppDelegate;

NS_ASSUME_NONNULL_BEGIN

@interface TRTMainPageManger : NSObject

@property(nonatomic, weak) AppDelegate *appdelegate;

- (void)makeMainPage;


@end

NS_ASSUME_NONNULL_END
