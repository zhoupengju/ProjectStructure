//
//  Common_Macro.h
//  TRTHealthDoctor
//
//  Created by 周鹏钜 on 2018/9/28.
//  Copyright © 2018年 zhoupengju. All rights reserved.
//  系统的一些宏定义

#ifndef Common_Macro_h
#define Common_Macro_h

#ifdef DEBUG
#   define TRTLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#   define TRTLog(...)
#endif

// 宽, 高
#define WIDTH [[UIScreen mainScreen] bounds].size.width
#define HEIGHT [[UIScreen mainScreen] bounds].size.height

// 系统导航栏高度
#define NavAllH        (44 + StatusRectH)

#define StatusRectH     [[UIApplication sharedApplication] statusBarFrame].size.height

#define SQIOS11Later    ([[UIDevice currentDevice].systemVersion floatValue]>10.999)

#define kDevice_Is_iPhoneX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)

// 全局的一些通用高度宏定义
#define kGlableEdge 17

// 字符串转换处理
#define STRING_FORMAT(str)   [NSString stringWithFormat:@"%@",str]

#define STRING_Int(number)  [NSString stringWithFormat:@"%d", number]

#define STRING_Integer(Integer)  [NSString stringWithFormat:@"%@",([NSNumber numberWithInteger:Integer])]

#define STRING_UInteger(UInteger)  [NSString stringWithFormat:@"%@",([NSNumber numberWithUnsignedInteger:UInteger])]

#define STRING_Float(number)  [NSString stringWithFormat:@"%@",([NSNumber numberWithFloat:number])]

#define STRING_Long(number)  [NSString stringWithFormat:@"%@",[NSNumber numberWithLong:number]]

#define Filt_Format(str)   [NSDecimalNumber decimalNumberWithString:str]

#endif /* Common_Macro_h */
