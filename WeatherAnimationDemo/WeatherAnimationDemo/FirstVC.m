
//
//  FirstVC.m
//  WeatherAnimationDemo
//
//  Created by 姚家褀 on 16/7/18.
//  Copyright © 2016年 Yaojiaqi. All rights reserved.
//

#import "FirstVC.h"
#import "RainSuperView.h"

@interface FirstVC ()

@end

@implementation FirstVC

- (void)viewDidLoad {
    [super viewDidLoad];

//    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 375, 667)];
//    imageView.image = [UIImage imageNamed:@"xiayu"];
//    [self.view addSubview:imageView];
    
//    RainView *rainView = [[RainView alloc] initWithFrame:CGRectMake(0, 0, 375, 600)];
//    //    rainView.maskView            = alphaView2;
//    [self.view addSubview:rainView];
//    [rainView show];
    
    RainSuperView *rainSuperView = [[RainSuperView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:rainSuperView];
}

@end
