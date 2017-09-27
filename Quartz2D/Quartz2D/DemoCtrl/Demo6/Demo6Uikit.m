//
//  Demo6Uikit.m
//  Quartz2D
//
//  Created by 陈桂民 on 2017/9/28.
//  Copyright © 2017年 cgm. All rights reserved.
//

#import "Demo6Uikit.h"

@implementation Demo6Uikit

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    [self drawPattern:rect]; // 平铺
    
    [self drawImage];
    
    [self drawText];
    
}

//平铺 图片
-(void)drawPattern:(CGRect)rect
{
    UIImage *image = [UIImage imageNamed:@"2"];
    
//    UIRectClip(CGRectMake(0, 0, 100, 100)); //设置裁决区域，超过这里区域都被裁剪

    [image drawAsPatternInRect:rect];
}
//普通的画图片
-(void)drawImage
{
    UIImage *image = [UIImage imageNamed:@"1"];
//    UIRectClip(CGRectMake(0, 0, 200, 200)); //设置裁决区域，超过这里区域都被裁剪

    [image drawInRect:CGRectMake(self.width/2, self.height/2, 100, 100)];  //1.可设置尺寸
    
//      [image drawAtPoint:CGPointZero]; // 2. 原图大小
}

//画文字
-(void)drawText
{
    NSString *title = @"hello world" ;
    
    CGRect titleRect = CGRectMake(0, 0, 100, 44);
    NSDictionary *attributs = @{NSBackgroundColorAttributeName:[UIColor redColor]};
    
    // 填充色
    [MyrandomColor set];
    //填充
    UIRectFill(titleRect);
    
    [title drawInRect:titleRect withAttributes:attributs];

}

@end
