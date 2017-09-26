//
//  Demo2shapeView.m
//  Quartz2D
//
//  Created by 陈桂民 on 2017/9/26.
//  Copyright © 2017年 cgm. All rights reserved.
//

#import "Demo2shapeView.h"

@implementation Demo2shapeView


- (void)drawRect:(CGRect)rect {
//    
    [self deawArc]; //弧形
    [self drawCircle]; //圆形
    [self drawRectangular];//矩形
////    [self drawFillTriangle]; //填充三角形
    [self drawTriangle]; //三角形
    
    [self arcAquarterArc]; //四分之1 圆弧
    
}
//四分之1 圆弧
-(void)arcAquarterArc
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //拼接路径
    CGPoint center = CGPointMake(180, 125);
    CGFloat radius = 100; //圆弧半径
    CGFloat start = 0;//起点 起点是 右边
    CGFloat end = M_PI_2 ; //弧度
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:start endAngle:end clockwise:YES]; ///yes 顺时针画  。no 反之
    
    [path addLineToPoint:center];
    [path closePath];
    
    CGContextAddPath(ctx, path.CGPath); //添加到上下文
    CGContextStrokePath(ctx); //渲染
}

-(void)deawArc
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //拼接路径
    CGPoint center = CGPointMake(125, 125);
    CGFloat radius = 100; //圆弧半径
    CGFloat start = 0;//起点 起点是 右边
    CGFloat end = M_PI ; //弧度
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:start endAngle:end clockwise:YES]; ///yes 顺时针画  。no 反之
    CGContextAddPath(ctx, path.CGPath); //添加到上下文
    CGContextStrokePath(ctx); //渲染
}

//圆形
-(void)drawCircle
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(100, 100, 100, 100)];
    CGContextAddPath(ctx, path.CGPath); //添加到上下文
    CGContextStrokePath(ctx); //渲染
}

//矩形
-(void)drawRectangular
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(100, 0, 100, 100)];
//    path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(10, 10, 100, 100) cornerRadius:50]; 打开这个就是个圆
    CGContextAddPath(ctx, path.CGPath);
    CGContextStrokePath(ctx);
}


//填充三角形
-(void)drawFillTriangle
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    UIBezierPath *path = [UIBezierPath bezierPath];
    CGPoint startPonit = CGPointMake(10, 10);
    CGPoint endPonit  =  CGPointMake(50, 10);
    CGPoint zjPonit  =  CGPointMake(30, 180);
    
    [path moveToPoint:startPonit]; //添加起点
    [path addLineToPoint:zjPonit]; // 中点
    [path addLineToPoint:endPonit];//结束
    
    [path closePath]; //闭合线条
    
    CGContextAddPath(ctx, path.CGPath); //添加上下文
    
    //填充色
    [[UIColor blueColor] setFill];
    //描边色
    [[UIColor cyanColor] setStroke];
    //描边
    CGContextSetLineWidth(ctx, 15);
    //即填充又描边
    CGContextDrawPath(ctx, kCGPathFillStroke);
}

//三角形
-(void)drawTriangle
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    UIBezierPath *path = [UIBezierPath bezierPath];
    CGPoint startPonit = CGPointMake(10, 10);
    CGPoint endPonit  =  CGPointMake(240, 10);
    CGPoint zjPonit  =  CGPointMake(120, 180);
    
    [path moveToPoint:startPonit]; //添加起点
    [path addLineToPoint:zjPonit]; // 中点
    [path addLineToPoint:endPonit];//结束
    [path closePath]; //闭合线条
    CGContextAddPath(ctx, path.CGPath); //添加上下文
    CGContextStrokePath(ctx);
}

@end
