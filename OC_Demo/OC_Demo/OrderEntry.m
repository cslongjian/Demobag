//
//  OrderEntry.m
//  OC_Demo
//
//  Created by Supwin_mbp002 on 15/11/12.
//  Copyright © 2015年 chenlongjian. All rights reserved.
//

#import "OrderEntry.h"

@implementation OrderEntry

-(instancetype)initWith:(NSString *)oid
{
    if (self = [super init]) {
        NSLog(@"initializing orderEntry object");
        orderId = oid;
        item = [[OrderItem alloc] initWithName:@"doodle"];
        shippingAddress = [[Address alloc] init];
    }
    return  self;
}

@end
