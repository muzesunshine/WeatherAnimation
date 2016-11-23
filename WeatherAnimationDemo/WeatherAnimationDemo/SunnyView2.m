//
//  SunnyView2.m
//  WeatherAnimationDemo
//
//  Created by 姚家褀 on 16/7/18.
//  Copyright © 2016年 Yaojiaqi. All rights reserved.
//

#import "SunnyView2.h"

@implementation SunnyView2

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
    self.emitterLayer.emitterPosition = CGPointMake(-1000, self.bounds.size.height / 2 + 170);//发射位置
}

- (void)show {
    // 配置
    CAEmitterCell *cloudyflake  = [CAEmitterCell emitterCell];
    cloudyflake.birthRate       = 0.1f;//产生率
//    cloudyflake.speed           = 5;//
    cloudyflake.xAcceleration   = 0.5;//Y轴加速度
    cloudyflake.contents        = (__bridge id)([UIImage imageNamed:@"yun2"].CGImage);//图片
    cloudyflake.lifetime        = 120;//生命周期
//    cloudyflake.scale           = 0.5;
//    cloudyflake.scaleRange      = 0.3;
    
//    cloudyflake.color			= [UIColor whiteColor].CGColor;
    
    
    // 添加动画
    self.emitterLayer.emitterCells = @[cloudyflake ];
}


@end
