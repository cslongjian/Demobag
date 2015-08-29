//
//  PassValueViewController.h
//  TestDemo
//
//  Created by Supwin_mbp002 on 15/8/25.
//  Copyright (c) 2015年 chenlongjian. All rights reserved.
//

#import <UIKit/UIKit.h>

//2使用协议设置代理的方式传递数据。
@protocol RetrunControllerDelegate <NSObject>
@optional
- (void)returnValueFromBVC:(NSString *) returnValue;
@end

//3使用块的方式传递数据
typedef void(^ABlock)(NSString *str);

@interface PassValueViewController : UIViewController

//1直接接口声明属性方式传递
@property (nonatomic, strong) NSString *directPassValue;

//2使用协议设置代理方式传递数据
@property (nonatomic, weak) id<RetrunControllerDelegate> delegate;

//3使用块的方式传递数据
@property (nonatomic,copy) ABlock block;

@property (weak, nonatomic) IBOutlet UITextField *returnValue;

@end
