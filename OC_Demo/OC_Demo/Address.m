//
//  Address.m
//  OC_Demo
//
//  Created by Supwin_mbp002 on 15/11/12.
//  Copyright © 2015年 chenlongjian. All rights reserved.
//

#import "Address.h"

@implementation Address

-(instancetype)init
{
    if (self = [super init]) {
        NSLog(@"initializing address object");
    }
    return self;
}


-(void)dealloc
{
    NSLog(@"deallocting address object");
}

@end
