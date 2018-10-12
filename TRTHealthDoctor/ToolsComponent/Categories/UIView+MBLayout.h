//
//  UIView+MBLayout.h
//  TRTHealthDoctor
//
//  Created by 周鹏钜 on 2018/9/29.
//  Copyright © 2018年 zhoupengju. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (MBLayout)

@property (nonatomic, assign) CGFloat top;

@property (nonatomic, assign) CGFloat bottom;

@property (nonatomic, assign) CGFloat left;

@property (nonatomic, assign) CGFloat right;

@property (nonatomic, assign) CGFloat width;

@property (nonatomic, assign) CGFloat height;

@property (nonatomic, assign) CGFloat centerX;

@property (nonatomic, assign) CGFloat centerY;

@property (nonatomic, assign) CGSize size;

@property (nonatomic, assign) CGPoint origin;

///圆角
- (void)setCornerWithRadius:(CGFloat)radius;
///圆角加边框
- (void)setCornerWithRadius:(CGFloat)radius borderWidth:(CGFloat)width borderColor:(UIColor *)color;

@end

NS_ASSUME_NONNULL_END
