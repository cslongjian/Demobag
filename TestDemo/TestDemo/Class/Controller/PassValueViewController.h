//
//  PassValueViewController.h
//  TestDemo
//
//  Created by Supwin_mbp002 on 15/8/25.
//  Copyright (c) 2015年 chenlongjian. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol RetrunControllerDelegate <NSObject>
@optional
//- (void)addViewController:(MJAddViewController *)addVc didAddContactWithName:(NSString *)name phone:(NSString *)phone;
- (void)returnValueforBcontroller:(NSString *) returnValue;
@end
typedef void(^ABlock)(NSString *str);

@interface PassValueViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *returnValue;
@property (nonatomic, weak) id<RetrunControllerDelegate> delegate;
@property (nonatomic,copy) ABlock block;

@end
