//
//  Utils.m
//  test2
//
//  Created by 大飞 on 2021/7/9.
//  Copyright © 2021 大飞. All rights reserved.
//

#import "Utils.h"

@implementation Utils
//获取系统状态栏高度
+ (CGFloat)getSystemStatusBarHight {
    float statusBarHeight = 0;
    if (@available(iOS 13.0, *)) {
        UIStatusBarManager *statusBarManager = [UIApplication sharedApplication].windows.firstObject.windowScene.statusBarManager;
        statusBarHeight = statusBarManager.statusBarFrame.size.height;
    }
    else {
        statusBarHeight = [UIApplication sharedApplication].statusBarFrame.size.height;
    }
    return statusBarHeight;
}

+ (void)test1 {
    MMKV *mmkv = [MMKV defaultMMKV];
    [mmkv setBool:YES forKey:@"key1"];
    BOOL isHabe = [mmkv getBoolForKey:@"key1"];
    NSLog(@"isHabe is %d",isHabe);
}
@end
