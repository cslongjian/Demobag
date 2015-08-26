//
//  PassValueViewController.m
//  TestDemo
//
//  Created by Supwin_mbp002 on 15/8/25.
//  Copyright (c) 2015年 chenlongjian. All rights reserved.
//2015-8-25

#import "PassValueViewController.h"

@interface PassValueViewController ()

@end

@implementation PassValueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)returnTOAController:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
    
    // 2.传递数据给上一个控制器()
    // 2.通知代理
    if ([self.delegate respondsToSelector:@selector(returnValueforBcontroller:)]) {
        [self.delegate returnValueforBcontroller:self.returnValue.text];
    }
}
- (IBAction)notificationMethod:(id)sender {
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"ChangeNameNotification" object:self userInfo:@{@"name":self.returnValue.text}];
}
- (IBAction)blockreturnMethod:(id)sender {
    if (self.block) {
        self.block(self.returnValue.text);
    }
    [self.navigationController popViewControllerAnimated:YES];
    //这个因为不是MODLE方式出来的无法调用
//    [self presentViewController:nil animated:yes completion:nil];
//    [self dismissViewControllerAnimated:YES completion:nil];
    
    
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
