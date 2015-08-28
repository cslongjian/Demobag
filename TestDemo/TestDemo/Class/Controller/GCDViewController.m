//
//  GCDViewController.m
//  TestDemo
//
//  Created by Supwin_mbp002 on 15/8/26.
//  Copyright (c) 2015年 chenlongjian. All rights reserved.
//

#import "GCDViewController.h"

@interface GCDViewController ()

@end

@implementation GCDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
 
    //    在主线程中使用异步执行方式，没有新开线程。
    [self asyncExecutiveMission];
    // 主线程中同步执行方式导致卡死。
    [self syncExecutiveMission];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//（1）使用异步函数执行主队列中得任务

-(void)asyncExecutiveMission
{
    
    //打印主线程
    NSLog(@"打印主线程--%@", [NSThread mainThread]);
    //1.获取主队列
    dispatch_queue_t queue=dispatch_get_main_queue();
    //2.把任务添加到主队列中执行
    dispatch_async(queue, ^{
        NSLog(@"使用异步函数执行主队列中的任务1--%@",[NSThread currentThread]);
    });
    dispatch_async(queue, ^{
        NSLog(@"使用异步函数执行主队列中的任务2--%@",[NSThread currentThread]);
    });
    dispatch_async(queue, ^{
        NSLog(@"使用异步函数执行主队列中的任务3--%@",[NSThread currentThread]);
    });
    
//    在主线程中使用异步执行方式，没有新开线程。可以看到都是在同一个线程中执行。

}

//（2）使用同步函数，在主线程中执行主队列中得任务，会发生死循环，任务无法往下执行。
-(void)syncExecutiveMission
{
    //打印主线程
    NSLog(@"打印主线程--%@", [NSThread mainThread]);
    //1.获取主队列
    dispatch_queue_t queue=dispatch_get_main_queue();
    //2.把任务添加到主队列中执行
    dispatch_sync(queue, ^{
        NSLog(@"使用异步函数执行主队列中的任务1--%@",[NSThread currentThread]);
    });
    dispatch_sync(queue, ^{
        NSLog(@"使用异步函数执行主队列中的任务2--%@",[NSThread currentThread]);
    });
    dispatch_sync(queue, ^{
        NSLog(@"使用异步函数执行主队列中的任务3--%@",[NSThread currentThread]);
    });
}

@end
