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
@interface PassValueViewController : UIViewController

@property (nonatomic, weak) id<RetrunControllerDelegate> delegate;

@end
