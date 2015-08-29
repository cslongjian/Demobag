//
//  ViewController.m
//  TestDemo
//
//  Created by Supwin_mbp002 on 15/8/10.
//  Copyright (c) 2015年 chenlongjian. All rights reserved.
//

#import "ViewController.h"
#import "PictureViewController.h"
#import "SudokuViewController.h"
#import "UIScrollViewController.h"
#import "DatepickerViewController.h"
#import "PassValueViewController.h"
#import "SingleClass.h"

#import "StartUIView.h"

@interface ViewController ()<RetrunControllerDelegate>
{
    int _count;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //NSString Demo
//    字符串例子
//    [self NSStringDemo];
//    日期案例
//    [self NSDateDemo];
//    定时器deme
//    _count = 0 ;
//    [self NSTimerDemo];
    
    
    
//    自定义view 测试2
//    边宽
    self.customView.layer.borderWidth = 10;
//    边颜色
    self.customView.layer.borderColor = [UIColor redColor].CGColor;
    //设置layer的圆角
    self.customView.layer.cornerRadius=20;
    //设置超过子图层的部分裁减掉
    //UI框架中使用的方法
//    self.customView.clipsToBounds=YES;
    self.customView.layer.masksToBounds=YES;
    //在view的图层上添加一个image，contents表示接受内容
    self.customView.layer.contents=(id)[UIImage imageNamed:@"mac_0"].CGImage;
    //设置阴影的颜色
    self.customView.layer.shadowColor=[UIColor blackColor].CGColor;
    //设置阴影的偏移量，如果为正数，则代表为往右边偏移
    self.customView.layer.shadowOffset=CGSizeMake(15, 5);
    //设置阴影的透明度(0~1之间，0表示完全透明)
    self.customView.layer.shadowOpacity=0.6;
    
    
    //1.创建核心动画
    CAKeyframeAnimation *keyAnima=[CAKeyframeAnimation animation];
    //平移
    keyAnima.keyPath=@"position";
    //1.1告诉系统要执行什么动画
    NSValue *value1=[NSValue valueWithCGPoint:CGPointMake(100, 100)];
    NSValue *value2=[NSValue valueWithCGPoint:CGPointMake(200, 100)];
    NSValue *value3=[NSValue valueWithCGPoint:CGPointMake(200, 200)];
    NSValue *value4=[NSValue valueWithCGPoint:CGPointMake(100, 200)];
    NSValue *value5=[NSValue valueWithCGPoint:CGPointMake(100, 100)];
    keyAnima.values=@[value1,value2,value3,value4,value5];
    //1.2设置动画执行完毕后，不删除动画
    keyAnima.removedOnCompletion=NO;
    //1.3设置保存动画的最新状态
    keyAnima.fillMode=kCAFillModeForwards;
    //1.4设置动画执行的时间
    keyAnima.duration=4.0;
    //1.5设置动画的节奏
    keyAnima.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];

    //设置代理，开始—结束
    keyAnima.delegate=self;
    //2.添加核心动画
    [self.customView.layer addAnimation:keyAnima forKey:nil];
    
    
//    自定义控件测试
//    StartUIView *startVIew = [[StartUIView alloc] initWithFrame:self.view.frame];
//    [self.view addSubview:startVIew];
//    [UIView animateWithDuration:2.0 animations:^()
//    {
//        startVIew.center = CGPointMake(-self.view.center.x, self.view.center.y);
//        
//    }completion:^(BOOL finish)
//    {
//        [startVIew removeFromSuperview];
//    }];
    
//
    //    标准化代码创建按钮  设置
    CGRect btn2Frame = CGRectMake(50, 80, 100, 50);
    UIButton * test = [UIButton buttonWithType:UIButtonTypeSystem];
    test.frame = btn2Frame;
//    test.backgroundColor = [UIColor clearColor];
//    test.titleLabel.textColor = [UIColor blueColor];
//    test.tintColor = [UIColor redColor];
    [test setTitle:@"正常状态" forState:UIControlStateNormal];
    [test setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [test setTitle:@"点击状态" forState:UIControlStateHighlighted];
    [test setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [test addTarget:self action:@selector(otherAnimation:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:test];
    
    //图片查看入口
    CGRect btn = CGRectMake(60, 60, 150, 50);
    UIButton * picture = [UIButton buttonWithType:UIButtonTypeSystem];
    picture.frame = btn;
    //    test.backgroundColor = [UIColor clearColor];
    //    test.titleLabel.textColor = [UIColor blueColor];
    //    test.tintColor = [UIColor redColor];
    [picture setTitle:@"图片查看器入口" forState:UIControlStateNormal];
    [picture setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [picture addTarget:self action:@selector(PictureEnterViewController) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:picture];
    
    
    //注册通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(ChangeNameNotification:) name:@"ChangeNameNotification" object:nil];

    
    
}

-(void) viewDidUnload
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [super viewDidUnload];
}

-(void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    if ([[[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaults"] length] != 0) {
        self.userDefalueValue.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaults"];
    }
    
    SingleClass *singleInatance = [SingleClass sharedSingleClass];
    if ([singleInatance.name length] != 0 ) {
        self.singleInstanceValue.text = singleInatance.name;

    }    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark 首尾动画
//另外一种动画实现方法测试。 不同于使用块方法。
-(void) otherAnimation:(UIButton *)btn
{
    // beginAnimations表示此后的代码要“参与到”动画中
    CGRect btn2Frame = btn.frame;
    btn2Frame.origin.x = btn.frame.origin.x+ 30;
    btn2Frame.origin.y = btn.frame.origin.y+ 30;


     [UIView beginAnimations:nil context:nil];
     [UIView setAnimationDuration:1.0];
     btn.frame = btn2Frame;

// commitAnimations,将beginAnimation之后的所有动画提交并生成动画
     [UIView commitAnimations];
}


-(void) NSStringDemo
{
    NSString *str = @"123456";
//    NSString *second = @"";
    //添加 其实是重新创建一个。
    str = [str stringByAppendingString:@"+some123456789"];
    
    NSLog(@"%@", str);
    
//    索引截取
    NSString *str1 = [str substringToIndex:3];
    NSLog(@"前三个字符--%@", str1);
    NSString *str2 = [str substringFromIndex:3];
    NSLog(@"从第三个字符开始到最后--%@", str2);
    NSString *str3 = [str substringWithRange:NSMakeRange(2,10)];
    NSLog(@"2-10个--%@", str3);

//    类似的NSMutableString 以后在补充
    
}

//日期时间demo
-(void) NSDateDemo
{
    NSDate *date = [NSDate date];
    NSLog(@"%@",date);
    
//   需要转换的日期 日期格式
    NSDate *dt = [NSDate dateWithTimeIntervalSince1970:3600 * 24 * 366 *45];
//    位置
    NSLocale *locales[] = { [[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"],[[NSLocale alloc] initWithLocaleIdentifier:@"en_US"]};
    
//    NSDateFormatter
    NSDateFormatter *df[8];
//    初始化
    for (int i = 0 ; i < 2; i++) {
        //        日期和时间风格
        df[i * 4] = [[NSDateFormatter alloc] init];
        [df[i*4] setDateStyle:NSDateFormatterShortStyle];
        [df[i*4] setTimeStyle:NSDateFormatterShortStyle];
        [df[i*4] setLocale:locales[i]];//    设置nslocale
               //        日期和时间风格
        df[i * 4+1] = [[NSDateFormatter alloc] init];
        [df[i*4+1] setDateStyle:NSDateFormatterMediumStyle];
        [df[i*4+1] setTimeStyle:NSDateFormatterMediumStyle];
        [df[i*4+1] setLocale:locales[i]];//    设置nslocale
                //        日期和时间风格
        df[i * 4+2] = [[NSDateFormatter alloc] init];
        [df[i*4+2] setDateStyle:NSDateFormatterLongStyle];
        [df[i*4+2] setTimeStyle:NSDateFormatterLongStyle];
        [df[i*4+2] setLocale:locales[i]];//    设置nslocale
        
        df[i * 4+3] = [[NSDateFormatter alloc] init];
        [df[i*4+3] setDateStyle:NSDateFormatterFullStyle];
        [df[i*4+3] setTimeStyle:NSDateFormatterFullStyle];
        [df[i*4+3] setLocale:locales[i]];//    设置nslocale
        
    }
    
    for (int i = 0 ; i < 2;  i++) {
        switch (i) {
            case 0:
                NSLog(@"----中国日期格式-----");
                break;
                
            case 1:
                NSLog(@"----美国日期格式-----");
                break;
        }
        NSLog(@"NSDateFormatterShortStyle 格式日期格式-：%@",  [df[i*4] stringFromDate:dt]);
        NSLog(@"NSDateFormatterMediumStyle 格式日期格式-：%@",  [df[i*4 +1] stringFromDate:dt]);
        NSLog(@"NSDateFormatterLongStyle 格式日期格式-：%@",  [df[i*4+2] stringFromDate:dt]);
        NSLog(@"NSDateFormatterFullStyle 格式日期格式-：%@",  [df[i*4+3] stringFromDate:dt]);
        
    }
    
    //自定义日期格式
    NSDateFormatter *DF2 = [[NSDateFormatter alloc] init];
    [DF2 setDateFormat:@"YYYY-MM-DD HH:mm"];
    NSLog(@"自定义写法 %@",[DF2 stringFromDate:dt]);
    
    //字符串转nsdate
    NSString *dates = @"2015-8-11";
    NSDateFormatter *df3 = [[NSDateFormatter alloc] init];
    [df3 setDateFormat:@"YYYY-MM-dd"];
     NSDate *date2 = [df3 dateFromString:dates];
    NSLog(@"字符转date  %@", date2);
    
}

//定时器的demo
-(void) NSTimerDemo
{
    [NSTimer scheduledTimerWithTimeInterval:1.0
                                     target:self
                                   selector:@selector(callTimeMethod:)
                                   userInfo:nil
                                    repeats:YES];
}

-(void) callTimeMethod:(NSTimer *) timer
{
    _count++;
    NSLog(@"重复执行方法 %d",_count);
    if (_count>10) {
        NSLog(@"取消定时器");
        [timer invalidate];
        
    }
}


#pragma mark 跳转测试
-(void)PictureEnterViewController
{
 
    
    NSLog(@"点击事件------");
    //
    
    
    
    //图片浏览器入口
//    PictureViewController *picture = [[PictureViewController alloc] init];
////    在navigationcontroller 中使用push 是加入到栈中 有返回指向。可以有自带的回调处理
//    [self.navigationController pushViewController:picture animated:YES];
//    使用presentViewController 是加载到当前最顶层。无返回指向。只有添加关闭按钮或者相关处理逻辑才能与前页面交互
//    [self presentViewController:picture animated:YES completion:nil];
    
    //九宫格入口
//    SudokuViewController *sudoku = [[SudokuViewController alloc] init];
//    [self presentViewController:sudoku animated:YES completion:nil];
    
//    UIScrollView 测试
//    UIScrollViewController *score = [[UIScrollViewController alloc] init];
//    [self presentViewController:score animated:YES completion:nil];
    
    //干掉自己 。
//    self dismissViewControllerAnimated:<#(BOOL)#> completion:^{
//        <#code#>
//    }
    
//    datepicker 测试
        DatepickerViewController *score = [[DatepickerViewController alloc] init];
        [self.navigationController pushViewController:score animated:YES];
    
}

//2015-8-25
#pragma mark 动画
-(void)animationDidStart:(CAAnimation *)anim
{
    NSLog(@"开始动画");
}

-(void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag
{
    NSLog(@"结束动画");

}

// 跳转 -- 执行login2contacts这个segue
//[self performSegueWithIdentifier:@"login2contacts" sender:nil];
//在执行performSegueWithIdentifier 跳转 时，会调用prepareForSegue 方法，在prepareForSegue 中拿到ViewController 来传递数据
/**
 *  执行segue后,跳转之前会调用这个方法
 *  一般在这里给下一个控制器传递数据
 */
#pragma mark 传递值测试
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
// 1.取得目标控制器()
//    PassValueViewController *contactVc = segue.destinationViewController;
//    // 2.设置标题
//    contactVc.title = [NSString stringWithFormat:@"传递数据到B页面了"];
    id vc = segue.destinationViewController;
    // 设置下一个控制器(添加联系人的控制器)的代理
//    1直接传值方式
    PassValueViewController *passValueVC = vc;
    passValueVC.directPassValue = @"接口声明传递数据到B页面";
//    passValueVC.title = @"传递到B页面了";
//    3代理回调传值方式
    passValueVC.delegate = self;
//    块传值方式
    passValueVC.block = ^(NSString *str)
    {
        self.blockValue.text = str;
    };
    self.title = @"A页面";
}

//2协议的回调方法
-(void)returnValueFromBVC:(NSString *)returnValue
{
    self.retrunValue.text = returnValue;
}
//2015-8-25

//4通知方式回传数据到A页面
-(void)ChangeNameNotification:(NSNotification*)notification{
    
    NSDictionary *nameDictionary = [notification userInfo];
    self.notiValue.text = [nameDictionary objectForKey:@"name"];
}


@end
