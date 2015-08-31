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
 
    // 1在主线程中使用异步执行方式，没有新开线程。
    [self asyncExecutiveMission];
    // 2主线程中同步执行方式导致卡死。
//    [self syncExecutiveMission];
//    3串行执行任务
    [self serialExecutiveMission];
//    4并行执行任务
    [self parallelExecutiveMission];
    
    
    
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
    NSLog(@"1打印主线程--%@", [NSThread mainThread]);
    //1.获取主队列
    dispatch_queue_t queue=dispatch_get_main_queue();
    //2.把任务添加到主队列中执行
    dispatch_async(queue, ^{
        NSLog(@"1使用异步函数执行主队列中的任务1--当前任务线程：%@",[NSThread currentThread]);
    });
    dispatch_async(queue, ^{
        NSLog(@"1使用异步函数执行主队列中的任务2--当前任务线程：%@",[NSThread currentThread]);
    });
    dispatch_async(queue, ^{
        NSLog(@"1使用异步函数执行主队列中的任务3--当前任务线程：%@",[NSThread currentThread]);
    });
    
//    在主线程中使用异步执行方式，没有新开线程。可以看到都是在同一个线程中执行。

}

//（2）使用同步函数，在主线程中执行主队列中得任务，会发生死循环，任务无法往下执行。
-(void)syncExecutiveMission
{
    //打印主线程
    NSLog(@"2打印主线程--%@", [NSThread mainThread]);
    //1.获取主队列
    dispatch_queue_t queue=dispatch_get_main_queue();
    //2.把任务添加到主队列中执行
    dispatch_sync(queue, ^{
        NSLog(@"2使用异步函数执行主队列中的任务11--当前任务线程：%@",[NSThread currentThread]);
    });
    dispatch_sync(queue, ^{
        NSLog(@"2使用异步函数执行主队列中的任务22--当前任务线程：%@",[NSThread currentThread]);
    });
    dispatch_sync(queue, ^{
        NSLog(@"2使用异步函数执行主队列中的任务33--当前任务线程：%@",[NSThread currentThread]);
    });
    
    //结果是给死循环，卡住。
}

//3使用串行队列，执行任务
-(void)serialExecutiveMission
{
    //打印主线程
    NSLog(@"3打印主线程--%@", [NSThread mainThread]);
    //1.获取主队列
    dispatch_queue_t queue = dispatch_queue_create("创建的串行队列", NULL);
    //2.把任务添加到主队列中执行
    dispatch_sync(queue, ^{
        NSLog(@"3使用同步函数执行串行队列中的任务111--当前任务线程：%@",[NSThread currentThread]);
    });
    dispatch_sync(queue, ^{
        NSLog(@"3使用同步函数执行串行队列中的任务222--当前任务线程：%@",[NSThread currentThread]);
    });
    dispatch_sync(queue, ^{
        NSLog(@"3使用同步函数执行串行队列中的任务333--当前任务线程：%@",[NSThread currentThread]);
    });
    
    //

}

//4使用并行队列，执行任务
-(void)parallelExecutiveMission
{
    
    //打印主线程
    NSLog(@"4打印主线程--%@", [NSThread mainThread]);
    //1.获取全局并行队列，一般不需要手动创建。
    dispatch_queue_t queue=dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    //2.把任务添加到并行队列中执行
    dispatch_async(queue, ^{
        NSLog(@"4使用异步函数执行并行队列中的任务1111--当前任务线程：%@",[NSThread currentThread]);
    });
    dispatch_async(queue, ^{
        NSLog(@"4使用异步函数执行并行队列中的任务2222--当前任务线程：%@",[NSThread currentThread]);
    });
    dispatch_async(queue, ^{
        NSLog(@"4使用异步函数执行并行队列中的任务3333--当前任务线程：%@",[NSThread currentThread]);
    });

    //
    
}

@end
