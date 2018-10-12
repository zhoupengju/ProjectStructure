//
//  UITextField+PJMasonryKit.m
//  sqjr
//
//  Created by 周鹏钜 on 2017/8/7.
//  Copyright © 2017年 Hzz. All rights reserved.
//

#import "UITextField+PJMasonryKit.h"

@implementation UITextField (PJMasonryKit)

+(instancetype)pj_textFieldWithPlaceholder:(NSString *)placeholder superView:(UIView *)superView constraints:(PJConstraintMaker)constraints {

    UITextField *textField = [[UITextField alloc] init];
    [superView addSubview:textField];
    
    textField.font = KFontGlable(14);
    textField.textColor = kGlobal4;
    textField.clearButtonMode = YES;
    textField.placeholder = placeholder;
    textField.leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 12, 2)];
    textField.leftViewMode = UITextFieldViewModeAlways;
    
    textField.keyboardType = UIKeyboardTypeDecimalPad;
    
    if (superView && constraints) {
        
        [textField mas_makeConstraints:^(MASConstraintMaker *make) {
            constraints(make);
        }];
    }
    
    return textField;
}

@end
