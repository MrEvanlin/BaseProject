//
//  BaseViewController.m
//  BaseProject
//
//  Created by mv on 2018/9/11.
//  Copyright © 2018年 mv. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    
    self.navigationController.navigationBar.hidden = YES;
    
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setEdgesForExtendedLayout:UIRectEdgeAll];
    
    [self creatNavView];
}

-(void)creatNavView{
    
    
    self.navigationBarView = [[UIView alloc] init];
    self.navigationBarView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.navigationBarView];
    [self.navigationBarView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(0);
        make.right.offset(0);
        make.top.offset(0);
        make.height.offset(SafeAreaTopHeight);
    }];
    
    //标题
    self.titleLable = [[UILabel alloc] init];
    self.titleLable.textColor = [UIColor blackColor];
    self.titleLable.textAlignment = NSTextAlignmentCenter;
    self.titleLable.font = [UIFont boldSystemFontOfSize:18];
    [self.navigationBarView addSubview:self.titleLable];
    [self.titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.bottom.offset(-10);
        make.height.offset(20);
        make.centerX.offset(0);
    }];
    
    //返回按钮
    self.leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.leftButton.backgroundColor = [UIColor clearColor];
    [self.leftButton setBackgroundImage:[UIImage imageNamed:@"nav_back"] forState:UIControlStateNormal];
    [self.leftButton setEnlargeEdgeWithTop:20 right:30 bottom:20 left:30];
    [self.navigationBarView addSubview:self.leftButton];
    [self.leftButton mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.offset(15);
        make.centerY.equalTo(self.titleLable.mas_centerY).offset(0);
        //        make.top.offset(20 + 13);
    }];
    
    UIView *tapView = [UIView new];
    [self.navigationBarView addSubview:tapView];
    [tapView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.offset(10);
        make.centerY.offset(0);
        make.height.offset(40);
        make.width.offset(50);
        
    }];
    
    tapView.userInteractionEnabled = YES;
    tapView.backgroundColor = [UIColor clearColor];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(leftButtonClick)];
    [tapView addGestureRecognizer:tap];
    
    
    self.rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.rightButton.backgroundColor = [UIColor clearColor];
    [self.rightButton addTarget:self action:@selector(rightButtonClick) forControlEvents:UIControlEventTouchUpInside];
    self.rightButton.titleLabel.font = [UIFont systemFontOfSize:15];
    [self.rightButton setEnlargeEdgeWithTop:10 right:15 bottom:10 left:15];
    [self.navigationBarView addSubview:self.rightButton];
    [self.rightButton mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.right.offset(-15);
        make.height.offset(18);
        make.centerY.equalTo(self.titleLable.mas_centerY).offset(0);
    }];
}

#pragma mark - 点击事件
-(void)rightButtonClick{
    
    
}


- (void)leftButtonClick{
    [self.navigationController popViewControllerAnimated:YES];
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
    //    return UIStatusBarStyleDefault;
}


// 隐藏tabbar
- (void)hideTabBar {
    if (self.tabBarController.tabBar.hidden == YES) {
        return;
    }
    UIView *contentView;
    if ( [[self.tabBarController.view.subviews objectAtIndex:0] isKindOfClass:[UITabBar class]] )
        contentView = [self.tabBarController.view.subviews objectAtIndex:1];
    else
        contentView = [self.tabBarController.view.subviews objectAtIndex:0];
    contentView.frame = CGRectMake(contentView.bounds.origin.x,  contentView.bounds.origin.y,  contentView.bounds.size.width, contentView.bounds.size.height + self.tabBarController.tabBar.frame.size.height);
    self.tabBarController.tabBar.hidden = YES;
    
}

// 显示tabbar
- (void)showTabBar
{
    if (self.tabBarController.tabBar.hidden == NO)
    {
        return;
    }
    UIView *contentView;
    if ([[self.tabBarController.view.subviews objectAtIndex:0] isKindOfClass:[UITabBar class]])
        contentView = [self.tabBarController.view.subviews objectAtIndex:1];
    else
        contentView = [self.tabBarController.view.subviews objectAtIndex:0];
    contentView.frame = CGRectMake(contentView.bounds.origin.x, contentView.bounds.origin.y,  contentView.bounds.size.width, contentView.bounds.size.height - self.tabBarController.tabBar.frame.size.height);
    self.tabBarController.tabBar.hidden = NO;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
