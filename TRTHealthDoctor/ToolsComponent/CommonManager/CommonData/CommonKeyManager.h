//
//  CommonKeyManager.h
//  TRTHealthDoctor
//
//  Created by 周鹏钜 on 2018/9/28.
//  Copyright © 2018年 zhoupengju. All rights reserved.
//  第三方Key值管理类

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CommonKeyManager : NSObject

+ (instancetype)sharedManager;

- (NSString*)getSmartServiceAccessKey;

@end

NS_ASSUME_NONNULL_END
