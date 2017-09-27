//
//  demo3solidView.m
//  Quartz2D
//
//  Created by 陈桂民 on 2017/9/27.
//  Copyright © 2017年 cgm. All rights reserved.
//

#import "demo3solidView.h"

@implementation demo3solidView


-(void)setProgress:(CGFloat)progress
{
    _progress = progress ;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGPoint center = CGPointMake(60, 60);
    CGFloat redius = 60 ;
    CGFloat start = -M_PI_2 ;
    CGFloat end = -M_PI_2 + _progress * M_PI * 2 ;
    
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:redius startAngle:start endAngle:end clockwise:YES];
   
    [path addLineToPoint:center] ;
    
    //填充色
    [[UIColor redColor] setFill];
 
    //描边色
    [[UIColor whiteColor] setStroke];
    if (_progress == 1) {
        [[UIColor redColor] setStroke];
    }
    
    //描边宽度
    CGContextSetLineWidth(ctx, 1);

    
    CGContextAddPath(ctx, path.CGPath); //添加路径

    //描边 并且填充
    CGContextDrawPath(ctx, kCGPathFillStroke);
}

@end
