//
//  JZOnSiteViewController.m
//  JinAnJian
//
//  Created by 金安健 on 16/8/24.
//  Copyright © 2016年 JinAnJian. All rights reserved.
//

#import "JZOnSiteViewController.h"

@interface JZOnSiteViewController ()

@end

@implementation JZOnSiteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
