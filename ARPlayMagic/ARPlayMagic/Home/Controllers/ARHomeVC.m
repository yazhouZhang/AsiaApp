//
//  ARHomeVC.m
//  ARPlayMagic
//
//  Created by zhangyazhou on 2019/7/23.
//  Copyright © 2019 zhifu360. All rights reserved.
//

#import "ARHomeVC.h"
#import <CoreMotion/CoreMotion.h>
#import "ARStarrySkyVC.h"

@interface ARHomeVC ()
@property (nonatomic,strong)CMMotionManager *motionManager;
@end

@implementation ARHomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self setEnterSky];
}

-(void)setEnterSky{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor blueColor];
    [self.view addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_top).mas_offset(NavigationHeight + 50);
        make.size.mas_equalTo(CGSizeMake(150, 40));
        make.centerX.mas_equalTo(self.view.mas_centerX);
    }];
    [btn setTitle:@"进入星空星座" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(enterSky) forControlEvents:UIControlEventTouchUpInside];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}

-(void)enterSky{
    ARStarrySkyVC *skyVC = [[ARStarrySkyVC alloc] init];
    [self.navigationController pushViewController:skyVC animated:true];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    

}

@end
