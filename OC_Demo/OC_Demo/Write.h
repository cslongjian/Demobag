//
//  Write.h
//  OC_Demo
//
//  Created by Supwin_mbp002 on 15/10/26.
//  Copyright © 2015年 chenlongjian. All rights reserved.
//

/*协议 支撑多重继承概念
 @protocol 协议名称 <协议名称>
 声明属性
 @required
 声明方法
 @optional
 @end
 */

#import <Foundation/Foundation.h>

@protocol Write <NSObject>

-(void)write:(NSFileHandle *)file;

@end
