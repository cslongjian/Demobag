//
//  ViewController.m
//  SketchDemo
//
//  Created by Supwin_mbp002 on 16/2/18.
//  Copyright © 2016年 chenlongjian. All rights reserved.
//

#import "ViewController.h"
#import "CustomVIew.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CustomVIew *myview = [[CustomVIew alloc]initWithFrame:CGRectMake(0, 0, 110, 110)];
    myview.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    myview.backgroundColor = [UIColor clearColor];
    [self.view addSubview:myview];
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [UIView animateWithDuration:1.0 animations:^{
            myview.transform = CGAffineTransformMakeScale(10.0,10.0);
            myview.alpha = 0;
        }];
    });
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
