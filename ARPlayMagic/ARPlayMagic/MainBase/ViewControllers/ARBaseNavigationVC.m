//
//  ARBaseNavigationVC.m
//  ARPlayMagic
//
//  Created by zhangyazhou on 2019/7/18.
//  Copyright © 2019 zhifu360. All rights reserved.
//

#import "ARBaseNavigationVC.h"
#import "ARTabBarVC.h"

@interface ARBaseNavigationVC ()<UINavigationBarDelegate>

@end

@implementation ARBaseNavigationVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //New behavior on iOS 7. Default is YES.
    [self.navigationBar setTranslucent:NO];
    
    //Setting the UINavigationBar's backgroundImag
    //if the default background image is used, the default shadow image will be used
    [self.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    [self.navigationBar setShadowImage:[[UIImage alloc]init]];
//    [self.navigationBar setBackgroundColor:[UIColor blueColor]];
    //Setting the UINavigationBar's background when ContainedIn...

    self.interactivePopGestureRecognizer.delegate = self;
}


- (void)setDefaultNavigationBarAppearance {
    
    //Setting the UIApplication's statusBarStyle
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    //Setting the UINavigationBar's title
    [self.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor whiteColor]}];
    
    //behaves as described for the tintColor property added to UIView
    [self.navigationBar setTintColor:[UIColor whiteColor]];
    
    //Setting the UINavigationBar's background
    [self.navigationBar setBarTintColor:[UIColor whiteColor]];
    
    //Setting the UINavigationBar's back indicator image
    //These properties must both be set if you want to customize the back indicator image
   // [self.navigationBar setBackIndicatorImage:[UIImage imageNamed:kNavBtn_back_custom]];
   // [self.navigationBar setBackIndicatorTransitionMaskImage:[UIImage imageNamed:kNavBtn_back_custom]];
    
    //Setting the UIBarButtonItem's title
    [[UIBarButtonItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor whiteColor]} forState:UIControlStateNormal];
}



- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    viewController.hidesBottomBarWhenPushed =(self.childViewControllers.count > 0)?YES:NO;
    [super pushViewController:viewController animated:animated];
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
