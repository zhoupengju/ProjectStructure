//
//  TRTBotAIChatController.m
//  TRTHealthDoctor
//
//  Created by 周鹏钜 on 2018/9/30.
//  Copyright © 2018年 zhoupengju. All rights reserved.
//

#import "TRTBotAIChatController.h"
#import "TRTMainLikeTabBarManger.h"
#import "TRTMessageDisplayController.h"

@interface TRTBotAIChatController ()

@property (nonatomic, strong) TRTMainLikeTabBarManger *mainLikeTabBarManger ;

@end

@implementation TRTBotAIChatController

#pragma mark - 系统生命周期函数
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self configNav];
    
    [self createUI];
}

#pragma mark - UI的构建
- (void)createUI {
    
    //1. 聊天主界面
    [self makeViewTableView];
    
    //2. 底部模块栏管理
    [self mainPageLikeTabBarLogicManger];
}

- (void)makeViewTableView {
   
}

- (void)mainPageLikeTabBarLogicManger {
    
    TRTMainLikeTabBarManger *mainLikeTabBarManger = [[TRTMainLikeTabBarManger alloc] init];
    mainLikeTabBarManger.botAIChatVc = self;
    [mainLikeTabBarManger makeBottomBarManger];
}


#pragma mark - 导航栏配置
- (void)configNav {
    
    self.navigationItem.title = @"同仁堂AI";
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImageName:@"sq_home_information" target:self action:@selector(buttonMessageDidClick)];
}

- (void)buttonMessageDidClick {
    TRTMessageDisplayController *messageDisplayVc = [[TRTMessageDisplayController alloc] init];
    [self.navigationController pushViewController:messageDisplayVc animated:YES];
}

@end
