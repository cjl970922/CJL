//
//  ViewController02.m
//  视图控制器的使用
//
//  Created by Civet on 2019/7/26.
//  Copyright © 2019年 Civet. All rights reserved.
//

#import "ViewController02.h"

@interface ViewController02 ()

@end

@implementation ViewController02

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor orangeColor];
}

//点击屏幕调用
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //使当前控制器消失
    //是否有动画效果， 结束后是否调用功能block块操作
    [self dismissViewControllerAnimated:YES completion:nil];
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
