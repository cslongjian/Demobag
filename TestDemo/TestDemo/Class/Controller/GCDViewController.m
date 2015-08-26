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

@end
