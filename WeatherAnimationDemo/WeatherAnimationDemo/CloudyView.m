//
//  CloudyView.m
//  SnowAndRain
//
//  Created by 姚家褀 on 16/7/18.
//  Copyright © 2016年 YouXianMing. All rights reserved.
//

#import "CloudyView.h"

@implementation CloudyView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // 初始化设置
        [self setup];
    }
    return self;
}

- (void)setup {
    self.emitterLayer.masksToBounds   = YES;
    self.emitterLayer.emitterShape    = kCAEmitterLayerLine;//发射形状
    self.emitterLayer.emitterMode     = kCAEmitterLayerSurface;//发射模式
    self.emitterLayer.emitterSize     = self.frame.size;
    self.emitterLayer.emitterPosition = CGPointMake(self.bounds.size.width / 2.f, - 20);//发射位置
}

- (void)show {
    // 配置
    CAEmitterCell *cloudyflake  = [CAEmitterCell emitterCell];
    cloudyflake.birthRate       = 1.f;//产生率
    cloudyflake.speed           = 10.f;//
    cloudyflake.velocity        = 2.f;//速度值
    cloudyflake.velocityRange   = 10.f;//速度范围
    cloudyflake.yAcceleration   = 10.f;//Y轴加速度
    cloudyflake.emissionRange   = 0.5 * M_PI;//发射角度
    cloudyflake.spinRange       = 0.25 * M_PI;//
    cloudyflake.contents        = (__bridge id)([UIImage imageNamed:@"snow"].CGImage);//图片
    cloudyflake.color           = [UIColor redColor].CGColor;
    cloudyflake.lifetime        = 60.f;//生命周期
    cloudyflake.scale           = 0.5;
    cloudyflake.scaleRange      = 0.3;
    
    // 添加动画
    self.emitterLayer.emitterCells = @[cloudyflake];
}


@end
