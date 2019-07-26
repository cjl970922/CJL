//
//  ViewController.m
//  Xcode Project
//
//  Created by Civet on 2019/7/24.
//  Copyright © 2019年 Civet. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//创建一个UI控件函数
-(void) createUI
{
    //定义并且创建一个UIlabel对象（标签）
    UILabel* label = [[UILabel alloc] init];//
    
    label.text = @"这是一个label标签！";
    label.frame = CGRectMake(100, 100, 160, 100);//位置
    label.backgroundColor = [UIColor redColor];//背景颜色
    [self.view addSubview:label];//将label显示到屏幕上
    label.font = [UIFont systemFontOfSize:18];//设置字体大小
    label.textColor = [UIColor blueColor];//文字颜色
    label.shadowColor = [UIColor grayColor];//阴影颜色
    label.shadowOffset = CGSizeMake(5, 5);//阴影位置
    label.textAlignment = NSTextAlignmentCenter;// 文字对其方式 默认靠左
    label.numberOfLines = 0; //文字显示行数，默认为1，0自动调整
}
//创建按钮函数
-(void) createUIRectButton
{   //创建一个btn对象，根据类型来创建btn,   圆角类型UIButtonTypeRoundedRect
    //通过类方法创建buttonWithType:  类名+方法名
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
   //位置
    btn.frame = CGRectMake(100, 300, 100, 60);
    //  按钮上的文字——————————————-   按钮状态
    [btn setTitle:@"按钮1" forState:UIControlStateNormal];
    [btn setTitle:@"按下去了哦" forState:UIControlStateHighlighted];
    //按钮背景颜色
    btn.backgroundColor = [UIColor grayColor];
    //设置文字显示的颜色
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateHighlighted];
    //设置按钮的风格颜色 优先级比title要低
    [btn setTintColor:[UIColor whiteColor]];
    //titlelable: UIlable 控件 设置字体大小
    btn.titleLabel.font = [UIFont systemFontOfSize:16];
    
    //添加到视图中并显示
    [self.view addSubview:btn];
    
}

-(void) createImageBtn
{
    UIButton* btnImage = [UIButton buttonWithType:UIButtonTypeCustom];
    btnImage.frame = CGRectMake(100, 400, 100, 100);
    UIImage* icon01 = [UIImage imageNamed:@"btn01.jpg"];
    UIImage* icon02 = [UIImage imageNamed:@"btn02.jpg"];
    [btnImage setImage:icon01 forState:UIControlStateNormal];
    [btnImage setImage:icon02 forState:UIControlStateHighlighted];
    [self.view addSubview:btnImage];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   //调用创建的函数
    [self createUI];
    [self createUIRectButton];
    [self createImageBtn];
    //-------------------------——————————————————————————-
    NSLog(@"my first coding");
          self.view.backgroundColor = [UIColor whiteColor];
    //————————————————————————————————————————————————————————
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
