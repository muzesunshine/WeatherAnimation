//
//  SunnyView.m
//  WeatherAnimationDemo
//
//  Created by 姚家褀 on 16/7/18.
//  Copyright © 2016年 Yaojiaqi. All rights reserved.
//

#import "SunnyView.h"

@implementation SunnyView

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
    self.emitterLayer.emitterPosition = CGPointMake(-2000, self.bounds.size.height / 2 - 180);//发射位置
}

- (void)show {
    // 配置
    CAEmitterCell *cloudyflake  = [CAEmitterCell emitterCell];
    cloudyflake.birthRate       = 1;//产生率
    cloudyflake.speed           = 0.05;//
//    cloudyflake.velocity        = 1.f;//速度值
    cloudyflake.xAcceleration   = 0.4;//Y轴加速度
    cloudyflake.contents        = (__bridge id)([UIImage imageNamed:@"yun5"].CGImage);//图片
    cloudyflake.color           = [UIColor redColor].CGColor;
    cloudyflake.lifetime        = 120;//生命周期
//    cloudyflake.scale           = 0.5;
//    cloudyflake.scaleRange      = 0.3;
    
    cloudyflake.color			= [UIColor whiteColor].CGColor;
    
//    CAEmitterCell *cloudyflake2  = [CAEmitterCell emitterCell];
//    cloudyflake2.birthRate       = 0.08f;//产生率
//    cloudyflake2.speed           = 2.f;//
//    cloudyflake2.velocity        = 3.f;//速度值
//    cloudyflake2.xAcceleration   = 1;//Y轴加速度
//    cloudyflake2.contents        = (__bridge id)([UIImage imageNamed:@"yun2"].CGImage);//图片
//    cloudyflake2.color           = [UIColor redColor].CGColor;
//    cloudyflake2.lifetime        = 120;//生命周期
//    cloudyflake2.scale           = 0.5;
//    cloudyflake2.scaleRange      = 0.3;
//    
//    cloudyflake2.color			= [UIColor whiteColor].CGColor;

    
    // 添加动画
    self.emitterLayer.emitterCells = @[cloudyflake ];
}



@end
