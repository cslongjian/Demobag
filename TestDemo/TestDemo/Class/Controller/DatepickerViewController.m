//
//  DatepickerViewController.m
//  TestDemo
//
//  Created by Supwin_mbp002 on 15/8/20.
//  Copyright (c) 2015年 chenlongjian. All rights reserved.
//

#import "DatepickerViewController.h"

@interface DatepickerViewController ()
@property (strong, nonatomic) UITextField *textfield;

@end

@implementation DatepickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"1控制器的view加载完毕----viewDidLoad");
// Do any additional setup after loading the view.

     self.view.backgroundColor = [UIColor whiteColor];
    
    UITextField *settext = [[UITextField alloc]initWithFrame:CGRectMake(40, 80, 100, 50)];
    settext.text = @"gggg";
     //1
     //添加一个时间选择器
     UIDatePicker *date=[[UIDatePicker alloc]init];
     /**
        28      *  设置只显示中文
        29      */
     [date setLocale:[NSLocale localeWithLocaleIdentifier:@"zh-CN"]];
     /**
        32      *  设置只显示日期
        33      */
     date.datePickerMode=UIDatePickerModeDate;
 //    [self.view addSubview:date];

     //当光标移动到文本框的时候，召唤时间选择器
    self.textfield = settext;
     self.textfield.inputView=date;

     //2
     //创建工具条
     UIToolbar *toolbar=[[UIToolbar alloc]init];
     //设置工具条的颜色
     toolbar.barTintColor=[UIColor brownColor];
     //设置工具条的frame
     toolbar.frame=CGRectMake(0, 0, 320, 44);

     //给工具条添加按钮
         UIBarButtonItem *item0=[[UIBarButtonItem alloc]initWithTitle:@"上一个" style:UIBarButtonItemStylePlain target:self action:@selector(click) ];

         UIBarButtonItem *item1=[[UIBarButtonItem alloc]initWithTitle:@"下一个" style:UIBarButtonItemStylePlain target:self action:@selector(click)];

         UIBarButtonItem *item2=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
         UIBarButtonItem *item3=[[UIBarButtonItem alloc]initWithTitle:@"完成" style:UIBarButtonItemStylePlain target:self action:@selector(click)];

      toolbar.items = @[item0, item1, item2, item3];
     //设置文本输入框键盘的辅助视图
     self.textfield.inputAccessoryView=toolbar;
    
    [self.view addSubview:self.textfield];
 }
-(void)click
{
     NSLog(@"toolbar");
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

 // 控制器的view即将显示的时候调用
 - (void)viewWillAppear:(BOOL)animated
 {
         [super viewWillAppear:YES];
         NSLog(@"1控制器的view即将显示----viewWillAppear");
     }
 // 控制器的view完全显示的时候调用
 - (void)viewDidAppear:(BOOL)animated
 {
         [super viewDidAppear:animated];
         NSLog(@"1控制器的view完全显示----viewDidAppear");
     }

 // 控制器的view即将消失的时候调用
 - (void)viewWillDisappear:(BOOL)animated
 {
         [super viewWillDisappear:animated];
         NSLog(@"1控制器的view即将消失----viewWillDisappear");
     }
 // 控制器的view完全消失的时候调用
 - (void)viewDidDisappear:(BOOL)animated
 {
         [super viewDidDisappear:animated];
         NSLog(@"1控制器的view完全消失---viewDidDisappear");
     }

 // 控制器的view即将销毁的时候调用
 - (void)viewWillUnload
 {
         [super viewWillUnload];
      NSLog(@"1控制器的viewWillUnload");
 }
 // 控制器的view完全销毁的时候调用
 - (void)viewDidUnload
 {
        [super viewDidUnload];
      NSLog(@"1控制器的viewDidUnload");
         // 清空不需要的属性
     //    [self.foods release];
//         self.foods = nil;
 }

@end
