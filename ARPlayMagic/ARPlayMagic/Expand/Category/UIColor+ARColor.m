//
//  UIColor+ARColor.m
//  ARPlayMagic
//
//  Created by zhangyazhou on 2019/7/19.
//  Copyright © 2019 zhifu360. All rights reserved.
//

#import "UIColor+ARColor.h"

@implementation UIColor (ARColor)
+ (UIColor *) colorFromHexCode:(NSString *)hexString {
    NSString *cleanString = [hexString stringByReplacingOccurrencesOfString:@"#" withString:@""];
    if([cleanString length] == 3) {
        cleanString = [NSString stringWithFormat:@"%@%@%@%@%@%@",
                       [cleanString substringWithRange:NSMakeRange(0, 1)],[cleanString substringWithRange:NSMakeRange(0, 1)],
                       [cleanString substringWithRange:NSMakeRange(1, 1)],[cleanString substringWithRange:NSMakeRange(1, 1)],
                       [cleanString substringWithRange:NSMakeRange(2, 1)],[cleanString substringWithRange:NSMakeRange(2, 1)]];
    }
    if([cleanString length] == 6) {
        cleanString = [cleanString stringByAppendingString:@"ff"];
    }
    
    unsigned int baseValue;
    [[NSScanner scannerWithString:cleanString] scanHexInt:&baseValue];
    
    float red = ((baseValue >> 24) & 0xFF)/255.0f;
    float green = ((baseValue >> 16) & 0xFF)/255.0f;
    float blue = ((baseValue >> 8) & 0xFF)/255.0f;
    float alpha = ((baseValue >> 0) & 0xFF)/255.0f;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}
+ (UIColor *) skinColor{
    return [UIColor colorFromHexCode:@"FF601A"];
};//FF601A

+ (UIColor *) testSelectColor{
    return [UIColor colorFromHexCode:@"FC6C21"];
};//FC6C21

+ (UIColor *) testNormalColor{
    return [UIColor colorFromHexCode:@"15212E"];
};//15212E

+ (UIColor *) sepreateColor{
    return [UIColor colorFromHexCode:@"e6e6e6"];
};//分割线 e6e6e6

+ (UIColor *) navigationColor{
    return [UIColor colorFromHexCode:@"FF601A"];
};//FF601A

+ (UIColor *) bigTitleBlackColor{
    return [UIColor colorFromHexCode:@"111111"];
};//111111

+ (UIColor *) titleBlackColor{
    return [UIColor colorFromHexCode:@"3B364D"];
};//3B364D

+ (UIColor *) grayColor{
    return [UIColor colorFromHexCode:@"333333"];
};//333333

+ (UIColor *) stateLittleGrayColor{
    return [UIColor colorFromHexCode:@"666666"];
};//666666

+ (UIColor *) stateGrayColor{
    return [UIColor colorFromHexCode:@"99999"];
};//99999

+ (UIColor *) homeBGColor{
    return [UIColor colorFromHexCode:@"f9f9f9"];
};//f9f9f9

+ (UIColor *) backgroundGrayColor{
     return [UIColor colorFromHexCode:@"f2f2f2"];
};//f2f2f2

+ (UIColor *) loginGrayColor{
    return [UIColor colorFromHexCode:@"BBBBBB"];
};//#BBBBBB

+ (UIColor *) buttonGrayColor{
    return [UIColor colorFromHexCode:@"D6D6D6"];
};//#D6D6D6

+ (UIColor *) whiteButtonTitleColor{
    return [UIColor colorFromHexCode:@"FFFFFF"];
};// FFFFFF
@end
