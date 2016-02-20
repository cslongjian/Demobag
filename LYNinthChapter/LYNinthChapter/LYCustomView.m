//
//  LYCustomView.m
//  LYNinthChapter
//
//  Created by Supwin_mbp002 on 16/2/20.
//  Copyright © 2016年 chenlongjian. All rights reserved.
//

#import "LYCustomView.h"

@implementation LYCustomView
int curX;
int curY;



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint lastTouch = [touch locationInView:self];
    
    curX = lastTouch.x;
    curY = lastTouch.y;
    
    [self setNeedsDisplay];

}

-(void)drawRect:(CGRect)rect
{
    self.backgroundColor = [UIColor blackColor];
    //不加这个设置背景色，会导致点重影了。。
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(ctx, [[UIColor redColor] CGColor]);
    CGContextFillEllipseInRect(ctx, CGRectMake(curX-10, curY-10, 20, 20));
}

@end
