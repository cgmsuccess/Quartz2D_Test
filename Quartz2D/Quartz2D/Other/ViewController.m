//
//  ViewController.m
//  Quartz2D
//
//  Created by 陈桂民 on 2017/9/25.
//  Copyright © 2017年 cgm. All rights reserved.
//

#import "ViewController.h"
#import "Demo1ViewController.h"


@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableview;

@property (nonatomic,strong)NSArray *dataSource;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    /*
     
       drawInRect  上述方法是字符串用来在一个区域绘制时使用,可在attributes里配置字体大小,颜色等属性.
     
     
       drawAtPoint  与之类似,当需要把字符串在某一点上绘制时,可用以下方法
     
     
     */
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
    self.automaticallyAdjustsScrollViewInsets = NO ;
    [self.tableview registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
    self.dataSource = @[@"基本图形绘制线条Demo1",@"基本形状绘制圆形矩形三角形等Demo2",@"下载进度Demo3",@"饼图的基本绘制Demo4",@"柱状图Demo5",@"uikit 基本绘图，如绘制文字，矩形等Demo6",@"给图片添加文字或者图片水印,生成新的图片Demo7",@"剪切圆Demo8"];

}




#pragma mark UItableVIewDelegate UITableViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSource.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    NSString *title = self.dataSource[indexPath.row];
    cell.textLabel.text = title;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSString *title = self.dataSource[indexPath.row];
    NSRange range = [title rangeOfString:@"Demo"];
    NSString *subTitle = [title substringToIndex:range.location];
    NSString *subTitle1 = [title substringFromIndex:range.location];
    NSLog(@"subTitle = %@ subTitle1 = %@ ",subTitle ,subTitle1 );
    NSString *ctrlTitle = [NSString stringWithFormat:@"%@ViewController",subTitle1];
    UIViewController *vc = [NSClassFromString(ctrlTitle) new];
    [self.navigationController pushViewController:vc animated:YES];
    
}

@end
