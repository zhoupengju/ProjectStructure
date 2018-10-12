//
//  TRTTools.h
//  TRTHealthDoctor
//
//  Created by 周鹏钜 on 2018/10/8.
//  Copyright © 2018年 zhoupengju. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TRTTools : NSObject

// 拼接字符串
+ (NSMutableString *)getStrFrom:(NSDictionary *)dict;

// 是否是一个为空的字符串数据
+ (BOOL)isNullOrZeroString:(NSString *)string;

// 去掉首尾空格和换行符
+ (NSString *)removeSpaceAndNewline:(NSString *)str;

// 计算文本行数,这个应该是最准确的方法
+ (NSInteger)getLinesWith:(NSAttributedString *)attributedText inWidth:(CGFloat)width;




@end

NS_ASSUME_NONNULL_END
