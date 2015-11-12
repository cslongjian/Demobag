//
//  OrderItem.m
//  OC_Demo
//
//  Created by Supwin_mbp002 on 15/11/12.
//  Copyright © 2015年 chenlongjian. All rights reserved.
//

#import "OrderItem.h"

@implementation OrderItem

-(instancetype)initWithName:(NSString *)itemName
{
    if (self = [super init]) {
        NSLog(@"initializing oderitem object");
    }
    return self;
}

-(void)dealloc
{
    NSLog(@"deallocting oderitem object");
}


@end
