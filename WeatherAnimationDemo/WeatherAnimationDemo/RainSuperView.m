//
//  RainSuperView.m
//  WeatherAnimationDemo
//
//  Created by 姚家褀 on 16/7/19.
//  Copyright © 2016年 Yaojiaqi. All rights reserved.
//

#import "RainSuperView.h"
#import "RainView.h"

@implementation RainSuperView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // 初始化设置
        //        self.backgroundColor = [UIColor yellowColor];
        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 375, 667)];
        imageView.image = [UIImage imageNamed:@"xiayu"];
        [self addSubview:imageView];
        
        
        RainView *rainView = [[RainView alloc] initWithFrame:CGRectMake(0, 0, 375, 600)];
        //    rainView.maskView            = alphaView2;
        [self addSubview:rainView];
        [rainView show];
    }
    return self;
}

@end
