//
//  DefaultView.h
//  ARPlayMagic
//
//  Created by zhangyazhou on 2019/7/18.
//  Copyright © 2019 zhifu360. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^ReloadButtonBlock)(void);

@interface DefaultView : UIView

@property (nonatomic,strong) ReloadButtonBlock reloadBlock;
@property (nonatomic,copy) NSString *imageNameString;
@property (nonatomic,copy) NSString *tip1String;
@property (nonatomic,copy) NSString *tip2String;
@end

NS_ASSUME_NONNULL_END
