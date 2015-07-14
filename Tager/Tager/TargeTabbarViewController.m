//
//  TargeTabbarViewController.m
//  Tager
//
//  Created by Supwin_mbp002 on 15/7/2.
//  Copyright (c) 2015年 Supwin_mbp002. All rights reserved.
//
#define kCameraViewWidth 49
#define kCameraViewHeight 61
#define kCameraBtnWidth kCameraViewWidth
#define kCameraBtnHeight 50

#import "TargeTabbarViewController.h"
#import "UTabbar.h"
#import "UIImage+Utils.h"

@interface TargeTabbarViewController ()<UIActionSheetDelegate,UTabbarDelegate,UINavigationControllerDelegate>

@end

@implementation TargeTabbarViewController


-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        for (UINavigationController *navVC in self.viewControllers) {
            navVC.delegate = self;
        }
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    //系统方式修改
//    self.tabBar.translucent = NO;
//    [self.childViewControllers enumerateObjectsUsingBlock:^(UIViewController *obj, NSUInteger idx, BOOL *stop) {
//        //        obj.tabBarItem.imageInsets = UIEdgeInsetsMake(18, 18, 18, 18);
//        self.tabBar.tintColor = [UIColor blackColor];
//        obj.tabBarItem.image = [[UIImage imageNamed:[NSString stringWithFormat:@"tabbar%lu",(unsigned long)idx]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//        obj.tabBarItem.selectedImage = [[UIImage imageNamed:[NSString stringWithFormat:@"tabbar%lu_selected",(unsigned long)idx]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    }];
    
    
   //自定义方式
    [self setNavigationTheme];
    
    UTabbar *utabbar = [[UTabbar alloc] initWithFrame:self.tabBar.bounds];
    
    utabbar.delegate = self;
    self.tabBar.translucent = NO;
    [self.tabBar addSubview:utabbar];
    
    [self.tabBar  setShadowImage:[UIImage imageWithColor:[UIColor clearColor]]];
    self.tabBar.backgroundImage = [UIImage imageWithColor:[UIColor clearColor]];//去除黑线
    
    utabbar.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"tab-_白色透明背景渐变"]];
    
    _cameraView =[[UIView alloc]init];
    
    _cameraView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"tab_摄影机图标背景"]];
    _cameraBtn = [[UIButton alloc]init];
    [_cameraBtn setBackgroundImage:[UIImage imageNamed:@"摄影机图标_点击前"] forState:UIControlStateNormal];
    [_cameraBtn setBackgroundImage:[UIImage imageNamed:@"摄影机图标_点击后"] forState:UIControlStateHighlighted];
    _cameraBtn.frame = CGRectMake(0, 5, kCameraBtnWidth, kCameraBtnHeight);
    _cameraBtn.tag = 2;
    [_cameraBtn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [_cameraView addSubview:_cameraBtn];
    
    _cameraView.frame = CGRectMake(self.tabBar.frame.size.width/2-kCameraViewWidth/2, -11, kCameraBtnWidth, kCameraBtnHeight);
    [self.tabBar addSubview:_cameraView];
    [self.tabBar bringSubviewToFront:_cameraView];

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) push
{
    NSLog(@"进入添加逻辑");
    //跳转别的storyboard  用这种方式。
    UIViewController *vc = [UIStoryboard storyboardWithName:@"add" bundle:nil].instantiateInitialViewController;
    [UIApplication sharedApplication].keyWindow.rootViewController = vc;
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

/**
 *  设置导航栏以及信号栏主题样式
 */
-(void) setNavigationTheme{
    
    //操作整个应用中的所有导航栏，只需要给它设置就可以了
    UINavigationBar *navBar = [UINavigationBar appearance];
    navBar.tintColor = [UIColor whiteColor];
    //设置导航栏标题颜色
    [navBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
}

-(void)changeNav:(NSInteger)from to:(NSInteger)to{
    self.selectedIndex = to;
}


@end
