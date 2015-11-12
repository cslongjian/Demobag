//
//  OrderEntry.h
//  OC_Demo
//
//  Created by Supwin_mbp002 on 15/11/12.
//  Copyright © 2015年 chenlongjian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OrderItem.h"
#import "Address.h"

@interface OrderEntry : NSObject
{
@public OrderItem *item;
    NSString *orderId;
    Address *shippingAddress;
}

-(instancetype) initWith:(NSString *)oid;


@end
