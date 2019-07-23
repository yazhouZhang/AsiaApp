//
//  ARLaunchViewController.h
//  ARPlayMagic
//
//  Created by zhangyazhou on 2019/7/18.
//  Copyright © 2019 zhifu360. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ARBaseVC.h"
typedef void (^CompletionHandlerBlock)(void);
NS_ASSUME_NONNULL_BEGIN

@interface ARLaunchViewController : ARBaseVC
@property (nonatomic, copy) CompletionHandlerBlock completionHandler;
@end

NS_ASSUME_NONNULL_END
