//
//  UTabbarButton.m
//  Tager
//
//  Created by Supwin_mbp002 on 15/7/2.
//  Copyright (c) 2015年 Supwin_mbp002. All rights reserved.
//
#define kImageRatio 0.6


#import "UTabbarButton.h"

@implementation UTabbarButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/



-(void)setHighlighted:(BOOL)highlighted{
    
}

#pragma mark 返回按钮内部titlelabel的边框
-(CGRect)titleRectForContentRect:(CGRect)contentRect{
    return CGRectMake(0, contentRect.size.height*kImageRatio-5, contentRect.size.width, contentRect.size.height-contentRect.size.height*kImageRatio);
}

#pragma mark 返回按钮内部UIImage的边框
-(CGRect) imageRectForContentRect:(CGRect)contentRect{
    return CGRectMake(0, 0, contentRect.size.width, contentRect.size.height*kImageRatio);
}


@end
