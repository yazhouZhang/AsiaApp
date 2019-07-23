//
//  ARTabBarVC.m
//  ARPlayMagic
//
//  Created by zhangyazhou on 2019/7/18.
//  Copyright © 2019 zhifu360. All rights reserved.
//

#import "ARTabBarVC.h"
#import "ARBaseVC.h"
#import "ARBaseNavigationVC.h"
#import "ARHomeVC.h"
#import "ARFaceVC.h"
#import "ARMineVC.h"

@interface ARTabBarVC ()

@end

@implementation ARTabBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

+ (instancetype)instance{
    static id sharedTabBar = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedTabBar = [[self alloc]init];
        [sharedTabBar setUpChildViewControllers];
    });
    return sharedTabBar;
}

- (void)setUpChildViewControllers {
    [self setUpTabBarImageName:@"tab_icon_loan" rootVCClass:[ARHomeVC class] rootVCTitle:@"首页" selectedIndex:0];
    [self setUpTabBarImageName:@"tab_icon_find" rootVCClass:[ARFaceVC class] rootVCTitle:@"发现" selectedIndex:1];
    [self setUpTabBarImageName:@"tab_icon_mine" rootVCClass:[ARMineVC class] rootVCTitle:@"我的" selectedIndex:1];
}

- (void)setUpTabBarImageName:(NSString *)name rootVCClass:(Class)rootViewControllerClass rootVCTitle:(NSString *)title selectedIndex:(NSInteger)index {
    
    ARBaseVC *rootVC = [[rootViewControllerClass alloc] init];
    
    if([rootVC isKindOfClass:[ARHomeVC class]]) {
        rootVC = [[ARHomeVC alloc] init];
    }else if ([rootVC isKindOfClass:[ARMineVC class]]){
        rootVC = [[ARMineVC alloc] init];
    }
    
    rootVC.title=title;
    
    ARBaseNavigationVC *navVc = [[ARBaseNavigationVC  alloc] initWithRootViewController:rootVC];
    navVc.selectedIndex = index;
    navVc.tabBarItem.image = [UIImage imageNamed:name];
    navVc.tabBarItem.selectedImage = [UIImage imageNamed:[NSString stringWithFormat:@"%@_pressed", name]];
    navVc.tabBarItem.title = title;
    self.tabBar.translucent = NO;
    self.delegate=self;
    [self addChildViewController:navVc];
}

@end
