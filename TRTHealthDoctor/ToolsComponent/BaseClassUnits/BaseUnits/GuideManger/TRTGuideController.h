//
//  TRTGuideController.h
//  TRTHealthDoctor
//
//  Created by 周鹏钜 on 2018/9/28.
//  Copyright © 2018年 zhoupengju. All rights reserved.
//

#import "TRTBaseController.h"

NS_ASSUME_NONNULL_BEGIN

@interface TRTGuideController : TRTBaseController

@property (nonatomic, copy) void(^pushMainVc)(); //!<主界面启动回调

@end

NS_ASSUME_NONNULL_END
