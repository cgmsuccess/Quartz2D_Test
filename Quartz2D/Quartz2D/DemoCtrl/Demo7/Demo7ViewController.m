//
//  Demo7ViewController.m
//  Quartz2D
//
//  Created by 陈桂民 on 2017/10/9.
//  Copyright © 2017年 cgm. All rights reserved.
//

#import "Demo7ViewController.h"

@interface Demo7ViewController ()
{
    UIImage *imageOne ;
    UIImage *imageTwo;
}
@end

@implementation Demo7ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self drawText];
    
    [self drawImage];
    
    [self setUI];
}

-(void)setUI
{
    UIImageView *iamgeview = [[UIImageView alloc] init];
    iamgeview.frame = CGRectMake(20 , 88, imageOne.size.width/2, imageOne.size.height/2);
    iamgeview.image = imageOne;
    [self.view addSubview:iamgeview];
    
    
    UIImageView *imagge = [[UIImageView alloc] init];
    imagge.frame = CGRectMake(CGRectGetMinX(iamgeview.frame) , CGRectGetMaxY(iamgeview.frame) + 20, imageTwo.size.width/2, imageTwo.size.height/2);
    imagge.image = imageTwo;
    [self.view addSubview:imagge];

}


/**
 图片水印
 */
-(void)drawImage
{
    //老图片
    UIImage *oldImag = [UIImage imageNamed:@"4.png"];
    // 开启上下文 size 新图片大小 是否透明 YES 不透明
    UIGraphicsBeginImageContextWithOptions(oldImag.size, NO , 0.0);
    //把图片绘制到上下文当中
    [oldImag drawAtPoint:CGPointZero];
    
    //被绘制的图片
    UIImage *waterImage = [UIImage imageNamed:@"6.png"];
    //绘制水印图片到当前上下文
    [waterImage drawInRect:CGRectMake(oldImag.size.width/4, oldImag.size.height- 50, oldImag.size.width/2, 40)];
   
    //上下文中获取新图片
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    imageTwo = newImage ;
//    //关闭上下文
    UIGraphicsEndImageContext();
//    //把图片转化成png 二进制
    NSData *data = UIImagePNGRepresentation(newImage);
//    //写到桌面
    [data writeToFile:@"/Users/chenguimin/Desktop/test.png" options:YES error:nil];
}



/**
 文字水印
 */
-(void)drawText
{
    UIImage *oldImag = [UIImage imageNamed:@"4.png"];
    // 开启上下文 size 新图片大小 是否透明 YES 不透明 ， NO 透明
    UIGraphicsBeginImageContextWithOptions(oldImag.size, NO , 0.0);
    //把图片绘制到上下文当中
    [oldImag drawAtPoint:CGPointZero];
   
    //文字宽度
    NSString *text = @"老铁们，双击老铁们，双击老铁们，双击";
    NSDictionary *dicM = @{NSFontAttributeName:[UIFont boldSystemFontOfSize:21],
                           NSForegroundColorAttributeName:[UIColor redColor]
                           };
    CGFloat textWidth = [NSString autoWidthWithString:text Font:21];
    
    //绘制文字的位置
    [text drawAtPoint:CGPointMake(oldImag.size.width - textWidth - 10 , oldImag.size.height - 33) withAttributes:dicM];
    //获取新图片
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
   
    imageOne = newImage ;
    //关闭上下文
    UIGraphicsEndImageContext();
    //把图片转化成png 二进制
    NSData *data = UIImagePNGRepresentation(newImage);
    //写到桌面
    [data writeToFile:@"/Users/chenguimin/Desktop/test.png" options:YES error:nil];
    
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
