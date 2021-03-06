//
//  runtimeDemoViewController.m
//  TestDemo
//
//  Created by Supwin_mbp002 on 15/12/1.
//  Copyright © 2015年 chenlongjian. All rights reserved.
//

#import "runtimeDemoViewController.h"
#import "CustomNav.h"
#import "MasnoryNavView.h"
#import "Masonry.h"

@interface runtimeDemoViewController ()

@end

@implementation runtimeDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"runtimeDemo";
    
    self.navigationController.navigationBar.hidden = YES;
    
    MasnoryNavView *nav = [[MasnoryNavView alloc]init];
    nav.backgroundColor = [UIColor blueColor];
    [self.view addSubview:nav];
    
    [nav mas_makeConstraints:^(MASConstraintMaker *make) {
        UIView *superview = nav.superview;
        make.left.equalTo(superview);
        make.right.equalTo(superview);
        make.top.equalTo(superview);
        make.width.mas_equalTo(superview);
        make.height.mas_equalTo(68);
    }];
    
    [nav.leftButton addTarget:self action:@selector(returnToFrom) forControlEvents:UIControlEventTouchUpInside];
    
    
}

-(void)returnToFrom
{
    [self.navigationController popViewControllerAnimated:YES];
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
