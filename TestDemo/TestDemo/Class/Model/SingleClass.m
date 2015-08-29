//
//  SingleClass.m
//  TestDemo
//  单例实现
//  Created by 陈龙坚 on 15/8/29.
//  Copyright (c) 2015年 chenlongjian. All rights reserved.
//

#import "SingleClass.h"

@implementation SingleClass

+(SingleClass *)sharedSingleClass{
    
    static SingleClass *singleInstance = nil;
    
    static dispatch_once_t once;
    
    dispatch_once(&once, ^{
        singleInstance = [[SingleClass alloc] init];
    });
    return singleInstance;
}

@end
