//
//  Atom.m
//  OC_Demo
//
//  Created by Supwin_mbp002 on 15/10/24.
//  Copyright © 2015年 chenlongjian. All rights reserved.
//

#import "Atom.h"

/*
 扩展
 一种匿名分类
 
 */
@interface Atom ()
{
    //实例变量的声明
}
//属性声明
//方法声明
@end

@implementation Atom

- (instancetype)init
{
    if ((self = [super init])) {
        _chemicalElement = @"none";
    }
    return  self;
}

- (NSUInteger) massNumber
{
    return 0;
}

-(void)write:(NSFileHandle *)file
{
    NSData *date = [self.chemicalElement dataUsingEncoding:NSUTF8StringEncoding];
    [file writeData:date];
    [file closeFile];
}

+(void)ClassMethod:(NSString *)print
{
    NSLog(@"%@", print);
}


@end
