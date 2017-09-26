//
//  Demo3ViewController.m
//  Quartz2D
//
//  Created by 陈桂民 on 2017/9/26.
//  Copyright © 2017年 cgm. All rights reserved.
//

#import "Demo3ViewController.h"
#import "Dmeo3backView.h"
@interface Demo3ViewController ()

@end

@implementation Demo3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];

    Dmeo3backView *bview = [[NSBundle mainBundle] loadNibNamed:@"Dmeo3backView" owner:self options:0][0];
    bview.frame = self.view.bounds;
    [self.view addSubview:bview];
    

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
