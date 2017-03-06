//
//  BaseViewController.m
//  TestDemo
//
//  Created by hzl on 17/3/6.
//  Copyright © 2017年 chenlongjian. All rights reserved.
//

#import "BaseViewController.h"
#import "MasnoryNavView.h"
#import "Masonry.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationController.navigationBar.hidden = YES;
    
    _masonryNavView = [MasnoryNavView new];
    _masonryNavView.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:_masonryNavView];
    
    [_masonryNavView mas_makeConstraints:^(MASConstraintMaker *make) {
        UIView *superview = _masonryNavView.superview;
        make.left.equalTo(superview);
        make.right.equalTo(superview);
        make.top.equalTo(superview);
        make.width.mas_equalTo(superview);
        make.height.mas_equalTo(64);
        
    }];
    
    
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
