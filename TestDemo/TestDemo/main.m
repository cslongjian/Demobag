//
//  main.m
//  TestDemo
//
//  Created by Supwin_mbp002 on 15/8/10.
//  Copyright (c) 2015年 chenlongjian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        NSLog(@"程序启动顺序---");
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
    
    
    /* 2015-9-13
     写一坨启动过程的理解吧。
     
     ios 启动都是从 这个main函数进入的
     创建UIApplication 和 UIApplicationDelegate  创建事件循环 main runloop
     其中UIApplication 的核心作用是提供iOS程序运行期间的控制和协作工作。
     创建队列，接收事件，分发事件给适当目标进行处理。 
     UIApplication是个单例可以从这里拿到许多关于程序的相关信息。[UIApplication sharedApplication];
     1.设置app显示的红标
     2.联网的指示灯
     3.状态栏的管理
     4.打开URL的功能。（类似Android的intent 调用其他应用或者系统级别上的功能）
     它的代理有许多关于程序的事件(生命周期【关闭启动】，系统事件【来电，短信】)等
     */
}
