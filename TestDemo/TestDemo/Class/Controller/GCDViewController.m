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
//    [self asyncExecutiveMission];
    // 2主线程中同步执行方式导致卡死。
//    [self syncExecutiveMission];
//    3串行执行任务
//    [self serialExecutiveMission];
//    4并行执行任务
//    [self parallelExecutiveMission];
    
//    [self testMission];
    //多任务组合
//    [self groupTask];
//    
//    //中间插入任务使用
//    [self barrierTask];
    
    //重复执行
    [self replayTask];
    
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//        NSLog(@"------当前线程--%@", [NSThread mainThread]);
//
//        NSURL * url = [NSURL URLWithString:@"http://i2.hoopchina.com.cn/blogfile/201410/14/BbsImg141327602396636_480*310.jpg"];
//        NSData * data = [[NSData alloc]initWithContentsOfURL:url];
//        UIImage *image = [[UIImage alloc]initWithData:data];
//        if (data != nil) {
//            dispatch_async(dispatch_get_main_queue(), ^{
//                self.uiimage.image = image;
//                NSLog(@"-----内部当前线程--%@", [NSThread mainThread]);
//            });
//        }  
//    });
    
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



//一条题目判定执行顺序
-(void)testMission
{
    dispatch_async(dispatch_get_main_queue(), ^{
        NSLog(@"222");
        //由于同步执行主线程导致卡死。。
//        dispatch_sync(dispatch_get_main_queue(), ^{
//            NSLog(@"3333333");
//        });
    });
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSLog(@"444");
    });
    
    NSLog(@"111");
    
    //请问执行顺序
//    猜测结果  2一定在1后面   4可能在1后或者1前。。  412   124   142
    
//    第一次执行 142
//       出现412
}

//任务组合的使用  dispatch_group_async可以实现监听一组任务是否完成，完成后得到通知执行其他的操作。这个方法很有用，比如你执行三个下载任务，当三个任务都下载完成后你才通知界面说完成的了
- (void)groupTask
{
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_group_t group = dispatch_group_create();
    dispatch_group_async(group, queue, ^{
        [NSThread sleepForTimeInterval:1];
        NSLog(@"group1");
    });
    dispatch_group_async(group, queue, ^{
        [NSThread sleepForTimeInterval:2];
        NSLog(@"group2");
    });
    dispatch_group_async(group, queue, ^{
        [NSThread sleepForTimeInterval:3];
        NSLog(@"group3");
    });
    dispatch_group_notify(group, dispatch_get_main_queue(), ^{
        NSLog(@"updateUi");
    });
}

//中间插入任务的使用 dispatch_barrier_async是在前面的任务执行结束后它才执行，而且它后面的任务等它执行完成之后才会执行
-  (void)barrierTask
{
    dispatch_queue_t queue = dispatch_queue_create("barrierTask", DISPATCH_QUEUE_CONCURRENT);
    dispatch_async(queue, ^{
        [NSThread sleepForTimeInterval:2];
        NSLog(@"dispatch_async1");
    });
    dispatch_async(queue, ^{
        [NSThread sleepForTimeInterval:4];
        NSLog(@"dispatch_async2");
    });
    dispatch_barrier_async(queue, ^{
        NSLog(@"dispatch_barrier_async");
        [NSThread sleepForTimeInterval:4];
        
    });
    dispatch_async(queue, ^{
        [NSThread sleepForTimeInterval:1];
        NSLog(@"dispatch_async3");  
    });
}

// 重复执行
- (void)replayTask
{
//    重复执行如果放到主线程中会卡死。。
    dispatch_apply(5, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(size_t index) {
        // 执行5次
        NSLog(@"重复执行任务----");
        
    });
}


@end
