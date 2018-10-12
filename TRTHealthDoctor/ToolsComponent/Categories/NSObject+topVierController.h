//
//  NSObject+topVierController.h
//  TRTHealthDoctor
//
//  Created by 周鹏钜 on 2018/9/29.
//  Copyright © 2018年 zhoupengju. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (topVierController)

+ (UIViewController *)topViewController;

+ (UINavigationController *)currentNavigationController;

-(NSString *)jSONWithDataObject:(id)data;

-(NSString *)jsonEncodedKeyValueString;

@end

NS_ASSUME_NONNULL_END
