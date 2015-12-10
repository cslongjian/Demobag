//
//  AppDelegate.m
//  TestDemo
//
//  Created by Supwin_mbp002 on 15/8/10.
//  Copyright (c) 2015年 chenlongjian. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

// 当应用程序启动完毕的时候就会调用(系统自动调用)
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSLog(@"有storyboard版本走这里么？");
    
    NSLog(@" didFinishLaunchingWithOptions:完成初始化，进入程序");
    return YES;
}

- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSLog(@" willFinishLaunchingWithOptions:将要完成初始化");
    return YES;
}

// 即将失去活动状态的时候调用(失去焦点, 不可交互)
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    NSLog(@"applicationWillResignActive---失去焦点, 不可交互");
}

// 应用程序进入后台的时候调用
// 一般在该方法中保存应用程序的数据, 以及状态
- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    NSLog(@"applicationDidEnterBackground---应用程序进入后台的时候调用");
}

// 应用程序即将进入前台的时候调用
// 一般在该方法中恢复应用程序的数据,以及状态
- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    NSLog(@"applicationWillEnterForeground---应用程序即将进入前台的时候调用");

}
// 重新获取焦点(能够和用户交互)
- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    NSLog(@"applicationDidBecomeActive---重新获取焦点(能够和用户交互)");
}

// 应用程序即将被销毁的时候会调用该方法
// 注意:如果应用程序处于挂起状态的时候无法调用该方法
- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    NSLog(@"applicationWillTerminate---应用程序即将被销毁的时候会调用该方法");
}

//还有一种是内存低时候收到的警告，不过大多数情况都没去处理这里。



//启动
//2015-12-10 15:25:08.780 TestDemo[4311:384911]  willFinishLaunchingWithOptions:将要完成初始化
//2015-12-10 15:25:08.780 TestDemo[4311:384911] 有storyboard版本走这里么？
//2015-12-10 15:25:08.781 TestDemo[4311:384911]  didFinishLaunchingWithOptions:完成初始化，进入程序
//2015-12-10 15:25:08.797 TestDemo[4311:384911] applicationDidBecomeActive---重新获取焦点(能够和用户交互)

//点击HOME后
//2015-12-10 15:26:09.367 TestDemo[4311:384911] applicationWillResignActive---失去焦点, 不可交互
//2015-12-10 15:26:09.965 TestDemo[4311:384911] applicationDidEnterBackground---应用程序进入后台的时候调用

//点击程序图标重新进入app
//2015-12-10 15:26:15.977 TestDemo[4311:384911] applicationWillEnterForeground---应用程序即将进入前台的时候调用
//2015-12-10 15:26:16.495 TestDemo[4311:384911] applicationDidBecomeActive---重新获取焦点(能够和用户交互)

//双点击home键拖掉app
//2015-12-10 15:26:19.489 TestDemo[4311:384911] applicationWillResignActive---失去焦点, 不可交互
//2015-12-10 15:26:22.828 TestDemo[4311:384911] applicationDidEnterBackground---应用程序进入后台的时候调用
//2015-12-10 15:26:22.832 TestDemo[4311:384911] applicationWillTerminate---应用程序即将被销毁的时候会调用该方法

@end
