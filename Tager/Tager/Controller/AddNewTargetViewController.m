//
//  AddNewTargetViewController.m
//  Tager
//
//  Created by Supwin_mbp002 on 15/7/2.
//  Copyright (c) 2015年 Supwin_mbp002. All rights reserved.
//

#import "AddNewTargetViewController.h"

@interface AddNewTargetViewController ()

@end

@implementation AddNewTargetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect btnframe = CGRectMake(5, 5, 40, 40);
    UIButton *CButton = [[UIButton alloc] initWithFrame:btnframe];
    CButton.backgroundColor = [UIColor redColor];
    [CButton setTitle:@"取消" forState:UIControlStateNormal];
    [CButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [CButton setTitleColor:[UIColor blueColor]forState:UIControlStateSelected];
    [CButton addTarget:self action:@selector(returnMenu) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *cancelBtnItem = [[UIBarButtonItem alloc]initWithCustomView:CButton];
    
    self.navigationItem.leftBarButtonItem = cancelBtnItem ;
    
    
    UIBarButtonItem *AddBtnItem = [[UIBarButtonItem alloc]initWithTitle:@"添加"  style:UIBarButtonItemStylePlain target:self action:@selector(addTarget)];
    
     self.navigationItem.rightBarButtonItem = AddBtnItem;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) returnMenu
{
      NSLog(@"退出添加逻辑");
    UIViewController *vc = [UIStoryboard storyboardWithName:@"Main" bundle:nil].instantiateInitialViewController;
    [UIApplication sharedApplication].keyWindow.rootViewController = vc;
    
}

-(void) addTarget
{
    NSLog(@"添加完成");

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
