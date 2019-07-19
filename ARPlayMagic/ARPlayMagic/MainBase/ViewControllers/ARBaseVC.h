//
//  BaseVC.h
//  ARPlayMagic
//
//  Created by zhangyazhou on 2019/7/18.
//  Copyright © 2019 zhifu360. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DefaultView.h"

NS_ASSUME_NONNULL_BEGIN

@interface ARBaseVC : UIViewController
@property (nonatomic, strong) DefaultView *defaultView;
- (void)setLeftNavigationItem:(BOOL)hidden;
@end

NS_ASSUME_NONNULL_END
