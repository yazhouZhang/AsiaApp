//
//  BaseVC.m
//  ARPlayMagic
//
//  Created by zhangyazhou on 2019/7/18.
//  Copyright © 2019 zhifu360. All rights reserved.
//

#import "ARBaseVC.h"

@interface ARBaseVC ()

@end

@implementation ARBaseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:29.0],NSForegroundColorAttributeName:[UIColor whiteColor]}];
    self.navigationController.interactivePopGestureRecognizer.enabled = YES;
    self.edgesForExtendedLayout = UIRectEdgeNone;
     [self setLeftNavigationItem:NO];
}

- (void)setLeftNavigationItem:(BOOL)hidden {
    if (!hidden) {
        UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        
        UIButton *button = [[UIButton alloc] initWithFrame:contentView.bounds];
        [button setImage:[UIImage imageNamed:@"nav_icon_back"] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"nav_icon_back"] forState:UIControlStateHighlighted];
        [button setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 20)];
        [contentView addSubview:button];
        
        [button addTarget:self action:@selector(backPage) forControlEvents:UIControlEventTouchUpInside];
        
        UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithCustomView:contentView];
        self.navigationItem.leftBarButtonItem = barButtonItem;
    } else {
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:[[UIView alloc] init]];
    }
}

- (DefaultView *)defaultView {
    if (!_defaultView) {
        _defaultView = [DefaultView new];
    }
    return _defaultView;
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
