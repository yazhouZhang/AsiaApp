//
//  UIColor+ARColor.h
//  ARPlayMagic
//
//  Created by zhangyazhou on 2019/7/19.
//  Copyright © 2019 zhifu360. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (ARColor)
+ (UIColor *) colorFromHexCode:(NSString *)hexString;
+ (UIColor *) skinColor;//FF601A
+ (UIColor *) testSelectColor;//FC6C21
+ (UIColor *) testNormalColor;//15212E
+ (UIColor *) sepreateColor;//分割线 e6e6e6

+ (UIColor *) navigationColor;//FF601A
+ (UIColor *) bigTitleBlackColor;//111111
+ (UIColor *) titleBlackColor;//3B364D

+ (UIColor *) grayColor;//333333
+ (UIColor *) stateLittleGrayColor;//666666
+ (UIColor *) stateGrayColor;//99999
+ (UIColor *) homeBGColor;//f9f9f9
+ (UIColor *) backgroundGrayColor;//f2f2f2
+ (UIColor *) loginGrayColor;//#BBBBBB
+ (UIColor *) buttonGrayColor;//#D6D6D6

+ (UIColor *) whiteButtonTitleColor;// FFFFFF
@end

NS_ASSUME_NONNULL_END
