//
//  HomeViewController.m
//  JinAnJian
//
//  Created by 金安健 on 16/8/24.
//  Copyright © 2016年 JinAnJian. All rights reserved.
//

#import "HomeViewController.h"
#import "Public.h"
#import "ZXPAutoLayout.h"
#import <objc/runtime.h>

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    [self Layout];
    
}

-(void)Layout {
    ZXPStackView *stackView = [ZXPStackView new];
    [self.view addSubview:stackView];
    stackView.backgroundColor = [UIColor whiteColor];
    
    //只需要设置stackView的宽高和位置即可
    [stackView zxp_addConstraints:^(ZXPAutoLayoutMaker *layout) {
        
        layout.topSpace(65);
        
        /*
         左边距等同于blueView的左边距
         第二个参数是距离的值, 如果为0就代表左边距和blueview相等
         如果不为0,则先相等于blueview的距离,然后在加上第二参数的距离
         */
        layout.leftSpace(5);
        
        /*
         宽度等同于bluewView
         multiplier是倍数, 可选属性,如果不写此属性宽度就是等同于blueview
         如果写了此属性,如下示例, 则宽度等同于blueview的 0.5 倍
         */
        layout.widthEqualTo(self.view,0).multiplier(0.5);
        layout.bottomSpace(60); //设置高度
    }];
    
    UIView *view1 = [UIView new];
    //圆角设置
    view1.layer.cornerRadius = 8;
    view1.layer.masksToBounds = YES;
    //给图层添加一个有色边框
    view1.layer.borderWidth = 2;
    view1.layer.borderColor = [[UIColor colorWithRed:0.50 green:0.50 blue:0.50 alpha:1] CGColor];
    [stackView addSubview:view1];
    
    UIImage *pic1 = [ UIImage imageNamed:@"companysearch@1x.png"];
    UIImageView *imageView1   = [[UIImageView alloc] initWithFrame:CGRectMake(50,45, 90, 80 )];
    [imageView1 setImage:pic1];
    [imageView1 setContentScaleFactor:[[UIScreen mainScreen] scale]];
    imageView1.contentMode =  UIViewContentModeScaleAspectFit;
    imageView1.clipsToBounds  = YES;
    [view1 addSubview:imageView1];
    
    UILabel * Label1 = [[UILabel alloc]initWithFrame:CGRectMake(45, 100, 200, 100)];
    Label1.text = @"企业信息查询";
    [view1 addSubview:Label1];
    
    

    
    
    UIView *view2 = [UIView new];
    //圆角设置
    view2.layer.cornerRadius = 8;
    view2.layer.masksToBounds = YES;
    //给图层添加一个有色边框
    view2.layer.borderWidth = 2;
    view2.layer.borderColor = [[UIColor colorWithRed:0.50 green:0.50 blue:0.50 alpha:1] CGColor];
    [stackView addSubview:view2];
    view2.backgroundColor = [UIColor whiteColor];
    
    UIImage *pic2 = [ UIImage imageNamed:@"Location.png"];
    UIImageView *imageView2   = [[UIImageView alloc] initWithFrame:CGRectMake(45,45, 90, 80 )];
    [imageView2 setImage:pic2];
    [imageView2 setContentScaleFactor:[[UIScreen mainScreen] scale]];
    imageView2.contentMode =  UIViewContentModeScaleAspectFit;
    imageView2.clipsToBounds  = YES;
    [view2 addSubview:imageView2];
    
    UILabel * Label2 = [[UILabel alloc]initWithFrame:CGRectMake(60, 100, 200, 100)];
    Label2.text = @"地图定位";
    [view2 addSubview:Label2];
    
    
    
    
    UIView *view3 = [UIView new];
    //圆角设置
    view3.layer.cornerRadius = 8;
    view3.layer.masksToBounds = YES;
    //给图层添加一个有色边框
    view3.layer.borderWidth = 2;
    view3.layer.borderColor = [[UIColor colorWithRed:0.50 green:0.50 blue:0.50 alpha:1] CGColor];
    [stackView addSubview:view3];
    view3.backgroundColor = [UIColor whiteColor];
    
    UIImage *pic3 = [ UIImage imageNamed:@"反馈.png"];
    UIImageView *imageView3   = [[UIImageView alloc] initWithFrame:CGRectMake(50,45, 90, 80 )];
    [imageView3 setImage:pic3];
    [imageView3 setContentScaleFactor:[[UIScreen mainScreen] scale]];
    imageView3.contentMode =  UIViewContentModeScaleAspectFit;
    imageView3.clipsToBounds  = YES;
    [view3 addSubview:imageView3];
    
    UILabel * Label3 = [[UILabel alloc]initWithFrame:CGRectMake(40, 100, 200, 100)];
    Label3.text = @"药食风险反馈";
    [view3 addSubview:Label3];
    
    
    
    //stack的内边距
    stackView.padding = UIEdgeInsetsMake(10, 10, 10,10);
    //view直接的距离
    stackView.space = 10;
    //调用此方法会给subviews自动添加约束条件,进行等宽或者等高排列
    [stackView layoutWithType:ZXPStackViewTypeVertical];
    //----------------------------------------------------------------------------
    ZXPStackView *stackView1 = [ZXPStackView new];
    [self.view addSubview:stackView1];
    stackView1.backgroundColor = [UIColor whiteColor];
    
    //只需要设置stackView的宽高和位置即可
    [stackView1 zxp_addConstraints:^(ZXPAutoLayoutMaker *layout) {
        
        layout.topSpace(65);
        
        /*
         左边距等同于blueView的左边距
         第二个参数是距离的值, 如果为0就代表左边距和blueview相等
         如果不为0,则先相等于blueview的距离,然后在加上第二参数的距离
         */
        layout.leftSpaceByView(self.view,0).multiplier(0.5);
        
        /*
         宽度等同于bluewView
         multiplier是倍数, 可选属性,如果不写此属性宽度就是等同于blueview
         如果写了此属性,如下示例, 则宽度等同于blueview的 0.5 倍
         */
        layout.widthEqualTo(self.view,0).multiplier(0.5);
        layout.bottomSpace(60); //设置高度
    }];
    
    UIView *view11 = [UIView new];
    //圆角设置
    view11.layer.cornerRadius = 8;
    view11.layer.masksToBounds = YES;
    //给图层添加一个有色边框
    view11.layer.borderWidth = 2;
    view11.layer.borderColor = [[UIColor colorWithRed:0.50 green:0.50 blue:0.50 alpha:1] CGColor];
    [stackView1 addSubview:view11];
    view11.backgroundColor = [UIColor whiteColor];
    
    UIImage *pic11 = [ UIImage imageNamed:@"四品一械查询.png"];
    UIImageView *imageView11   = [[UIImageView alloc] initWithFrame:CGRectMake(50,45, 90, 80 )];
    [imageView11 setImage:pic11];
    [imageView11 setContentScaleFactor:[[UIScreen mainScreen] scale]];
    imageView11.contentMode =  UIViewContentModeScaleAspectFit;
    imageView11.clipsToBounds  = YES;
    [view11 addSubview:imageView11];
    
    UILabel * Label11 = [[UILabel alloc]initWithFrame:CGRectMake(40, 100, 200, 100)];
    Label11.text = @"四品一械查询";
    [view11 addSubview:Label11];
    
    
    
    
    UIView *view22 = [UIView new];
    //圆角设置
    view22.layer.cornerRadius = 8;
    view22.layer.masksToBounds = YES;
    //给图层添加一个有色边框
    view22.layer.borderWidth = 2;
    view22.layer.borderColor = [[UIColor colorWithRed:0.50 green:0.50 blue:0.50 alpha:1] CGColor];
    [stackView1 addSubview:view22];
    view22.backgroundColor = [UIColor whiteColor];
    
    UIImage *pic22 = [ UIImage imageNamed:@"tips.png"];
    UIImageView *imageView22   = [[UIImageView alloc] initWithFrame:CGRectMake(45,45, 90, 80 )];
    [imageView22 setImage:pic22];
    [imageView22 setContentScaleFactor:[[UIScreen mainScreen] scale]];
    imageView22.contentMode =  UIViewContentModeScaleAspectFit;
    imageView22.clipsToBounds  = YES;
    [view22 addSubview:imageView22];
    
    UILabel * Label22 = [[UILabel alloc]initWithFrame:CGRectMake(75, 100, 200, 100)];
    Label22.text = @"贴士";
    [view22 addSubview:Label22];

    
    
    
    UIView *view33 = [UIView new];
    //圆角设置
    view33.layer.cornerRadius = 8;
    view33.layer.masksToBounds = YES;
    //给图层添加一个有色边框
    view33.layer.borderWidth = 2;
    view33.layer.borderColor = [[UIColor colorWithRed:0.50 green:0.50 blue:0.50 alpha:1] CGColor];
    [stackView1 addSubview:view33];
    view33.backgroundColor = [UIColor whiteColor];
    
    UIImage *pic33 = [ UIImage imageNamed:@"cloud@2x@2x.png"];
    UIImageView *imageView33   = [[UIImageView alloc] initWithFrame:CGRectMake(45,45, 90, 80 )];
    [imageView33 setImage:pic33];
    [imageView33 setContentScaleFactor:[[UIScreen mainScreen] scale]];
    imageView33.contentMode =  UIViewContentModeScaleAspectFit;
    imageView33.clipsToBounds  = YES;
    [view33 addSubview:imageView33];
    
    UILabel * Label33 = [[UILabel alloc]initWithFrame:CGRectMake(65, 100, 200, 100)];
    Label33.text = @"云助手";
    [view33 addSubview:Label33];

    
    
    
    //stack的内边距
    stackView1.padding = UIEdgeInsetsMake(10, 10, 10,10);
    //view直接的距离
    stackView1.space = 10;
    //调用此方法会给subviews自动添加约束条件,进行等宽或者等高排列
    [stackView1 layoutWithType:ZXPStackViewTypeVertical];
    
}


-(void)setNav{
    UIView *backView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, screen_width, 64)];
    backView.backgroundColor = navigationBarColor;
    [self.view addSubview:backView];
    //城市
    UIButton *cityBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    cityBtn.frame = CGRectMake(10, 30, 40, 25);
    cityBtn.font = [UIFont systemFontOfSize:15];
    [cityBtn setTitle:@"北京" forState:UIControlStateNormal];
    [backView addSubview:cityBtn];
    //
    UIImageView *arrowImage = [[UIImageView alloc] initWithFrame:CGRectMake(CGRectGetMaxX(cityBtn.frame), 38, 13, 10)];
    [arrowImage setImage:[UIImage imageNamed:@"icon_homepage_downArrow"]];
    [backView addSubview:arrowImage];
    //地图
    UIButton *mapBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    mapBtn.frame = CGRectMake(screen_width-42, 30, 42, 30);
    [mapBtn setImage:[UIImage imageNamed:@"icon_homepage_map_old"] forState:UIControlStateNormal];
    [mapBtn addTarget:self action:@selector(OnMapBtnTap:) forControlEvents:UIControlEventTouchUpInside];
    [backView addSubview:mapBtn];
    

    
    UILabel *placeHolderLabel = [[UILabel alloc] initWithFrame:CGRectMake(25, 0, 150, 25)];
    placeHolderLabel.font = [UIFont boldSystemFontOfSize:13];
    //    placeHolderLabel.text = @"请输入商家、品类、商圈";
    placeHolderLabel.text = @"鲁总专享版";
    placeHolderLabel.textColor = [UIColor whiteColor];
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
