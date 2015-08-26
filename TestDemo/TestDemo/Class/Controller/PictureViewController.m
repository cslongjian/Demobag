//
//  PictureViewController.m
//  TestDemo
//
//  Created by Supwin_mbp002 on 15/8/17.
//  Copyright (c) 2015年 chenlongjian. All rights reserved.
//

#import "PictureViewController.h"
#import "UIImageView+WebCache.h"


#define POTOIMGW    200
#define POTOIMGH    300
#define POTOIMGX    60
#define  POTOIMGY   70

@interface PictureViewController ()
{
    NSArray *_imagearray;
}
//变量
@property(nonatomic,strong)UILabel *firstlab;
@property(nonatomic,strong)UILabel *lastlab;
@property(nonatomic,strong)UIImageView *icon;
@property(nonatomic,strong)UIButton *leftbtn;
@property(nonatomic,strong)UIButton *rightbtn;
@property(nonatomic ,assign)int position;

@end

@implementation PictureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
     _imagearray = @[@"http://i1.douguo.net//upload/banner/0/6/a/06e051d7378040e13af03db6d93ffbfa.jpg", @"http://i1.douguo.net//upload/banner/9/3/4/93f959b4e84ecc362c52276e96104b74.jpg", @"http://i1.douguo.net//upload/banner/5/e/3/5e228cacf18dada577269273971a86c3.jpg", @"http://i1.douguo.net//upload/banner/d/8/2/d89f438789ee1b381966c1361928cb32.jpg"];
    
    self.view.backgroundColor = [UIColor whiteColor];
    CGRect dd = CGRectMake(10, 10, 100, 50);
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = dd;
    [btn setTitle:@"进入" forState:UIControlStateNormal];
    
    [self.view addSubview:btn];
    
    
//    构建图片查看器
    UILabel *headlab = [[UILabel alloc] initWithFrame:CGRectMake(20, 25, 300, 30)];
    
    [headlab setText:@"1/5"];
    [headlab setTextAlignment:NSTextAlignmentCenter];
    [headlab setTextColor:[UIColor blueColor]];
    
    self.firstlab = headlab;
    
    [self.view addSubview:headlab];
    
    UIImageView *potoimg=[[UIImageView alloc]initWithFrame:CGRectMake(POTOIMGX, POTOIMGY, POTOIMGW, POTOIMGH)];
    
//    UIImage *image=[UIImage imageNamed:@"start"];
//    potoimg.image=image;
    
    [potoimg sd_setImageWithURL:[NSURL URLWithString:@"http://i1.douguo.net//upload/banner/0/6/a/06e051d7378040e13af03db6d93ffbfa.jpg"] placeholderImage:[UIImage imageNamed:@"start"]];
    [self.view addSubview:potoimg];
    self.icon=potoimg;
    
    
    UILabel *desclab=[[UILabel alloc]initWithFrame:CGRectMake(20, 450, 300, 30)];
    [desclab setText:@"表情弱爆了！"];
    [desclab setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:desclab];
    self.lastlab=desclab;
    
    
    //创建两个方向键按钮
    //设置为自定义类型
    //1.使用类创建对象
    UIButton *leftbtn=[UIButton buttonWithType:UIButtonTypeSystem];
    
         //2.设置对象的属性（不要忘记设置坐标）
    leftbtn.frame=CGRectMake(0, self.view.center.y, 40, 40);
    [leftbtn setTitle:@"左" forState:UIControlStateNormal];
    //3.提交对象到视图
    [self.view addSubview:leftbtn];
    
    self.leftbtn=leftbtn;
    [leftbtn addTarget:self action:@selector(leftclick:) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *rightbtn=[UIButton buttonWithType:UIButtonTypeSystem];
    
    rightbtn.frame=CGRectMake(POTOIMGX+POTOIMGW+10, self.view.center.y, 40, 40);
    [rightbtn setTitle:@"右" forState:UIControlStateNormal];
    [self.view addSubview:rightbtn];
    
    self.rightbtn=rightbtn;
    [rightbtn addTarget:self action:@selector(rightclick:) forControlEvents:UIControlEventTouchUpInside];
    
    //这是一个初始化方法，调用change可以完成初始化的工作
    [self change];
    
    
}

-(void)change
{
    [self.firstlab setText:[NSString stringWithFormat:@"%d/4",self.position+1]];
    switch (self.position) {
        case 0:
            self.lastlab.text = @"11111";
            [self.icon sd_setImageWithURL:[NSURL URLWithString:_imagearray[0]] placeholderImage:[UIImage imageNamed:@"start"]];
            break;
        case 1:
            self.lastlab.text = @"2222";
            [self.icon sd_setImageWithURL:[NSURL URLWithString:_imagearray[1]] placeholderImage:[UIImage imageNamed:@"start"]];
            break;

        case 2:
            self.lastlab.text = @"3333";
            [self.icon sd_setImageWithURL:[NSURL URLWithString:_imagearray[2]] placeholderImage:[UIImage imageNamed:@"start"]];
            break;

        case 3:
            self.lastlab.text = @"4444";
            [self.icon sd_setImageWithURL:[NSURL URLWithString:_imagearray[3]] placeholderImage:[UIImage imageNamed:@"start"]];
            break;
        default:
            break;
    }

        self.leftbtn.enabled=(self.position!=0);
         self.rightbtn.enabled=(self.position!=3);
}

-(void)leftclick:(UIButton *) btn
{
    self.position--;
    [self change];
}

-(void)rightclick:(UIButton *)btn
{
    self.position++;
    [self change];
    
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

@end
