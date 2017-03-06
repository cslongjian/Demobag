//
//  MasonryTestViewController.m
//  TestDemo
//
//  Created by hzl on 17/3/6.
//  Copyright © 2017年 chenlongjian. All rights reserved.
//

#import "MasonryTestViewController.h"
#import "MasnoryNavView.h"

@interface MasonryTestViewController ()

@end

@implementation MasonryTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.masonryNavView.leftButton addTarget:self action:@selector(returnFrom) forControlEvents:UIControlEventTouchUpInside];
    
    
}

-(void)returnFrom
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
