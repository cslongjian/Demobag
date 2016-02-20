//
//  main.m
//  LYNinthChapter
//
//  Created by Supwin_mbp002 on 16/2/19.
//  Copyright © 2016年 chenlongjian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        //程序入口
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
//        隐式的创建UIApplication对象 并设置代理为AppDelegate
//        AppDelegate实现了协议UIApplicationDelegate
//        UIApplication 代表ios应用程序本身，是一个全局对象。
    }
}
