//
//  ViewController.m
//  LYNinthChapter
//
//  Created by Supwin_mbp002 on 16/2/19.
//  Copyright © 2016年 chenlongjian. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"
#import "LYCustomView.h"

@interface ViewController ()

@end

@implementation ViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    NSLog(@"initWithNibName方法被调用");
    return [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
}


- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
     NSLog(@"initWithCoder方法被调用");
    return [super initWithCoder:aDecoder];
}

- (void)awakeFromNib
{
     NSLog(@"awakeFromNib方法被调用");
    [super awakeFromNib];
}

//- (void)loadView
//{
//     NSLog(@"loadView方法被调用");
////    [super loadView];
//}

- (void)viewDidLoad {
      NSLog(@"viewDidLoad方法被调用");
    //[NSThread sleepForTimeInterval:3.0];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel *text2 = (UILabel *)[self.view viewWithTag:1];
    text2.text = @"重新设置文本了";
    
   
 
    
    CustomView *customview = [CustomView MyCustomView];
    customview.backgroundColor =[UIColor grayColor];
    CustomView *customview2 = [[CustomView alloc]initWithFrame:CGRectMake(10, 100, 100, 50)];
    customview2.backgroundColor =[UIColor blueColor];
    [self.view addSubview:customview];
     [self.view addSubview:customview2];
    
    LYCustomView *lycustomview = [[LYCustomView alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height/2, self.view.frame.size.width, self.view.frame.size.height/2)];
    [self.view addSubview:lycustomview];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)BtnAction:(id)sender {
    NSLog(@"BtnAction");
}

/*
 加载过程
 加载第一步
 
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
 //根据nib文件实例化UIViewController
 // 这个方法是在controller的类在IB中创建,但是通过Xcode实例化controller的时候用的.
 
 //如果你的对象是UIViewControler的子类，那么你必须调用- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle*)nibBundleOrNil;方法去调用NIB文件初始化自身，即使那没有使用nib文件也会调用这个函数（默认 情况下init方法已经为你的做这件事情了），如果你调用这个方法，并传递的两个参数为空（nil），然后类会调用-loadView去读取一个名字和你 的UIViewController名字相同的nib文件，来初始化自身。如果没有这样的nib文件，你必须调用-setView:来设置一个 self.view。或者重载-loadView 方法
 
 加载第二步
 - (void)loadView
 
 当view需要被展示而它却是nil时，viewController会调用该方法。不要直接调用该方法。
 
 如果手工维护views，必须重载重写该方法
 
 如果使用IB维护views，必须不能重载重写该方法
 
 loadView和IB构建view
 
 作用：在需要用程序自定义view时重新，其他情况可以不用考虑
 
 加载第三步
 - (void)viewDidLoad
 //如果loadView不能生成UIViewController.view系统将会反复调用loadView及viewDidLoad方法, 并且最终调用[super loadView] 方法返回UIViewController.view
 
 //重载重写该方法以进一步定制view
 
 //在iPhone OS 3.0及之后的版本中，还应该重载重写viewDidUnload来释放对view的任何索引
 
 //viewDidLoad后调用数据Model
 
 //在视图加载后被调用，如果是在代码中创建的视图加载器，他将会在loadView方法后被调用，
 
 //如果是从nib视图页面输出，他将会在视图设置好后后被调用。
 */

@end
