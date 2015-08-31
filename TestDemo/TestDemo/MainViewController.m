//
//  MainViewController.m
//  TestDemo
//
//  Created by Supwin_mbp002 on 15/8/31.
//  Copyright (c) 2015年 chenlongjian. All rights reserved.
//

#import "MainViewController.h"
#import "GCDViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
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
//新的内容。
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    id vc = segue.destinationViewController;
    if([segue.identifier isEqualToString:@"first"])
    {
        UIViewController *direct = vc;
        direct.title = @"六种数据传递";
        
    }else if([segue.identifier isEqualToString:@"second"])
    {
        GCDViewController *direct = vc;
        direct.title = @"GCD解析";
        //这种直接设置View的root 挂
//        self.view.window.rootViewController = direct;
        
   }else if([segue.identifier isEqualToString:@"third"])
    {
        UIViewController *direct = vc;
        direct.title = @"响应者链条";
    }else if([segue.identifier isEqualToString:@"four"])
    {
        UIViewController *direct = vc;
        direct.title = @"动画";
    }
}

@end
