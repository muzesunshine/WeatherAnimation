//
//  RainView.m
//  WeatherAnimationDemo
//
//  Created by 姚家褀 on 16/7/19.
//  Copyright © 2016年 Yaojiaqi. All rights reserved.
//

#import "RainView.h"

@implementation RainView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // 初始化设置
        //        self.backgroundColor = [UIColor yellowColor];
        [self setup];
    }
    return self;
}

- (void)setup {
    self.emitterLayer.masksToBounds   = YES;
    self.emitterLayer.emitterShape    = kCAEmitterLayerLine;//发射形状
    self.emitterLayer.emitterMode     = kCAEmitterLayerSurface;//发射模式
    self.emitterLayer.emitterSize     = self.frame.size;
    self.emitterLayer.emitterPosition = CGPointMake(self.bounds.size.width / 2, -20);//发射位置
}

- (void)show {
    // 配置
    CAEmitterCell *cloudyflake  = [CAEmitterCell emitterCell];
    cloudyflake.birthRate       = 8;//产生率
    cloudyflake.speed           = 10.f;//
    cloudyflake.velocity        = 5.f;//速度值
    cloudyflake.yAcceleration   = 2000;//Y轴加速度
//    cloudyflake.
    cloudyflake.contents        = (__bridge id)([UIImage imageNamed:@"yudi"].CGImage);//图片
    cloudyflake.color           = [UIColor redColor].CGColor;
    cloudyflake.lifetime        = 12;//生命周期
    
    cloudyflake.color			= [UIColor whiteColor].CGColor;

    // 添加动画
    self.emitterLayer.emitterCells = @[cloudyflake ];
}


@end
