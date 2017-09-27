//
//  Demo6ViewController.m
//  Quartz2D
//
//  Created by 陈桂民 on 2017/9/28.
//  Copyright © 2017年 cgm. All rights reserved.
//

#import "Demo6ViewController.h"
#import "Demo6Uikit.h"
@interface Demo6ViewController ()

@end

@implementation Demo6ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Demo6Uikit *demo6view = [[Demo6Uikit alloc] init];
    demo6view.frame = CGRectMake(20, 100, 300, 300);
    demo6view.backgroundColor = [UIColor grayColor];
    demo6view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:demo6view];
    
    self.view.backgroundColor = [UIColor yellowColor];}

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
