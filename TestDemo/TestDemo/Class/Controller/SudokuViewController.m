//
//  SudokuViewController.m
//  TestDemo
//  九宫格
//  Created by Supwin_mbp002 on 15/8/17.
//  Copyright (c) 2015年 chenlongjian. All rights reserved.
//

#import "SudokuViewController.h"
#import "StartUIView.h"

@interface SudokuViewController ()

@end

@implementation SudokuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor clearColor];
    
    for (int i = 0 ; i < 3; i++) {
        for (int j = 0; j<3; j++) {
            CGFloat positonX = self.view.frame.size.width/3;
            CGFloat positonY = self.view.frame.size.height/3;
            CGRect frame =  CGRectMake(i*positonX, j*positonY, positonX, positonY);
            StartUIView *startVIew = [[StartUIView alloc] initWithFrame:frame];
            [startVIew addTarget:self action:@selector(changeCenter:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:startVIew];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)changeCenter:(UIButton *) btn
{
    [UIView animateWithDuration:2.0 animations:^()
     {
         btn.center = CGPointMake(btn.center.x - btn.frame.size.width, btn.center.y);
         
     }completion:^(BOOL finish)
     {
         [btn removeFromSuperview];
     }];
    
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
