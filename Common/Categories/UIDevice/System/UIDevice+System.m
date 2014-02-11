//
//  UIDevice+System.m
//  pathway
//
//  Created by William Boles on 11/09/2012.
//  Copyright (c) 2012 Boles. All rights reserved.
//

#import "UIDevice+System.h"

@implementation UIDevice (System)

#pragma mark - Version

+ (BOOL) isDeviceRunningiOS7OrAbove
{
    return [[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0;
}

+ (BOOL) isDeviceRunningiOS6OrAbove
{
    return [[[UIDevice currentDevice] systemVersion] floatValue] >= 6.0;
}

+ (BOOL) isDeviceRunningiOS5OrAbove
{
    return [[[UIDevice currentDevice] systemVersion] floatValue] >= 5.0;
}

@end
