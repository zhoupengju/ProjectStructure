//
//  TRTMainLikeTabBarManger.h
//  TRTHealthDoctor
//
//  Created by 周鹏钜 on 2018/9/30.
//  Copyright © 2018年 zhoupengju. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TRTBotAIChatController;

NS_ASSUME_NONNULL_BEGIN

@interface TRTMainLikeTabBarManger : NSObject

@property (nonatomic, weak) TRTBotAIChatController *botAIChatVc;

- (void)makeBottomBarManger;

//- (void)goJumpMallMainPage; //!< 去商城主页
//- (void)goJumpMallMenuPage; //!< 去商城菜单

@end

NS_ASSUME_NONNULL_END
