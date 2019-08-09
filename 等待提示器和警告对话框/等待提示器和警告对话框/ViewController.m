//
//  ViewController.m
//  等待提示器和警告对话框
//
//  Created by Civet on 2019/7/29.
//  Copyright © 2019年 Civet. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize alertView = _alertView;
@synthesize activityIndicatorView = _activityIndicatorView;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //一次性创建两个两个按钮
    for (int i = 0; i<2; i++) {
        UIButton * btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        
        btn.frame = CGRectMake(100, 100+100*i, 100, 40);
        
            if (i == 0)
            {
                [btn setTitle:@"警告提示框" forState:UIControlStateNormal];
            }
            else if (i == 1)
            {
                [btn setTitle:@"等待指示器" forState:UIControlStateNormal];
            }
        
        btn.tag  = 101+i;
        
        [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:btn];
    }
} 

//两个按钮共用一个函数
-(void) pressBtn:(UIButton*) btn
{
    if (btn.tag == 101 ) {
        
        //创建警告对话框 标题 内容  处理按钮事件的对象 取消按钮文字 其他按钮文字 结束。。。
        _alertView = [[UIAlertView alloc] initWithTitle:@"警告" message:@"你的手机电量过低" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"OK",@"11",@"22", nil];
        
        [_alertView show]; //显示对话框
    }
    
    else if (btn.tag == 102)
    {
        //创建等待提示器
        _activityIndicatorView = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(100, 300, 80, 80)];
        
        //设置风格 三种 小灰，小白，大白
        _activityIndicatorView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
        
        [self.view addSubview:_activityIndicatorView];
        
       //启动动画并显示
        [_activityIndicatorView startAnimating];
      //  [_activityIndicatorView stopAnimating];   停止动画并隐藏
    }
}
//点击对话框的按钮时，调用此函数
//P1:对话框对象本身， P2: 按钮的索引
-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"index = %d\n",buttonIndex);
}

-(void) alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex
{
    NSLog(@"即将消失");
}

-(void) alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    NSLog(@"已经消失");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
