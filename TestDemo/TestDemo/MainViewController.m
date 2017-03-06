//
//  MainViewController.m
//  TestDemo
//
//  Created by Supwin_mbp002 on 15/8/31.
//  Copyright (c) 2015年 chenlongjian. All rights reserved.
//

#import "MainViewController.h"
#import "GCDViewController.h"
#import "runtimeDemoViewController.h"
#import "NSThreadUIViewController.h"
#import "NSOperationQueueViewController.h"
#import "MasonryTestViewController.h"
#import "kvoObserverModel.h"
#import "kvoObservertorModel.h"
#import "CustomNav.h"

#import "Masonry.h"

@interface MainViewController ()
{
    CustomNav *_customNav;
}

@property (weak, nonatomic) IBOutlet UIButton *runtimeButton;

@property(nonatomic,strong) kvoObserverModel *model;

@property(nonatomic,strong) kvoObservertorModel *acceptmodel;



@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"DEMO集合";
    
    _customNav = [[CustomNav alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 64)];
    _customNav.textTitle.text = @"假NAV头 DEMO集合";
    _customNav.backgroundColor = [UIColor blueColor];
    _customNav.leftButton.hidden = YES;
    [self.view addSubview:_customNav];
    
//    [self.navigationController setNavigationBarHidden:YES];
//    self.navigationController.navigationBar.translucent = NO;
    
    [self.runtimeButton addTarget:self action:@selector(gotoRuntimeDemo) forControlEvents:UIControlEventTouchUpInside];
    
//      [self.runtimeButton addTarget:self action:@selector(testKVO) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    _model = [kvoObserverModel new];
    _model.hight = @"旧对象";
    
    _acceptmodel = [kvoObservertorModel new];
    
    [_model addObserver:_acceptmodel forKeyPath:@"hight" options:NSKeyValueObservingOptionNew context:nil];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES];
    self.navigationController.navigationBar.translucent = NO;
}

-(void)viewWillDisappear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    self.navigationController.navigationBar.translucent = NO;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
//新的内容。
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    id vc = segue.destinationViewController;
    if([segue.identifier isEqualToString:@"first"])
    {
        UIViewController *direct = vc;
        direct.title = @"六种数据传递";
        
    }else if([segue.identifier isEqualToString:@"second"])
    {
        GCDViewController *direct = vc;
        direct.title = @"GCD解析";
        //这种直接设置View的root 挂
//        self.view.window.rootViewController = direct;
        
   }else if([segue.identifier isEqualToString:@"third"])
    {
        UIViewController *direct = vc;
        direct.title = @"响应者链条";
    }else if([segue.identifier isEqualToString:@"four"])
    {
        UIViewController *direct = vc;
        direct.title = @"动画";
    }
}

//
- (void)gotoRuntimeDemo
{
//    NSLog(@"gotoRuntimeDemo");
//    runtimeDemoViewController *rumtime = [[runtimeDemoViewController alloc] init];
//    [self.navigationController pushViewController:rumtime animated:YES];
    
    NSLog(@"gotoMasonryDemo");
    MasonryTestViewController *rumtime = [[MasonryTestViewController alloc] init];
    [self.navigationController pushViewController:rumtime animated:YES];
    
}

- (void)testKVO
{
    _model.hight = @"新对象";
}


- (IBAction)gotoNSThreadDemo:(id)sender {
    NSLog(@"gotoNSThreadDemo");
    NSThreadUIViewController *NSThreadDemo = [[NSThreadUIViewController alloc]init];
    [self.navigationController pushViewController:NSThreadDemo animated:YES];
    
    
}
- (IBAction)gotoNSOptionDemo:(id)sender {
    NSLog(@"gotoNSThreadDemo");
    NSOperationQueueViewController *NSOptiondemo = [[NSOperationQueueViewController alloc]init];
    [self.navigationController pushViewController:NSOptiondemo animated:YES];
}


@end
