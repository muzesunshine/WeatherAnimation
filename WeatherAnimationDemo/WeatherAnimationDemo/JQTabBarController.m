//
//  JQTabBarController.m
//  Door
//
//  Created by 姚家褀 on 16/6/30.
//  Copyright © 2016年 Yaojiaqi. All rights reserved.
//

#import "JQTabBarController.h"
#import "FirstVC.h"
#import "SecondVC.h"
#import "ThirdVC.h"

//#import "UserCenterVC.h"

@interface JQTabBarController ()

@end

@implementation JQTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect frame = CGRectMake(0, 0, 320, 49);
    UIView *v = [[UIView alloc] initWithFrame:frame];
    UIImage *img = [UIImage imageNamed:@"图片名"];
    UIColor *color = [[UIColor alloc] initWithPatternImage:img];
    v.backgroundColor = color;
    [self.tabBar insertSubview:v atIndex:0];
    self.tabBar.opaque = YES;
    
    [self setupTabBarItem];
    [self addAllChildVC];
}

- (void)setupTabBarItem{
    self.tabBar.barTintColor = [UIColor whiteColor];
    self.tabBar.translucent = NO;
    // 设置TabBarItem文字的偏移量
    
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -2)];
    // 设置文字的颜色和大小
//    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:kBlackColor, NSFontAttributeName:[UIFont systemFontOfSize:11]} forState:UIControlStateNormal];
//    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:kBlueColor, NSFontAttributeName:[UIFont systemFontOfSize:11]} forState:UIControlStateSelected];
    
    
    
}
- (void)addAllChildVC{
//    HomeVC *homeVC = [[HomeVC alloc]init];
//    [self addOneChildVC:homeVC title:@"首页" image:@"home_normal" selectImage:@"home_select"];
//    UserCenterVC *usercenterVC = [[UserCenterVC alloc]init];
//    [self addOneChildVC:usercenterVC title:@"设备" image:@"mine_normal" selectImage:@"mine_select"];
    FirstVC *firstVC = [[FirstVC alloc]init];
    [self addOneChildVC:firstVC title:@"下雨" image:nil selectImage:nil];
    SecondVC *secondVC = [[SecondVC alloc]init];
    [self addOneChildVC:secondVC title:@"晴天" image:nil selectImage:nil];
    ThirdVC *thirdVC = [[ThirdVC alloc]init];
    [self addOneChildVC:thirdVC title:@"多云" image:nil selectImage:nil];
    
//   
}
/**
 *  添加一个导航控制器
 *
 *  @param childVC     控制器
 *  @param title       控制器的名称
 *  @param image       图片
 *  @param selectImage 点击后的图片
 */
- (void)addOneChildVC:(UIViewController *)childVC title:(NSString *)title image:(NSString *)image selectImage:(NSString *)selectImage{
    //设置标题
    childVC.title = title;
    //设置图标
    UIImage *image2 = [UIImage imageNamed:image];
    image2 = [image2 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childVC.tabBarItem.image = image2;
    
    //设置选中的图标
    UIImage *image3 = [UIImage imageNamed:selectImage];
    image3 = [image3 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childVC.tabBarItem.selectedImage = image3;
    
    UINavigationController *jqNVC = [[UINavigationController alloc]initWithRootViewController:childVC];
    
    [self addChildViewController:jqNVC];
}


@end
