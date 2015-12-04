//
//  ViewController.m
//  runtimeDemo
//
//  Created by Supwin_mbp002 on 15/12/4.
//  Copyright © 2015年 chenlongjian. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+Tracking.h"
#import "NSArray+Swizzle.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}

- (void)viewWillAppear:(BOOL)animated
{
    
    [super viewWillAppear:animated];
    NSLog(@"xxx");
    NSArray *array = @[@"0",@"1",@"2",@"3"];
    NSString *string = [array lastObject];
    NSLog(@"TEST RESULT : %@",string);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
