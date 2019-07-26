//
//  ViewController.m
//  视图控制器的使用
//
//  Created by Civet on 2019/7/26.
//  Copyright © 2019年 Civet. All rights reserved.
//

#import "ViewController.h"
#import "ViewController02.h"

@interface ViewController ()

@end

@implementation ViewController

//点击屏幕；调用此函数
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //创建视图控制器二
    ViewController02* vc = [[ViewController02 alloc]init];
    //P1:新的视图控制器对象
    //p2:使用动画切换动画效果
    //p3:切换结束后功能调用，不需要传nil值即可
    [self presentViewController:vc animated:YES completion:nil];
}


//第一次程序加载视图时调用
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor blueColor];
    NSLog(@"viewDidLoad! 第一次加载视图");
    
}




//当视图控制器的视图即将显示时，调用此函数
//视图分为即将显示，正在显示，已经被隐藏。
-(void)viewWillAppear:(BOOL)animated
{
    NSLog(@"视图即将显示");
    
}
-(void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"视图即将消失");
}
-(void)viewDidAppear:(BOOL)animated
{
    NSLog(@"视图已经显示");
}
-(void)viewDidDisappear:(BOOL)animated
{
    NSLog(@"视图已经消失");
}




//内存过低警告接受函数
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
