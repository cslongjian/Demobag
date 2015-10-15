//
//  CustomNav.m
//  TestDemo
//
//  Created by Supwin_mbp002 on 15/10/15.
//  Copyright © 2015年 chenlongjian. All rights reserved.
//

#import "CustomNav.h"

@implementation CustomNav

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubItem];
    }
    return  self;
}

-(void)addSubItem
{
    self.leftButton = [[UIButton alloc]initWithFrame:CGRectMake(5, 20, 44, 44)];
    self.rightButton = [[UIButton alloc]initWithFrame:CGRectMake(self.frame.size.width-50, 20, 44, 44)];
    self.textTitle = [[UILabel alloc]initWithFrame:CGRectMake(44, 20, self.frame.size.width-88, 44)];
    self.textTitle.textAlignment = NSTextAlignmentCenter;
    self.textTitle.textColor = [UIColor whiteColor];
    self.textTitle.font = [UIFont systemFontOfSize:18 weight:1];
    [self.leftButton setImage:[UIImage imageNamed:@"返回"] forState:UIControlStateNormal];
    [self.rightButton setImage:[UIImage imageNamed:@"消息"] forState:UIControlStateNormal];
    [self addSubview:self.leftButton];
    [self addSubview:self.rightButton];

}


@end
