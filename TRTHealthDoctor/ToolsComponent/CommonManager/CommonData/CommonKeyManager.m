//
//  CommonKeyManager.m
//  TRTHealthDoctor
//
//  Created by 周鹏钜 on 2018/9/28.
//  Copyright © 2018年 zhoupengju. All rights reserved.
//

#import "CommonKeyManager.h"

NSString* DefaultSmartServiceAccessKey = @"----------------------------";

@implementation CommonKeyManager

+ (instancetype)sharedManager {
    
    static CommonKeyManager *manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[CommonKeyManager alloc] init];
    });
    return manager;
}

- (NSString *)getSmartServiceAccessKey {
    return DefaultSmartServiceAccessKey;
}

@end
