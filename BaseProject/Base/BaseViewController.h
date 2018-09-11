//
//  BaseViewController.h
//  BaseProject
//
//  Created by mv on 2018/9/11.
//  Copyright © 2018年 mv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

@property (nonatomic, strong) UIView *navigationBarView;
@property (nonatomic, strong) UILabel *titleLable; //!< 标题
@property (nonatomic, strong) UIView *navView;  //!< 背景
@property (nonatomic, strong) UIButton *leftButton; //!< 左边按钮
@property (nonatomic, strong) UILabel *navBackLb; //!<左边label 看需要
@property(nonatomic ,strong) UIButton *rightButton; //!< 右边按钮

- (void)hideTabBar;  //!<隐藏tabbar
- (void)showTabBar;   //!<显示tabbar


-(void)leftButtonClick;

-(void)rightButtonClick;

@end
