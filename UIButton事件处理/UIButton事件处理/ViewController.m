//
//  ViewController.m
//  UIButton事件处理
//
//  Created by Civet on 2019/7/25.
//  Copyright © 2019年 Civet. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void) createBtn
{
    //创建圆角按钮
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(100, 100, 200, 200);
    [btn setTitle:@"按钮1" forState:UIControlStateNormal];
    //香按钮添加事件函数
    //P1:谁来实现这个函数，实现的对象就是谁； p2:函数 p3:事件处理类型
    //UIControlEventTouchUpInside  手指离开且手指位置中按钮范围内
    //UIControlEventTouchDown   当手指触碰到屏幕时
    [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    [btn addTarget:self action:@selector(touchDown) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn];
    
    //按钮2
    UIButton* btn02 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn02.frame = CGRectMake(200, 300, 80, 40);
    [btn02 setTitle:@"按钮2" forState:UIControlStateNormal];
    [btn02 addTarget:self action:@selector(pressBtn: ) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn02];
    
    //设置按钮的标记值
    btn.tag = 101;
    btn02.tag = 102;
    
}
 //参数是调用此函数的按钮本身 通过参数来区分是按钮1还是按钮2
-(void) pressBtn:(UIButton*) btn
{
    if (btn.tag == 101) {
        
        NSLog(@"按钮1被按下");
    }
    if (btn.tag == 102) {
        
        NSLog(@"按钮2被按下");
    }
}
-(void) touchDown
{
    NSLog(@"按钮被触碰");
}
-(void) pressBtn02
{
    NSLog(@"按钮2被触发");
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createBtn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
