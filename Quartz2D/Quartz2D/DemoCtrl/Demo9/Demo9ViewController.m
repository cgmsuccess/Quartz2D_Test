//
//  Demo9ViewController.m
//  Quartz2D
//
//  Created by 陈桂民 on 2017/10/9.
//  Copyright © 2017年 cgm. All rights reserved.
//

#import "Demo9ViewController.h"

@interface Demo9ViewController ()
{
    UIImage *_image;
}

@property (weak, nonatomic) IBOutlet UIImageView *imageview;

@end

@implementation Demo9ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
}

-(void)jietu
{
    //开启上下文
    UIGraphicsBeginImageContextWithOptions(self.view.bounds.size, NO , 0.0);
    // 获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    // 渲染控制器view 的图层到上下文
    //图层只能用渲染不能用draw
#warning xxxx-x-xx-
    // 只有文字 和 图片 能用 drawAtPoint  drawInRect  图层只能用渲染
    [self.view.layer renderInContext:ctx];
    //获取截图图片
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    _image = newImage ;
    //关闭上下文
    UIGraphicsEndImageContext() ;
    
    
    //    NSData *data = UIImagePNGRepresentation(newImage);
    //    //    //写到桌面
    //    [data writeToFile:@"/Users/chenguimin/Desktop/test.png" options:YES error:nil];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self jietu];

    self.imageview.image = _image ;
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
