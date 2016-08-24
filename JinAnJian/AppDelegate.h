//
//  AppDelegate.h
//  JinAnJian
//
//  Created by 金安健 on 16/8/23.
//  Copyright © 2016年 JinAnJian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, assign) double latitude;
@property (nonatomic, assign) double longitude;

@property (nonatomic, strong) UIImageView * advImage;
@property (nonatomic, strong) UITabBarController * rootTabbarCtr;


@end

