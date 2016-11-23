//
//  SecondVC.m
//  WeatherAnimationDemo
//
//  Created by 姚家褀 on 16/7/18.
//  Copyright © 2016年 Yaojiaqi. All rights reserved.
//

#import "SecondVC.h"
#import "CAEmitterLayerView.h"
#import "SunnyView.h"
#import "SunnyView2.h"
@interface SecondVC ()

@end

@implementation SecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 375, 667)];
    imageView.image = [UIImage imageNamed:@"qingtian"];
    [self.view addSubview:imageView];
    
    SunnyView *rainView = [[SunnyView alloc] initWithFrame:self.viewIfLoaded.bounds];
    //    rainView.maskView            = alphaView2;
    [self.view addSubview:rainView];
    [rainView show];
    
    
    SunnyView2 *rainView2 = [[SunnyView2 alloc] initWithFrame:self.view.bounds];
    //    rainView.maskView            = alphaView2;
    [self.view addSubview:rainView2];

    [rainView2 show];
}


@end
