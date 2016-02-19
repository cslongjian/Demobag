//
//  CustomVIew.m
//  SketchDemo
//
//  Created by Supwin_mbp002 on 16/2/18.
//  Copyright © 2016年 chenlongjian. All rights reserved.
//

#import "CustomVIew.h"

@implementation CustomVIew

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)drawRect:(CGRect)rect
{
    UIColor* color0 =[UIColor colorWithRed: 0.521 green: 0.521 blue: 0.521 alpha: 1];
    
    
        UIBezierPath* path2Path = UIBezierPath.bezierPath;
        [path2Path moveToPoint: CGPointMake(26.57, 87.61)];
        [path2Path addCurveToPoint: CGPointMake(48.63, 98.31) controlPoint1: CGPointMake(33.5, 93.44) controlPoint2: CGPointMake(42.38, 96.11)];
        [path2Path addCurveToPoint: CGPointMake(73.07, 98.31) controlPoint1: CGPointMake(54.09, 100.23) controlPoint2: CGPointMake(64.54, 100.81)];
        [path2Path addCurveToPoint: CGPointMake(92.7, 90.53) controlPoint1: CGPointMake(80.67, 96.08) controlPoint2: CGPointMake(86.29, 90.86)];
        [path2Path addCurveToPoint: CGPointMake(107, 100) controlPoint1: CGPointMake(101.38, 90.09) controlPoint2: CGPointMake(107, 100)];
        [path2Path addCurveToPoint: CGPointMake(105.7, 84.99) controlPoint1: CGPointMake(107, 100) controlPoint2: CGPointMake(107.01, 90.26)];
        [path2Path addCurveToPoint: CGPointMake(99.58, 69.97) controlPoint1: CGPointMake(104.53, 80.26) controlPoint2: CGPointMake(99.58, 69.97)];
        [path2Path addCurveToPoint: CGPointMake(100.7, 52.97) controlPoint1: CGPointMake(99.58, 69.97) controlPoint2: CGPointMake(101.41, 61.94)];
        [path2Path addCurveToPoint: CGPointMake(96.52, 33.39) controlPoint1: CGPointMake(100.15, 46.06) controlPoint2: CGPointMake(98.54, 38.13)];
        [path2Path addCurveToPoint: CGPointMake(88.41, 19.5) controlPoint1: CGPointMake(94.93, 29.65) controlPoint2: CGPointMake(91.75, 24.03)];
        [path2Path addCurveToPoint: CGPointMake(69.82, 0) controlPoint1: CGPointMake(80.63, 8.95) controlPoint2: CGPointMake(69.82, 0)];
        [path2Path addCurveToPoint: CGPointMake(79.2, 26.53) controlPoint1: CGPointMake(69.82, 0) controlPoint2: CGPointMake(77.77, 17.49)];
        [path2Path addCurveToPoint: CGPointMake(80.32, 38.73) controlPoint1: CGPointMake(79.7, 29.71) controlPoint2: CGPointMake(80.55, 34.4)];
        [path2Path addCurveToPoint: CGPointMake(78.12, 52.44) controlPoint1: CGPointMake(79.93, 45.89) controlPoint2: CGPointMake(78.12, 52.44)];
        [path2Path addCurveToPoint: CGPointMake(66.15, 44.43) controlPoint1: CGPointMake(78.12, 52.44) controlPoint2: CGPointMake(72.33, 49.2)];
        [path2Path addCurveToPoint: CGPointMake(53.78, 33.39) controlPoint1: CGPointMake(61.65, 40.96) controlPoint2: CGPointMake(57.07, 36.3)];
        [path2Path addCurveToPoint: CGPointMake(29.13, 9.12) controlPoint1: CGPointMake(45.25, 25.85) controlPoint2: CGPointMake(29.13, 9.12)];
        [path2Path addCurveToPoint: CGPointMake(40.9, 28.14) controlPoint1: CGPointMake(29.13, 9.12) controlPoint2: CGPointMake(36.78, 22.27)];
        [path2Path addCurveToPoint: CGPointMake(56, 47.4) controlPoint1: CGPointMake(45.73, 35.03) controlPoint2: CGPointMake(56, 47.4)];
        [path2Path addCurveToPoint: CGPointMake(35.1, 31.7) controlPoint1: CGPointMake(56, 47.4) controlPoint2: CGPointMake(42.07, 37.44)];
        [path2Path addCurveToPoint: CGPointMake(16.88, 15.22) controlPoint1: CGPointMake(29.03, 26.71) controlPoint2: CGPointMake(16.88, 15.22)];
        [path2Path addCurveToPoint: CGPointMake(40.9, 47.4) controlPoint1: CGPointMake(16.88, 15.22) controlPoint2: CGPointMake(32.48, 37.05)];
        [path2Path addCurveToPoint: CGPointMake(63.15, 72.11) controlPoint1: CGPointMake(47.9, 56.02) controlPoint2: CGPointMake(63.15, 72.11)];
        [path2Path addCurveToPoint: CGPointMake(51.25, 77.64) controlPoint1: CGPointMake(63.15, 72.11) controlPoint2: CGPointMake(57.75, 76.03)];
        [path2Path addCurveToPoint: CGPointMake(35.1, 77.64) controlPoint1: CGPointMake(45.69, 79.02) controlPoint2: CGPointMake(39.29, 78.19)];
        [path2Path addCurveToPoint: CGPointMake(7, 64.79) controlPoint1: CGPointMake(25.47, 76.38) controlPoint2: CGPointMake(7, 64.79)];
        [path2Path addCurveToPoint: CGPointMake(26.57, 87.61) controlPoint1: CGPointMake(7, 64.79) controlPoint2: CGPointMake(15.31, 78.14)];
        [path2Path closePath];
        path2Path.miterLimit = 4;
        
        path2Path.usesEvenOddFillRule = YES;
        
        [color0 setStroke];
        [[UIColor blueColor] setFill];
        path2Path.lineWidth = 1;
        [path2Path fill];
        [path2Path stroke];

}



@end
