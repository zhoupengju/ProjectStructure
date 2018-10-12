//
//  NSObject+topVierController.m
//  TRTHealthDoctor
//
//  Created by 周鹏钜 on 2018/9/29.
//  Copyright © 2018年 zhoupengju. All rights reserved.
//

#import "NSObject+topVierController.h"

@implementation NSObject (topVierController)

+ (UIViewController *)topViewController
{
    NSArray *windowsArray = [UIApplication sharedApplication].windows;
    UIWindow * window = nil;
    if (windowsArray.count > 0) {
        window = [windowsArray objectAtIndex:0];
    }
    return [self topViewController:window.rootViewController];
}

+ (UIViewController *)topViewController:(UIViewController *)rootViewController
{
    if ([rootViewController isKindOfClass:[UINavigationController class]]) {
        UINavigationController *navigationController = (UINavigationController *)rootViewController;
        return [self topViewController:[navigationController.viewControllers lastObject]];
    }
    if ([rootViewController isKindOfClass:[UITabBarController class]]) {
        UITabBarController *tabController = (UITabBarController *)rootViewController;
        return [self topViewController:tabController.selectedViewController];
    }
    if (rootViewController.presentedViewController) {
        return [self topViewController:rootViewController];
    }
    return rootViewController;
}

+(UINavigationController *)currentNavigationController {
    
    UITabBarController *tabBarVc = (id)[UIApplication sharedApplication].keyWindow.rootViewController;
    UINavigationController *navVc = tabBarVc.selectedViewController;
    
    return navVc;
}

-(NSString *)jSONWithDataObject:(id)data {
    
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:data options:NSJSONWritingPrettyPrinted error:&error];
    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    
    return jsonString;
}

-(NSString *)jsonEncodedKeyValueString {
    
    NSError *error = nil;
    NSData *data = [NSJSONSerialization dataWithJSONObject:self
                                                   options:0 // non-pretty printing
                                                     error:&error];
    if(error)
        TRTLog(@"JSON Parsing Error: %@", error);
    
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

@end
