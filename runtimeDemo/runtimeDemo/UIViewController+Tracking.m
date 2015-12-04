//
//  UIViewController+Tracking.m
//  runtimeDemo
//
//  Created by Supwin_mbp002 on 15/12/4.
//  Copyright © 2015年 chenlongjian. All rights reserved.
//

#import "UIViewController+Tracking.h"
#import <objc/runtime.h>

@implementation UIViewController (Tracking)

+ (void)load
{
    NSString *className = NSStringFromClass(self.class);
    NSLog(@"classname：%@", className);
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        Class class = [self class];
        
        SEL originalSelector = @selector(viewWillAppear:);
        SEL swizzledSelector = @selector(my_viewWillAppear:);
        
        Method originalMethod = class_getInstanceMethod(class,originalSelector);
        Method swizzledMethod = class_getInstanceMethod(class,swizzledSelector);
        
//        将方法添加到类中，original方法放到地址为swizzled的实现中
        BOOL didAddMethod = class_addMethod(class, originalSelector, method_getImplementation(swizzledMethod),   method_getTypeEncoding(swizzledMethod));
        
//        交换实现的地址，将original的修改为swizzled的实现地址
        if (didAddMethod) {
             NSLog(@"替换方法");
            class_replaceMethod(class,
                                swizzledSelector,
                                method_getImplementation(originalMethod),
                                method_getTypeEncoding(originalMethod));
        } else {
             NSLog(@"如果没成功就交换IMP地址");
            method_exchangeImplementations(originalMethod, swizzledMethod);
        }
    });
}

- (void)my_viewWillAppear:(BOOL)animated {
    NSLog(@"-----viewWillAppear: %@", self);
    [self my_viewWillAppear:animated];
    

}

@end
