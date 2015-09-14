//
//  UnFinishViewController.m
//  Tager
//
//  Created by Supwin_mbp002 on 15/9/14.
//  Copyright (c) 2015年 Supwin_mbp002. All rights reserved.
//

#import "UnFinishViewController.h"

@interface UnFinishViewController ()

@end

@implementation UnFinishViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *t = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
    t.font = [UIFont systemFontOfSize:12];
    t.textColor = [UIColor blackColor];
    t.backgroundColor = [UIColor clearColor];
    t.textAlignment = UITextAlignmentCenter;
    t.text = @"未完成";
    self.navigationItem.titleView = t;
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
