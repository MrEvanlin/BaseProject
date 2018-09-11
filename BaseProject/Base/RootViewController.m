//
//  RootViewController.m
//  BaseProject
//
//  Created by mv on 2018/9/11.
//  Copyright © 2018年 mv. All rights reserved.
//

#import "RootViewController.h"
#import "BaseNavigationViewController.h"
#import "HomeViewController.h"
#import "OtherViewController.h"
#import "MessageViewController.h"
#import "MineViewController.h"

@interface RootViewController (){
    
    HomeViewController *_homeVc;
    OtherViewController *_otherVc;
    MessageViewController *_messageVc;
    MineViewController *_mineVc;
    
}

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.backView=[[UIView alloc]initWithFrame:self.view.frame];
    self.backView.backgroundColor=[UIColor whiteColor];
    
    [self.tabBar insertSubview:self.backView atIndex:0];
    self.tabBar.opaque=YES;
    self.tabBar.tintColor=[UIColor redColor];
    //    添加所有子控制器
    
    [self setupChildController];
    self.selectedIndex = 0;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark 创建tabBar控制器

- (void)setupChildController{
    
    CGRect rect = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [[UIColor clearColor] CGColor]);
    CGContextFillRect(context, rect);
    UIImage *clearImg = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    NSMutableArray *childVCArray = [[NSMutableArray alloc] initWithCapacity:5];
    
    _homeVc = [HomeViewController new];
    BaseNavigationViewController *homeNavC =[[BaseNavigationViewController alloc]initWithRootViewController:_homeVc];
    [self setUpOneChildController:homeNavC image:[UIImage imageNamed:@"Home_inactive"] selectedImage:[[UIImage imageNamed:@"Home_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ]title:@"home"];
    [childVCArray addObject:homeNavC];
    
    
    _otherVc = [OtherViewController new];
    BaseNavigationViewController *otherNavC =[[BaseNavigationViewController alloc]initWithRootViewController:_otherVc];
    [self setUpOneChildController:otherNavC image:[UIImage imageNamed:@"Other_inactive"] selectedImage:[[UIImage imageNamed:@"Other_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ]title:@"other"];
    [childVCArray addObject:otherNavC];
    
    
    _messageVc = [MessageViewController new];
    BaseNavigationViewController *messageNavC =[[BaseNavigationViewController alloc]initWithRootViewController:_messageVc];
    [self setUpOneChildController:messageNavC image:[UIImage imageNamed:@"Message_inactive"] selectedImage:[[UIImage imageNamed:@"Message_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ]title:@"message"];
    [childVCArray addObject:messageNavC];
    
    
    _mineVc = [[MineViewController alloc] init];
    BaseNavigationViewController *mineNavC =[[BaseNavigationViewController alloc]initWithRootViewController:_mineVc];
    [self setUpOneChildController:mineNavC image:[UIImage imageNamed:@"Me_inactive"] selectedImage:[[UIImage imageNamed:@"Me_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] title:@"Me"];
    
    [childVCArray addObject:mineNavC];
    
}


-(void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
//    NSLog(@"item = %@",item);
}

#pragma mark 添加每一个子控制器的属性
- (void)setUpOneChildController: (UIViewController *)vc image: (UIImage *)image selectedImage: (UIImage *)selectedImage title: (NSString *)title{
    
    vc.tabBarItem.title = title;
    
    vc.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -3);
    vc.tabBarItem.image = image;
    vc.tabBarItem.selectedImage = selectedImage;
    
    [self addChildViewController:vc];
}


@end
