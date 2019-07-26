//
//  ViewController.m
//  UIView
//
//  Created by Civet on 2019/7/25.
//  Copyright © 2019年 Civet. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //++++++++++++++++++++++++++++++++++++++++++++++++
    // UIView 视图对象 有层级关系
    //是所有屏幕上能看到的对象的父类
    UIView* view = [[UIView alloc] init];
    view.frame = CGRectMake(0, 0, 50, 50);
    view.backgroundColor = [UIColor blueColor];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view];
    
   view.hidden = NO;  //默认值为no
    //view.alpha= 1;
    //alpha= 0 透明
    //alpha= 0.5 半透明
    view.opaque = NO;  //是否透明 no 不透明
    //[view removeFromSuperview];  // 将自己从父亲视图删除；
    //++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    
    
    //哪一个视图先被添加到父亲视图中，就先绘制哪一个视图
    UIView* view01 = [[UIView alloc] init];
    view01.frame = CGRectMake(100, 100, 150, 150);
    view01.backgroundColor = [UIColor blueColor];
    UIView* view02 = [[UIView alloc] init];
    view02.frame = CGRectMake(125, 125, 150, 150);
    view02.backgroundColor = [UIColor orangeColor];
    UIView* view03 = [[UIView alloc]init];
    view03.frame = CGRectMake(150, 150, 150, 150);
    view03.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view01];
    [self.view addSubview:view02];
    [self.view addSubview:view03];
  
    //将视图移到最前面显示
  [self.view bringSubviewToFront:view01];
    //将视图放到最后面显示
    [self.view sendSubviewToBack:view03];
    
    //subviews管理所有的self.view的子视图的数组
    UIView* viewFront = self.view.subviews[2];
    UIView* viewBack = self.view.subviews[0];
    if (viewBack == view03) {//将视图移动了的
        NSLog(@"相等");
    }
    NSLog(@"my first coding");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}


@end
