//
//  StartUIView.m
//  TestDemo
//
//  Created by Supwin_mbp002 on 15/8/13.
//  Copyright (c) 2015年 chenlongjian. All rights reserved.
//

#import "StartUIView.h"

@implementation StartUIView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


-(instancetype) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _FirstView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        _FirstView.contentMode = UIViewContentModeScaleAspectFill;
        _FirstView.layer.masksToBounds = YES;
        _FirstView.backgroundColor = [UIColor blueColor];
        [self addSubview:_FirstView];
        
        _SecondView = [[UIImageView alloc] initWithFrame:CGRectMake(frame.size.width, 0, frame.size.width, frame.size.height)];
        _SecondView.contentMode = UIViewContentModeScaleAspectFill;
        _SecondView.backgroundColor = [UIColor redColor];
        _SecondView.layer.masksToBounds = YES;
        [self addSubview:_SecondView];
        
    }
    return  self;
}

@end
