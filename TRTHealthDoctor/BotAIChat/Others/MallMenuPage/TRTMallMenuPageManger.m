//
//  TRTMallMenuPageManger.m
//  TRTHealthDoctor
//
//  Created by 周鹏钜 on 2018/9/30.
//  Copyright © 2018年 zhoupengju. All rights reserved.
//

#import "TRTMallMenuPageManger.h"

@implementation TRTMallMenuPageManger

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        UIButton *btnClose = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
        [self addSubview:btnClose];
        btnClose.backgroundColor = kWhile;
        
        [btnClose addTarget:self action:@selector(mallMenuPageClose) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void)mallMenuPageClose {
    [self removeFromSuperview];
}

@end
