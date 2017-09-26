//
//  Dmeo3backView.m
//  Quartz2D
//
//  Created by 陈桂民 on 2017/9/26.
//  Copyright © 2017年 cgm. All rights reserved.
//

#import "Dmeo3backView.h"
#import "demo3View.h" //空心圆
#import "demo3solidView.h" //实心圆
@interface Dmeo3backView()

@property (weak, nonatomic) IBOutlet UILabel *propressLabel;
@property (weak, nonatomic) IBOutlet UILabel *propressLabelSolid;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet demo3View *demo3view; //空心圆
@property (weak, nonatomic) IBOutlet demo3solidView *demo3solid; //实心



@end


@implementation Dmeo3backView

- (IBAction)slider:(UISlider*)sender {
//    NSLog(@"%f",sender.value);
    self.propressLabel.text = [NSString stringWithFormat:@"%f",sender.value];
    self.propressLabelSolid.text = [NSString stringWithFormat:@"%f",sender.value];

    self.demo3view.progress = sender.value;
    self.demo3solid.progress = sender.value ;
    [self.demo3view setNeedsDisplay]; //从绘，会重新调用 drawRect
    [self.demo3solid setNeedsDisplay];
    [self.demo3solid setNeedsDisplay];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
