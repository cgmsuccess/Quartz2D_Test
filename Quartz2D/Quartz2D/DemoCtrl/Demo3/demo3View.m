//
//  demo3View.m
//  Quartz2D
//
//  Created by 陈桂民 on 2017/9/26.
//  Copyright © 2017年 cgm. All rights reserved.
//

#import "demo3View.h"

@implementation demo3View

-(void)setProgress:(CGFloat)progress
{
    _progress = progress ;
}

-(void)drawRect:(CGRect)rect
{
    NSLog(@"x-x-x-x- %f" ,_progress) ;
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGPoint center = CGPointMake(60, 60);
    CGFloat redius = 60 ;
    CGFloat start = -M_PI_2 ;
    CGFloat end = -M_PI_2 + _progress * M_PI * 2 ;
    
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:redius startAngle:start endAngle:end clockwise:YES];
    
    CGContextAddPath(ctx, path.CGPath);
    CGContextStrokePath(ctx);
}

@end
