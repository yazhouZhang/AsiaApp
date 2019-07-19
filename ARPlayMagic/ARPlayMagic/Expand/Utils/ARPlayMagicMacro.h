//
//  ARPlayMagicMacro.h
//  ARPlayMagic
//
//  Created by zhangyazhou on 2019/7/19.
//  Copyright © 2019 zhifu360. All rights reserved.
//

#ifndef ARPlayMagicMacro_h
#define ARPlayMagicMacro_h
//KeyWindow
#define KeyWindow [[UIApplication sharedApplication] delegate].window

#define WeakObj(o) __weak typeof(o) o##Weak = o;
#define StrongObj(o) __strong typeof(o) o = o##Weak;

#define SWidth [UIScreen mainScreen].bounds.size.width
#define SHeight [UIScreen mainScreen].bounds.size.height

#define TabBarHeight (SHeight == 812.0 ? 34 + 49 : 49)
#define NavigationHeight (SHeight == 812.0 ? 88 : 64)
#define StatusBarHeight (SHeight == 812.0 ? 44 : 20)

#endif /* ARPlayMagicMacro_h */
