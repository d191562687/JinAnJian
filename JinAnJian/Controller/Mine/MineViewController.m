//
//  MineViewController.m
//  JinAnJian
//
//  Created by 金安健 on 16/8/24.
//  Copyright © 2016年 JinAnJian. All rights reserved.
//

#import "MineViewController.h"
#import "ZXPAutoLayout.h"


@interface MineViewController ()

@end

@implementation MineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];

    [self myAction];
    
}


-(void)myAction {
    //添加左按钮
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc]
                                   initWithTitle:@"返回"
                                   style:UIBarButtonItemStylePlain
                                   target:self
                                   action:@selector(myAction)];
    [self.navigationItem setLeftBarButtonItem:leftButton];
    
    //设置Navigation Bar颜色
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:(50.0/255.0) green:(50.0 / 255.0) blue:(50.0 / 255.0) alpha:1];
    
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
