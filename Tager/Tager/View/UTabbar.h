//
//  UTabbar.h
//  Tager
//
//  Created by Supwin_mbp002 on 15/7/2.
//  Copyright (c) 2015年 Supwin_mbp002. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol UTabbarDelegate <NSObject>

@required
-(void) changeNav:(NSInteger)from to:(NSInteger)to;

@end


@interface UTabbar : UIView

@property(nonatomic,weak) id<UTabbarDelegate> delegate;

@end
