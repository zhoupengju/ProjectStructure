//
//  UIBarButtonItem+Extension.m
//  TRTHealthDoctor
//
//  Created by 周鹏钜 on 2018/9/29.
//  Copyright © 2018年 zhoupengju. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)

+(UIBarButtonItem *)itemBack {
    
    UIButton *btn = [[UIButton alloc] init];
    
    btn.size = CGSizeMake(3, 3);
    [btn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}

+(UIBarButtonItem *)itemBackTarget:(id)target action:(SEL)action {
    
    UIButton *btn = [[UIButton alloc] init];
    
    btn.size = CGSizeMake(15, 44);
    [btn setImage:[UIImage imageNamed:@"sq_fanhui_all"] forState:UIControlStateNormal];
    
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}

+(UIBarButtonItem *)itemBackTitle:(NSString *)title Target:(id)target action:(SEL)action {
    
    UIButton *btn = [[UIButton alloc] init];
    if (title.length <= 2) {
        btn.size = CGSizeMake(44, 44);
    } else {
        if (title.length > 4) {
            btn.size = CGSizeMake(100, 44);
        } else {
            btn.size = CGSizeMake(60, 44);
        }
    }
    
    btn.titleLabel.font = [UIFont systemFontOfSize:14];
    [btn setTitle:title forState:UIControlStateNormal];
    btn.titleLabel.textAlignment = NSTextAlignmentRight;
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}

+(UIBarButtonItem *)itemWithImageName:(NSString *)imageName target:(id)target action:(SEL)action {
    
    UIButton *btn = [[UIButton alloc] init];
    
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    
    btn.size = CGSizeMake(44, 44);
    
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}

+(UIBarButtonItem *)itemWithImageName:(NSString *)imageName highImageName:(NSString *)highImageName insets:(UIEdgeInsets)insets target:(id)target action:(SEL)action {
    
    UIButton *btn = [[UIButton alloc] init];
    
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:highImageName] forState:UIControlStateHighlighted];
    
    btn.size = CGSizeMake(44, 44);
    btn.imageEdgeInsets = insets;
    
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}

@end
