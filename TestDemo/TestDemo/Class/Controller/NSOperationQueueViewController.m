//
//  NSOperationQueueViewController.m
//  TestDemo
//
//  Created by Supwin_mbp002 on 15/12/18.
//  Copyright © 2015年 chenlongjian. All rights reserved.
//

#import "NSOperationQueueViewController.h"

#define kURL @"http://i2.hoopchina.com.cn/blogfile/201410/14/BbsImg141327602396636_480*310.jpg"

@interface NSOperationQueueViewController ()

@end

@implementation NSOperationQueueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSInvocationOperation *operation = [[NSInvocationOperation alloc]initWithTarget:self selector:@selector(downloadImage:) object:kURL];
    
    NSOperationQueue *queue = [[NSOperationQueue alloc]init];
    [queue addOperation:operation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)downloadImage:(NSString *)url{
    NSLog(@"url:%@", url);
    NSURL *nsUrl = [NSURL URLWithString:url];
    NSData *data = [[NSData alloc]initWithContentsOfURL:nsUrl];
    UIImage * image = [[UIImage alloc]initWithData:data];
    [self performSelectorOnMainThread:@selector(updateUI:) withObject:image waitUntilDone:YES];
}

-(void)updateUI:(UIImage*) image{
    self.image.image = image;
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
