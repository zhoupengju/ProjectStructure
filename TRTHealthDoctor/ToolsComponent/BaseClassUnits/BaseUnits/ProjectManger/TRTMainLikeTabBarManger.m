//
//  TRTMainLikeTabBarManger.m
//  TRTHealthDoctor
//
//  Created by 周鹏钜 on 2018/9/30.
//  Copyright © 2018年 zhoupengju. All rights reserved.
//

#import "TRTMallMenuPageManger.h"
#import "TRTCustomUpDownButton.h"
#import "TRTBotAIChatController.h"
#import "TRTMainLikeTabBarManger.h"
#import "TRTShoppingCartController.h"

@interface TRTMainLikeTabBarManger ()

@property (nonatomic, strong) UIView *viewBottomTabBar;

@end


@implementation TRTMainLikeTabBarManger

#pragma mark - 底部自定义导航栏管理
- (void)makeBottomBarManger {
    
    [self createUI];
}

#pragma mark - 搭建UI
- (void)createUI {
    
    //1. 创建 TabBar view
    UIView *viewBottomTabBar = [[UIView alloc] init];
    _viewBottomTabBar = viewBottomTabBar;
    [self.botAIChatVc.view addSubview:viewBottomTabBar];
    viewBottomTabBar.backgroundColor = kGlableBg;
    [viewBottomTabBar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.mas_equalTo(self.botAIChatVc.view);
        
        if (@available(iOS 11.0, *)) {
            make.top.mas_equalTo(self.botAIChatVc.view.mas_safeAreaLayoutGuideBottom).offset(-49);
        } else {
            make.height.mas_equalTo(49);
        }
    }];
    
    //2. 创建左边发现按钮
    TRTCustomUpDownButton *btnMall = [[TRTCustomUpDownButton alloc] init];
    [viewBottomTabBar addSubview:btnMall];
    
    [btnMall mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.bottom.mas_equalTo(viewBottomTabBar);
        make.width.mas_equalTo(80);
    }];
    
    btnMall.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    [btnMall setTitle:@"发现" forState:UIControlStateNormal];
    [btnMall setImage:[UIImage imageNamed:@"sa_wdxx"] forState:UIControlStateNormal];
    [btnMall addTarget:self action:@selector(goJumpMallMainPage) forControlEvents:UIControlEventTouchUpInside];
    
    //3. 创建右边弹框按钮
    UIButton *btnAlert = [UIButton pj_buttonWithImage:@"exit" superView:viewBottomTabBar constraints:^(MASConstraintMaker *make) {
        make.right.top.bottom.mas_equalTo(viewBottomTabBar);
        make.width.mas_equalTo(80);
    } touchUp:^(UIButton *sender) {
        [self goJumpMallMenuPage];
    }];
    
    //4. 创建聊天信息框
    UITextView *textViewChat = [[UITextView alloc] init];
    [viewBottomTabBar addSubview:textViewChat];
    
    [textViewChat mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(viewBottomTabBar);
        make.left.mas_equalTo(btnMall.mas_right);
        make.right.mas_equalTo(btnAlert.mas_left);
    }];
}

#pragma mark - 跳转事件
// 去商城主页
- (void)goJumpMallMainPage {
    
    TRTShoppingCartController *shoppingCart = [[TRTShoppingCartController alloc] init];
    [self.botAIChatVc.navigationController pushViewController:shoppingCart animated:YES];
}

// 去商城菜单
- (void)goJumpMallMenuPage {
    
    TRTMallMenuPageManger *mallMenuPageManger = [[TRTMallMenuPageManger alloc] init];
    [self.botAIChatVc.view addSubview:mallMenuPageManger];
    mallMenuPageManger.backgroundColor = [UIColor redColor];
    
    [mallMenuPageManger mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(self.botAIChatVc.view);
        make.bottom.mas_equalTo(self.viewBottomTabBar.mas_top);
        
        if (@available(iOS 11.0, *)) {
            make.top.mas_equalTo(self.botAIChatVc.view.mas_safeAreaLayoutGuideTop);
        } else {
            make.top.mas_equalTo(self.botAIChatVc.view);
        }
    }];
}

@end

