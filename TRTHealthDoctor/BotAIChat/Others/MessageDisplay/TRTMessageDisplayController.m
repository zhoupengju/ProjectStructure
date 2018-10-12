//
//  TRTMessageDisplayController.m
//  TRTHealthDoctor
//
//  Created by 周鹏钜 on 2018/9/30.
//  Copyright © 2018年 zhoupengju. All rights reserved.
//

#import "TRTMessageDisplayController.h"

@interface TRTMessageDisplayController ()

@end

@implementation TRTMessageDisplayController

#pragma mark - 系统生命周期函数
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self configNav];
    
}


#pragma mark - 导航栏配置
- (void)configNav {
    
    self.navigationItem.title = @"消息";
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemBackTarget:self action:@selector(goBack)];
}

- (void)goBack {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
