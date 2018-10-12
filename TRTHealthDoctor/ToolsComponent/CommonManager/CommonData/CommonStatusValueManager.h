//
//  CommonStatusValueManager.h
//  TRTHealthDoctor
//
//  Created by 周鹏钜 on 2018/9/29.
//  Copyright © 2018年 zhoupengju. All rights reserved.
//  系统状态值管理类

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CommonStatusValueManager : NSObject

+ (instancetype)sharedManager;

- (void)startedMainPage;
- (void)clearMainPage;

- (BOOL)isFistStartMainPage;



@end

NS_ASSUME_NONNULL_END
