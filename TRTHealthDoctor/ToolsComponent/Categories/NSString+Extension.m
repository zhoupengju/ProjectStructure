//
//  NSString+Extension.m
//  TRTHealthDoctor
//
//  Created by 周鹏钜 on 2018/9/29.
//  Copyright © 2018年 zhoupengju. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)

- (CGSize)sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize
{
    NSDictionary *attrs = @{NSFontAttributeName : font};
    return [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}

// self 就是调用当前成员方法的NSString对象
- (CGRect)textRectWithSize:(CGSize)size attributes:(NSDictionary *)attributes
{
    return [self boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil];
}

- (BOOL)isBlankString {
    
    NSString *string = self;
    
    if (string == nil || string == NULL) {
        return YES;
    }
    if ([string isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if ([[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length]==0) {
        return YES;
    }
    return NO;
}

- (NSString *)formatterNumberOfMoney {
    
    NSString *str = self;
    
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    formatter.numberStyle = kCFNumberFormatterDecimalStyle;
    
    NSString *strFormatter = [formatter stringFromNumber:[NSNumber numberWithDouble:str.doubleValue]];
    
    if ([strFormatter rangeOfString:@"."].location != NSNotFound) {
        return strFormatter;
    } else {
        return [strFormatter stringByAppendingString:@".00"];
    }
}

- (NSString *)iphoneNumberVerification {
    
    NSString *str = self;
    
    if (str.length != 11) {
        return @"请输入11位手机号";
    }
    
    //1. 产生一个正则表达式对象
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"1[34578][0-9]{9}$" options:NSRegularExpressionCaseInsensitive error:nil];
    
    //2. 进行匹配
    NSArray *matchs = [regex matchesInString:str options:NSMatchingReportCompletion range:NSMakeRange(0, str.length)];
    
    if (matchs.count) {
        NSLog(@"匹配成功");
    } else {
        return @"请输入有效手机号";
    }
    
    return @"";
}

- (NSString *)licensePlateNumberVerification {
    
    NSString *str = self;
    
    //1. 产生一个正则表达式对象
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[京津沪渝冀豫云辽黑湘皖鲁新苏浙赣鄂桂甘晋蒙陕吉闽贵粤青藏川宁琼使领A-Z]{1}[A-Z]{1}[A-Z0-9]{4}[A-Z0-9挂学警港澳]{1}$" options:NSRegularExpressionCaseInsensitive error:nil];
    
    //2. 进行匹配
    NSArray *matchs = [regex matchesInString:str options:NSMatchingReportCompletion range:NSMakeRange(0, str.length)];
    
    if (matchs.count) {
        NSLog(@"匹配成功");
    } else {
        return @"请输入有效车牌号";
    }
    
    return @"";
}

// get local file dir which is readwrite able
- (NSString *)getDocumentDirectory {
    NSString * path = NSHomeDirectory();
    NSLog(@"NSHomeDirectory:%@",path);
    NSString * userName = NSUserName();
    NSString * rootPath = NSHomeDirectoryForUser(userName);
    NSLog(@"NSHomeDirectoryForUser:%@",rootPath);
    NSArray * paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString * documentsDirectory = [paths objectAtIndex:0];
    return documentsDirectory;
}

-(NSMutableAttributedString *)stingSwithToAttributedString {
    
    NSString *stingSwith = self;
    
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:stingSwith];
    [string addAttribute:NSForegroundColorAttributeName value:kGlobalBlue range:NSMakeRange(0, string.length)];
    
    return string;
}

-(NSString *)stringJudgeEmpty {
    
    NSString *str = self;
    
    if (str.length && (str != nil)) {
        return str;
    }
    
    return @"";
}

-(NSData *)dataWithCompressImagePath {
    
    NSString *imagePath = self;
    
    NSData *dataImage = UIImageJPEGRepresentation([UIImage imageWithContentsOfFile:self], 1.0);
    //    PJLog(@"压缩前________%lu", dataImage.length / 1024);
    if ( [dataImage length]/1024 >800 &&  [dataImage length]/1024 <=1200) {
        dataImage = UIImageJPEGRepresentation([UIImage imageWithContentsOfFile:imagePath], 0.5);
    }else if ( [dataImage length]/1024 > 1200) {
        dataImage = UIImageJPEGRepresentation([UIImage imageWithContentsOfFile:imagePath], 0.6);
    }
    //    PJLog(@"压缩后________%lu", dataImage.length / 1024 );
    
    return dataImage;
}


@end
