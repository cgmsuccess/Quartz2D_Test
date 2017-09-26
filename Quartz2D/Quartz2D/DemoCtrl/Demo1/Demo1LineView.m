//
//  Demo1LineView.m
//  Quartz2D
//
//  Created by 陈桂民 on 2017/9/25.
//  Copyright © 2017年 cgm. All rights reserved.
//

#import "Demo1LineView.h"

@implementation Demo1LineView

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
/**
 当视图第一次显示的时候就会调用
 
 @param rect rect
 */
- (void)drawRect:(CGRect)rect {
    // Drawing code  viewDidLoad 先调用  --> viewDidAppear  将要显示的时候才会调用 drawRect
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //路径
    UIBezierPath *path = [UIBezierPath bezierPath];
    //起点
    CGPoint startp = CGPointMake(10, 125);
    //终点
    CGPoint endp = CGPointMake(250, 125);
    //中间的点，
    CGPoint controlp = CGPointMake(125, 10);
    //添加路径
    [path moveToPoint:startp];
    [path addQuadCurveToPoint:endp controlPoint:controlp];
    
    //添加上下文
    CGContextAddPath(ctx, path.CGPath);
    //渲染
    CGContextStrokePath(ctx);
}



//上下文， （内存缓存区） ，内存操作速度快 ,交叉两条线
-(void)crossDrawLine
{
    //1 , 获取上下文 以后获取上下文直接用 UIGraphics
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //2 , 设置绘图信息（拼接路径）
    UIBezierPath *path = [UIBezierPath bezierPath];
    //3 , 设置起点
    [path moveToPoint:CGPointMake(0, 0)];
    //添加一条线到某个点
  
    [path addLineToPoint:CGPointMake(240, 80)];
   
    [path moveToPoint:CGPointMake(240, 40)];
    
    [path addLineToPoint:CGPointMake(10, 10)];
    // 设置绘图状态，线宽等
    CGContextSetLineCap(ctx, kCGLineCapSquare);
    CGContextSetLineWidth(ctx, 10);
    
    //4 ,把路径添加到上下文
    CGContextAddPath(ctx, path.CGPath);
    //5 , 渲染上下文 stroke描边
    CGContextStrokePath(ctx);
}

//画直线
-(void)drawLine
{
    //1 , 获取上下文 以后获取上下文直接用 UIGraphics
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //2 , 设置绘图信息（拼接路径）
    UIBezierPath *path = [UIBezierPath bezierPath];
    //3 , 设置起点
    [path moveToPoint:CGPointMake(0, 0)];
    //添加一条线到某个点
    [path addLineToPoint:CGPointMake(66, 66)];
    [path addLineToPoint:CGPointMake(240, 10)];
//    [path addLineToPoint:CGPointMake(100, 180)];
    
    //4 ,把路径添加到上下文
    CGContextAddPath(ctx, path.CGPath);
    //5 , 渲染上下文 stroke描边
    CGContextStrokePath(ctx);
}

@end
