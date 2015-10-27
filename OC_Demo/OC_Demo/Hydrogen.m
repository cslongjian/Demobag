//
//  Hydrogen.m
//  OC_Demo
//
//  Created by 陈龙坚 on 15/10/27.
//  Copyright (c) 2015年 chenlongjian. All rights reserved.
//

#import "Hydrogen.h"
#import "HydrogenHelper.h"

@implementation Hydrogen
{
@private HydrogenHelper *helper;
}

- (instancetype)initWithNeutrons:(NSUInteger)neutrons
{
    if ((self = [super init])) {
        _chemicalElement = @"Hydrogen";
        _atomicSymbol = @"H";
        _protons = 1;
        _neutrons = neutrons;
        
        //创建转发辅助对象
        helper = [[HydrogenHelper alloc] init];
    }
    return self;
}

+ (instancetype)hydrogenWithNeutrons:(NSUInteger)neutrons
{
    //[self class] 获取当前类实例方法。
    return [[[self class] alloc] initWithNeutrons:neutrons];
}

//快速转发复写该方法，用于拦截
-(id)forwardingTargetForSelector:(SEL)aSelector
{
    if ([helper respondsToSelector:aSelector]) {
        return helper;
    }
    return nil;
}

@end
