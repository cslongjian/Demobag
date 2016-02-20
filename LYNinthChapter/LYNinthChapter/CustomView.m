//
//  CustomView.m
//  LYNinthChapter
//
//  Created by Supwin_mbp002 on 16/2/20.
//  Copyright © 2016年 chenlongjian. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

*/

// NSArray  *xib_array= [[NSBundle mainBundle]loadNibNamed:@"CustomView" owner:nil options:nil];

//方式1
//使用init方式去添加View  这种启动方式。没有去添加xib的
-(instancetype)initWithFrame:(CGRect)frame
{
    NSLog(@"使用init方式去添加View");
    self = [super initWithFrame:frame];
    if (self) {
        UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 30)];
        lable.text = @"添加文本";
        [self addSubview:lable];
    }
    return  self;
}

//方式2
//初始化方式走XIB加载
+ (instancetype) MyCustomView
{
    NSArray* nibView =  [[NSBundle mainBundle] loadNibNamed:@"CustomView" owner:nil options:nil];
    return [nibView objectAtIndex:0];
}


//加载完nib后自动调用。补充view
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    NSLog(@"自定义View");
    self = [super initWithCoder:aDecoder];
    if (self) {
        UILabel *lable2 = [[UILabel alloc]initWithFrame:CGRectMake(0, 30, 100, 30)];
        lable2.text = @"文本2";
        [self addSubview:lable2];
    }
    return self;
}

//方式3
//绘制方式 不管上面两种。这个是一定会执行的。
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    // What rectangle am I filling?
    CGRect bounds = [self bounds];
    // Where is its center?
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    // From the center how far out to a corner?
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    // Get the context being drawn upon
    CGContextRef context = UIGraphicsGetCurrentContext();
    // All lines will be drawn 10 points wide
    CGContextSetLineWidth(context, 10);
    // Set the stroke color to light gray
    [[UIColor lightGrayColor] setStroke];
    // Draw concentric circles from the outside in
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20)
    {
        CGContextAddArc(context, center.x, center.y,
                        currentRadius, 0.0, M_PI * 2.0, YES);
        CGContextStrokePath(context);
    }
    
}



@end
