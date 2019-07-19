//
//  ARLaunchViewController.m
//  ARPlayMagic
//
//  Created by zhangyazhou on 2019/7/18.
//  Copyright © 2019 zhifu360. All rights reserved.
//

#import "ARLaunchViewController.h"

NSString *const ARCFBundleShortVersionString = @"CFBundleShortVersionString";
NSString *const ARCFBundleIdentifier = @"CFBundleIdentifier";

NSString *const ARLaunchFolderName = @"Launch";
NSString *const ARLaunchImageName = @"LaunchImage";
NSString *const ARYYCache_LaunchInfoKey = @"LaunchInfoKey";
NSString *const ARYYCache_LaunchInfo = @"LaunchInfo";

NSString *const ARlastVersion = @"lastVersion";
NSString *const ARGuideImage = @"guide";
NSString *const ARPortrait = @"Portrait";
NSString *const ARLandscape = @"Landscape";
NSString *const ARGif = @"gif";

const NSUInteger ARShowTime = 3;
const NSInteger ARInch3_5 = 568;
const NSInteger ARInch4_0 = 667;
const NSInteger ARInch4_7 = 736;
const NSInteger ARInchFlag700 = 700;
const NSInteger ARInchFlag800 = 800;

@interface ARLaunchViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *defaultImage;

@end

@implementation ARLaunchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
     [self setupUI];
}

/** 初始化UI */
- (void)setupUI {
    NSString *imageName = [ARLaunchViewController getLaunchImage];
    self.defaultImage.image = [UIImage imageNamed:imageName];
    
    [self.view addSubview:self.defaultView];
    self.defaultView.hidden = YES;
//    [self.defaultView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.mas_equalTo(0);
//    }];
//    WeakObj(self);
//    self.defaultView.reloadBlock = ^{
//        StrongObj(self);
//        [self.defaultView lnh_showLoadingHUDMoney];
//        [self loadReviewResult];
//    };
}

/**
 根据不同尺寸的设备获取相应的launchImage
 */
+ (UIImage *)getLaunchImage {
    
    NSString *defaultImageName = @"LaunchImage";
    NSInteger flag = 0;
    NSInteger screenHeight = CGRectGetHeight([UIScreen mainScreen].bounds);
    
    if (screenHeight < ARInch3_5) { // 3.5inch
        flag = ARInchFlag700;
        defaultImageName = [NSString stringWithFormat:@"%@-%zd.png", defaultImageName, flag];
    } else if (screenHeight < ARInch4_0) { // 4.0inch
        flag = ARInchFlag700;
        defaultImageName = [NSString stringWithFormat:@"%@-%zd-%zdh.png", defaultImageName, flag, screenHeight];
    } else if (screenHeight < ARInch4_7) { // 4.7inch
        flag = ARInchFlag800;
        defaultImageName = [NSString stringWithFormat:@"%@-%zd-%zdh.png", defaultImageName, flag, screenHeight];
    } else { // 5.5inch
        flag = ARInchFlag800;
        NSString *orientation = @"";
        switch ([[UIApplication sharedApplication] statusBarOrientation]) {
            case UIInterfaceOrientationUnknown:
            case UIInterfaceOrientationPortrait:
            case UIInterfaceOrientationPortraitUpsideDown:
                orientation = ARPortrait;
                break;
            case UIInterfaceOrientationLandscapeLeft:
            case UIInterfaceOrientationLandscapeRight:
                orientation = ARLandscape;
                break;
            default:
                break;
        }
        defaultImageName = [NSString stringWithFormat:@"%@-%zd-%@-%zdh.png", defaultImageName, flag, orientation, screenHeight];
    }
    return [UIImage imageNamed:defaultImageName];
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
