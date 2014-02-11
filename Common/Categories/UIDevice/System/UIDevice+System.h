//
//  UIDevice+System.h
//  pathway
//
//  Created by William Boles on 11/09/2012.
//  Copyright (c) 2012 Boles. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (System)

+ (BOOL) isDeviceRunningiOS7OrAbove;
+ (BOOL) isDeviceRunningiOS6OrAbove;
+ (BOOL) isDeviceRunningiOS5OrAbove;

@end
