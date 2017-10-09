//
//  Demo8ViewController.m
//  Quartz2D
//
//  Created by 陈桂民 on 2017/10/9.
//  Copyright © 2017年 cgm. All rights reserved.
//

#import "Demo8ViewController.h"

@interface Demo8ViewController ()
{
    UIImage *imageOne ;
}
@end

@implementation Demo8ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self clipY];
    
    [self setUI];
}


-(void)setUI
{
    UIImageView *iamgeview = [[UIImageView alloc] init];
    iamgeview.backgroundColor = [UIColor redColor];
    iamgeview.frame = CGRectMake(0 , 88, imageOne.size.width, imageOne.size.height);
    iamgeview.image = imageOne;
    [self.view addSubview:iamgeview];
    
}


/**
 剪切 圆
 */
-(void)clipY
{
    // 1, 老图片
    UIImage *oldImag = [UIImage imageNamed:@"4.png"];
    // 2, 开启上下文 size 新图片大小 是否透明 YES 不透明
    UIGraphicsBeginImageContextWithOptions(oldImag.size, NO , 0.0);
    
    // 3,  画圆
    UIBezierPath *path  = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, oldImag.size.width, oldImag.size.width)];
    
    // 4, 设置为裁剪区
    [path addClip];
    
    // 5, 开始绘制图片
    [oldImag drawAtPoint:CGPointZero];
    
    
    //6,上下文中获取新图片
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    
    //    //关闭上下文
    UIGraphicsEndImageContext();
    
    //    //把图片转化成png 二进制
        NSData *data = UIImagePNGRepresentation(newImage);
    //    //写到桌面
    [data writeToFile:@"/Users/chenguimin/Desktop/test.png" options:YES error:nil];
    imageOne = newImage ;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
