//
//  BaseNavigationViewController.m
//  BaseProject
//
//  Created by mv on 2018/9/11.
//  Copyright © 2018年 mv. All rights reserved.
//

#import "BaseNavigationViewController.h"

@interface BaseNavigationViewController ()

@end

@implementation BaseNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationBar setBarTintColor:[UIColor blackColor]];
    self.navigationBar.translucent = YES;
    self.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationBar setBarStyle:UIBarStyleBlack];
    [self.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:18]}];}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
