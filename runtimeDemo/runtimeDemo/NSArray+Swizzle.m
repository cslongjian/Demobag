//
//  NSArray+Swizzle.m
//  runtimeDemo
//
//  Created by Supwin_mbp002 on 15/12/4.
//  Copyright © 2015年 chenlongjian. All rights reserved.
//

#import "NSArray+Swizzle.h"
#import <objc/runtime.h>

@implementation NSArray (Swizzle)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
    Method ori_Method =  class_getInstanceMethod([NSArray class], @selector(lastObject));
    Method my_Method = class_getInstanceMethod([NSArray class], @selector(myLastObject));
    method_exchangeImplementations(ori_Method, my_Method);
        
        Method sori_Method =  class_getInstanceMethod([NSArray class], @selector(getObjects:range:));
        Method smy_Method = class_getInstanceMethod([NSArray class], @selector(myaddFirstObject:));
        method_exchangeImplementations(sori_Method, smy_Method);
        
    });
}

- (id)myLastObject
{
    NSLog(@"----------mylastObject--------");
    id ret = [self myLastObject];
    return ret;
}

- (void)myaddFirstObject:(NSSet *)objects
{
    [self myaddFirstObject:objects];
}




@end
