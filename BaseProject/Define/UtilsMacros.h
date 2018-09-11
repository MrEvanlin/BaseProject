//
//  UtilsMacros.h
//  BaseProject
//
//  Created by mv on 2018/9/11.
//  Copyright © 2018年 mv. All rights reserved.
//

#ifndef UtilsMacros_h
#define UtilsMacros_h


//获取屏幕宽高
#define KMainScreenWidth [UIScreen mainScreen].bounds.size.width
#define KMainScreenHeight [UIScreen mainScreen].bounds.size.height


//获取视图宽高
#define KViewWidth(a) (a).frame.size.width
#define KViewHeiht(a) (a).frame.size.height
#define KViewX(a) (a).frame.origin.x
#define KViewY(a) (a).frame.origin.y

//适配
#define IPHONE_FIT_WIDTH KMainScreenWidth/375.0
#define IPHONE_FIT_HEIGHT KMainScreenHeight/667.0
#define isIPHONE5 (KMainScreenWidth == 320)

//适配iPhone X头部
#define SafeAreaTopHeight (KMainScreenHeight == 812.0 ? 88 : 64)
//适配iPhone 底部
#define SafeAreaBottomHeight (KMainScreenHeight == 812.0 ? 34 : 0)

/// 判断是iPhoneX 的宏
#define is_iPhoneX [UIScreen mainScreen].bounds.size.width == 375.0f && [UIScreen mainScreen].bounds.size.height == 812.0f

/********* 获取字符串长度*********/
#define Attributes(font) @{NSFontAttributeName:[UIFont systemFontOfSize:font],}

#define LabelSizeWithStr(str,CGSizeMake,myAttributes) [str boundingRectWithSize:CGSizeMake options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingTruncatesLastVisibleLine attributes:myAttributes context:nil].size;

#endif /* UtilsMacros_h */
