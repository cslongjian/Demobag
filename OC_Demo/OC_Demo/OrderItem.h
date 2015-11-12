//
//  OrderItem.h
//  OC_Demo
//
//  Created by Supwin_mbp002 on 15/11/12.
//  Copyright © 2015年 chenlongjian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OrderItem : NSObject
{
@public NSString *name;
}

-(instancetype) initWithName:(NSString *)itemName;

@end
