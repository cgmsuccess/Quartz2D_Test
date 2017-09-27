//
//  Demo5ViewController.m
//  Quartz2D
//
//  Created by 陈桂民 on 2017/9/27.
//  Copyright © 2017年 cgm. All rights reserved.
//

#import "Demo5ViewController.h"
#import "Demo5columnView.h"
@interface Demo5ViewController ()

@end

@implementation Demo5ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Demo5columnView *demo5view = [[Demo5columnView alloc] init];
    demo5view.frame = CGRectMake(20, 100, 300, 300);
    demo5view.backgroundColor = [UIColor grayColor];
    demo5view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:demo5view];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
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
