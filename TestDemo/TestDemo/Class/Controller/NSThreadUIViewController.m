//
//  NSThreadUIViewController.m
//  TestDemo
//
//  Created by Supwin_mbp002 on 15/12/9.
//  Copyright © 2015年 chenlongjian. All rights reserved.
//

#import "NSThreadUIViewController.h"

@interface NSThreadUIViewController ()

@end

@implementation NSThreadUIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//下载图片
- (void)downLoadImage{
    //请求图片资源
    NSURL *url=[NSURL URLWithString:@"http://i2.hoopchina.com.cn/blogfile/201410/14/BbsImg141327602396636_480*310.jpg"];
    //模拟下载延迟
    [NSThread sleepForTimeInterval:10];
    //将资源转换为二进制
    NSData *data=[NSData dataWithContentsOfURL:url];
    NSLog(@"downLoadImage:%@",[NSThread currentThread]);//在子线程中下载图片
    //在主线程更新UI
    [self performSelectorOnMainThread:@selector(updateImage:) withObject:data waitUntilDone:YES];
}

//更新imageView
- (void)updateImage:(NSData *)data{
    NSLog(@"updateImage:%@",[NSThread currentThread]);//在主线程中更新UI
    //将二进制数据转换为图片
    UIImage *image=[UIImage imageWithData:data];
    //设置image
    self.loadImage.image=image;
}



- (IBAction)downLoadImagebutton:(id)sender {
    
    //通过NSThread 实例方法
    //[self objectMethod];
    //通过NSThread 类方法
    //[self classMethod];
    //通过NSObject的方法，也叫隐式开启线程
    [self extendedMethod];
}

//通过NSObject的方法去下载图片
- (void)extendedMethod{
    //通过NSObject分类方法
    [self performSelectorInBackground:@selector(downLoadImage) withObject:nil];
    
}

//通过NSThread类方法去下载图片
- (void)classMethod{
    //NSThread类方法
    [NSThread detachNewThreadSelector:@selector(downLoadImage) toTarget:self withObject:nil];
}

//通过NSThread对象方法去下载图片
- (void)objectMethod{
    //创建一个程序去下载图片
    NSThread *thread=[[NSThread alloc]initWithTarget:self selector:@selector(downLoadImage) object:nil];
    NSLog(@"downLoadButton:%@",[NSThread currentThread]);//主线程
    //开启线程
    [thread start];
}









@end
