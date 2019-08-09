//
//  ViewController.h
//  等待提示器和警告对话框
//
//  Created by Civet on 2019/7/29.
//  Copyright © 2019年 Civet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate>

{
    UIAlertView* _alterView;
    
    UIActivityIndicatorView* _activityIndicatorView ;
}
@property (retain,nonatomic) UIAlertView* alertView;
@property (retain,nonatomic) UIActivityIndicatorView* activityIndicatorView;
@end

