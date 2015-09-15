//
//  ViewController.m
//  AutoLayout
//
//  Created by Supwin_mbp002 on 15/6/30.
//  Copyright (c) 2015年 Supwin_mbp002. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIView *_uivew1;
    UIView *_uivew2;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _uivew1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 40)];
    _uivew1.backgroundColor = [UIColor blueColor];
    
    //距离1 下边10位置添加一个2 距离左右为5.
    _uivew2 = [[UIView alloc]initWithFrame:CGRectMake(5, CGRectGetHeight(_uivew1.frame)+10, _uivew1.frame.size.width-10, _uivew1.frame.size.height)];
    _uivew2.backgroundColor = [UIColor redColor];
    
    
    [self.view addSubview:_uivew1];
    [self.view addSubview:_uivew2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
