//
//  LifeCycleOfViewController.m
//  TestDemo
//  生命周期和VC内View的创建过程。
//  Created by Supwin_mbp002 on 15/9/13.
//  Copyright (c) 2015年 chenlongjian. All rights reserved.
//

#import "LifeCycleOfViewController.h"

@interface LifeCycleOfViewController ()

@end

@implementation LifeCycleOfViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"1控制器的view加载完毕----viewDidLoad");
    // Do any additional setup after loading the view.
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


// 控制器的view即将显示的时候调用
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    NSLog(@"1控制器的view即将显示----viewWillAppear");
}
// 控制器的view完全显示的时候调用
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"1控制器的view完全显示----viewDidAppear");
}

// 控制器的view即将消失的时候调用
- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"1控制器的view即将消失----viewWillDisappear");
}
// 控制器的view完全消失的时候调用
- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    NSLog(@"1控制器的view完全消失---viewDidDisappear");
}

// 控制器的view即将销毁的时候调用
- (void)viewWillUnload
{
    [super viewWillUnload];
    NSLog(@"1控制器的viewWillUnload");
}
// 控制器的view完全销毁的时候调用
- (void)viewDidUnload
{
    [super viewDidUnload];
    NSLog(@"1控制器的viewDidUnload");
    // 清空不需要的属性
    //    [self.foods release];
    //         self.foods = nil;
}


@end
