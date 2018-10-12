//
//  TRTCustomUpDownButton.m
//  TRTHealthDoctor
//
//  Created by 周鹏钜 on 2018/9/30.
//  Copyright © 2018年 zhoupengju. All rights reserved.
//

#import "TRTCustomUpDownButton.h"

#define TRTCustomUpDownButtonImageRatio   0.4
#define TRTCustomUpDownButtonImageRatioIPhoneX   0.5

@implementation TRTCustomUpDownButton

-(instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        //设置内部属性
        self.imageView.contentMode = UIViewContentModeCenter;
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        
        [self setTitleColor:kGlobal9 forState:UIControlStateNormal];
        
        if ([self isIPhoneXSeriesEquipment]) {
            self.titleLabel.font = [UIFont systemFontOfSize:16];
        } else {
            self.titleLabel.font = [UIFont systemFontOfSize:14];
        }
    }
    return self;
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect {
    
    CGFloat imageW = contentRect.size.width;
    CGFloat imageH = contentRect.size.height * TRTCustomUpDownButtonImageRatio;
    CGRect rect = CGRectMake(0, 10, imageW, imageH);
    
    if (![self isIPhoneXSeriesEquipment]) {
        
        imageH = contentRect.size.height * TRTCustomUpDownButtonImageRatioIPhoneX;
        rect = CGRectMake(0, 5, imageW, imageH);
    }
    
    return rect;
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect {
    
    CGFloat titleW = contentRect.size.width;
    CGFloat titleY = contentRect.size.height * TRTCustomUpDownButtonImageRatio;
    CGFloat titleH = contentRect.size.height - titleY;
    
    if (![self isIPhoneXSeriesEquipment]) {
        
        titleY = contentRect.size.height * TRTCustomUpDownButtonImageRatioIPhoneX;
    }
    
    return CGRectMake(0, titleY, titleW, titleH);
}


@end
