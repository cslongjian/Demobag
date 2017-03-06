//
//  MasnoryNavView.m
//  TestDemo
//
//  Created by hzl on 17/3/6.
//  Copyright © 2017年 chenlongjian. All rights reserved.
//

#import "MasnoryNavView.h"
#import "Masonry.h"

@implementation MasnoryNavView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
        self = [super initWithFrame:frame];
        if (self) {
            [self addSubItem];
        }
        return  self;
}

-(void)addSubItem
{
    self.leftButton = [[UIButton alloc]init];
    self.rightButton = [[UIButton alloc]init];
    self.textTitle = [[UILabel alloc]init];
    self.textTitle.textAlignment = NSTextAlignmentCenter;
    self.textTitle.textColor = [UIColor whiteColor];
    self.textTitle.text= @"测试masonry定义的导航View";
    self.textTitle.font = [UIFont systemFontOfSize:18 weight:1];
    [self.leftButton setImage:[UIImage imageNamed:@"返回"] forState:UIControlStateNormal];
    [self.rightButton setImage:[UIImage imageNamed:@"消息"] forState:UIControlStateNormal];
    [self addSubview:self.leftButton];
    [self addSubview:self.rightButton];
    [self addSubview:self.textTitle];
    
    [self p_makeConstraints];
    
    
}

-(void)p_makeConstraints
{
    [_leftButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(20);
        make.left.equalTo(self).offset(10);
    }];
    
    [_rightButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(20);
        make.right.equalTo(self).offset(-10);
    }];
    
    [_textTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.centerY.equalTo(_leftButton);
    }];
    
    
    
}

@end
