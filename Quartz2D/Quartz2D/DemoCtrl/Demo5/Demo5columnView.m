//
//  Demo5columnView.m
//  Quartz2D
//
//  Created by 陈桂民 on 2017/9/27.
//  Copyright © 2017年 cgm. All rights reserved.
//


#import "Demo5columnView.h"

@implementation Demo5columnView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //宽度公式为  2n - 1
    
    //1. 获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    NSArray *arr = @[@20,@30,@50];
    CGFloat witdh = self.width/(arr.count * 2 -1) ; //每个柱子的宽度
    CGFloat height = 0 ; //柱子高度
    CGFloat x = 0;
    CGFloat y = 0;
    CGFloat viewH = self.height;
    for ( int i = 0 ; i < arr.count; i++) {
        height = [arr[i] integerValue] / 100.0 * viewH ; //每个柱子对应高度
        x = 2 * witdh * i ;
        y = viewH - height ;
                
        //2. 拼接路径
        UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(x, y, witdh, height)];
        //3.添加到上下文
        CGContextAddPath(ctx, path.CGPath);
        [MyrandomColor set];
        
        //4.渲染 并且填充
        CGContextFillPath(ctx);
//        CGContextDrawPath(ctx, kCGPathFillStroke);  即填充又描边
        
    }
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self setNeedsDisplay];
}

@end
