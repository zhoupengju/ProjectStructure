//
//  TRTTools.m
//  TRTHealthDoctor
//
//  Created by 周鹏钜 on 2018/10/8.
//  Copyright © 2018年 zhoupengju. All rights reserved.
//

#import "TRTTools.h"
#import <CoreText/CoreText.h>

@implementation TRTTools

#pragma mark - 拼接字符串
+ (NSMutableString *)getStrFrom:(NSDictionary *)dict {
    
    NSMutableString *strMu = [[NSMutableString alloc]init];
    for (id strKey in [dict allKeys]) {
        [strMu appendFormat:@"&%@=%@",strKey,[dict objectForKey:strKey]];
    }
    return strMu;
}

#pragma mark - 是否是一个为空的字符串数据
+ (BOOL)isNullOrZeroString:(NSString *)string {
    
    if ([string isKindOfClass:[NSString class]]) {
        
        if ([string isEqualToString:@"0"] || [string isEqualToString:@"null"] || [string isEqualToString:@"NULL"] || [string isEqualToString:@""]) {
            
            return YES;
        } else {
            
            return NO;
        }
    } else {
        
        return NO;
    }
}

#pragma mark - 去掉首尾空格和换行符
+ (NSString *)removeSpaceAndNewline:(NSString *)str {
    
    if (str.length==0) {
        return str;
    }
    
    NSString *temp = [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    NSString *text = [temp stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return text;
}

// 去掉首尾空格和换行符之后的长度
+ (NSInteger)getRealLength:(NSString*)str
{
    NSString * strTmp = [self removeSpaceAndNewline:str];
    return strTmp.length;
}

#pragma mark -  计算文本行数,这个应该是最准确的方法
+ (NSInteger)getLinesWith:(NSAttributedString *)attributedText inWidth:(CGFloat)width {
    
    if (nil == attributedText || attributedText.length==0 || width<0.1) {
        return 0;
    }
    
    CTFramesetterRef framesetter = CTFramesetterCreateWithAttributedString((CFAttributedStringRef)attributedText);
    
    CGMutablePathRef framePath = CGPathCreateMutable();
    
    CGPathAddRect(framePath, NULL, CGRectMake(0, 0, width, CGFLOAT_MAX));
    
    CTFrameRef ctFrame = CTFramesetterCreateFrame(framesetter, CFRangeMake(0, 0), framePath, NULL);
    CFArrayRef lines = CTFrameGetLines(ctFrame);
    NSInteger lineNum = CFArrayGetCount(lines);
    
    CFRelease(framesetter);
    CFRelease(framePath);
    CFRelease(ctFrame);
    
    return lineNum;
}



@end
