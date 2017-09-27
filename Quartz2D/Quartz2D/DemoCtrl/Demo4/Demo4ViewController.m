//
//  Demo4ViewController.m
//  Quartz2D
//
//  Created by 陈桂民 on 2017/9/27.
//  Copyright © 2017年 cgm. All rights reserved.
//

#import "Demo4ViewController.h"
#import "Demo4Pie.h"
@interface Demo4ViewController ()
/** 饼图   ***/
@property (nonatomic,weak)Demo4Pie *pieView;

@end

@implementation Demo4ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Demo4Pie *pieview = [[Demo4Pie alloc] init];
    self.pieView = pieview;
    self.pieView.frame = CGRectMake(20, 100, 300, 300);
    self.pieView.backgroundColor = [UIColor grayColor];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.pieView];
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
