//
//  Demo4Pie.m
//  Quartz2D
//
//  Created by 陈桂民 on 2017/9/27.
//  Copyright © 2017年 cgm. All rights reserved.
//

#import "Demo4Pie.h"

@implementation Demo4Pie

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.


- (void)drawRect:(CGRect)rect {
    
    //1.上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    // 中心点
    CGPoint center = CGPointMake(self.width/2, self.height/2);
    CGFloat radius = self.width/2; //半径
    CGFloat start = 0 ; //起点
    CGFloat angle = 0 ; //角度
    CGFloat end = 0 ; //终点
    NSArray *arr = @[@20,@30,@50]; //饼图弧形比例
    for (NSNumber *number in arr) {
     //2.拼接路径
        start = end;
        angle = number.integerValue / 100.0 *M_PI *2 ;
        end = start + angle ;
        UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:start endAngle:end clockwise:YES];
       
        [path addLineToPoint:center]; //因为要封闭填充，所以给他一个点，系统去封闭他

    //3.添加到上下文
        CGContextAddPath(ctx, path.CGPath);
        
        [MyrandomColor set]; //随机
    //4. 渲染
        CGContextFillPath(ctx);
    }
    
}

// 没有优化的
-(void)drawPie
{
    NSArray *arr = @[@20,@30,@50]; //饼图弧形比例
    // Drawing code
    //1.上下文
    CGContextRef rtx = UIGraphicsGetCurrentContext();
    
    // 中心点
    CGPoint center = CGPointMake(self.width/2, self.height/2);
    CGFloat radius = self.width/2; //半径
    CGFloat start = 0 ; //起点
    CGFloat angle = 0 ; //角度
    CGFloat end = 0 ; //终点
#warning  TODO 这里的100 一定要用100.0 浮点型
    
#pragma 第一个扇形
    angle = 20 /100.0 * M_PI * 2;
    end = start + angle ;
    // 2. 路径
    UIBezierPath *path1 = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:start endAngle:end clockwise:YES];
    [path1 addLineToPoint:center]; //一定要加。好封闭
    //3.添加到上下文
    CGContextAddPath(rtx, path1.CGPath);
    //4.渲染 。填充
    CGContextFillPath(rtx);
    
#pragma 第二个扇形
    start = end ;
    angle = 30 /100.0 * M_PI * 2;
    end = start + angle ;
    //  路径
    UIBezierPath *path2 = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:start endAngle:end clockwise:YES];
    [path2 addLineToPoint:center]; //一定要加。好封闭
    //添加到上下文
    CGContextAddPath(rtx, path2.CGPath);
    [[UIColor yellowColor] set];
    CGContextFillPath(rtx); //填充
    
#pragma 第三个扇形
    start = end ;
    angle = 50 /100.0 * M_PI * 2;
    end = start + angle ;
    //  路径
    UIBezierPath *path3 = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:start endAngle:end clockwise:YES];
    [path2 addLineToPoint:center]; //一定要加。好封闭
    //添加到上下文
    CGContextAddPath(rtx, path3.CGPath);
    [[UIColor cyanColor] set];
    CGContextFillPath(rtx); //填充

}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self setNeedsDisplay];
}


@end
