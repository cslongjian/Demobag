//
//  SingleClass.h
//  TestDemo
//  单例类
//  Created by 陈龙坚 on 15/8/29.
//  Copyright (c) 2015年 chenlongjian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingleClass : NSObject
@property (nonatomic, strong) NSString *name;
+(SingleClass*)sharedSingleClass;
@end
