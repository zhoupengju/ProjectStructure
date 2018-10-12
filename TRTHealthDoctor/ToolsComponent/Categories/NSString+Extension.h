//
//  NSString+Extension.h
//  TRTHealthDoctor
//
//  Created by 周鹏钜 on 2018/9/29.
//  Copyright © 2018年 zhoupengju. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Extension)

/**
 *  返回字符串所占用的尺寸
 *
 *  @param font    字体
 *  @param maxSize 最大尺寸
 */
- (CGSize)sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize;

/**
 *  计算当前字符串显示所需的实际frame，返回值的x = 0, y = 0
 */
- (CGRect)textRectWithSize:(CGSize)size attributes:(NSDictionary *)attributes;

- (NSString *)formatterNumberOfMoney;

- (NSString *)iphoneNumberVerification;

- (NSString *)licensePlateNumberVerification;

- (BOOL)isBlankString;

- (NSString *)getDocumentDirectory;

- (NSData *)dataWithCompressImagePath;

- (NSMutableAttributedString *)stingSwithToAttributedString;

- (NSString *)stringJudgeEmpty;

@end

NS_ASSUME_NONNULL_END
