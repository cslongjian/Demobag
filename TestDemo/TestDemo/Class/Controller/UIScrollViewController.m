//
//  UIScrollViewController.m
//  TestDemo
//
//  Created by Supwin_mbp002 on 15/8/18.
//  Copyright (c) 2015年 chenlongjian. All rights reserved.
//

#import "UIScrollViewController.h"

@interface UIScrollViewController ()<UIScrollViewDelegate>
{
    UIScrollView *_scrollview;
    UIImageView *_imageview;
    UIAlertView *ss;
}

@end

@implementation UIScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _scrollview = [[UIScrollView alloc]initWithFrame:self.view.bounds];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_scrollview];
    
    UIImage *image = [UIImage imageNamed:@"mac_1"];
    _imageview = [[UIImageView alloc]initWithImage:image];
    
    [_scrollview addSubview:_imageview];
    
    _scrollview.contentSize = image.size;
    
    _scrollview.delegate = self;
    
    _scrollview.maximumZoomScale = 2.0;
    _scrollview.minimumZoomScale = 0.5;
    
    
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

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return _imageview;
}


@end
