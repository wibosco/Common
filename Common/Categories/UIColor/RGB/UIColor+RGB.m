//
//  UIColor+RGB.m
//  Common
//
//  Created by William Boles on 08/03/2013.
//  Copyright (c) 2013 Boles. All rights reserved.
//

#import "UIColor+RGB.h"

@implementation UIColor (RGB)

#pragma mark - RGB

+ (UIColor *) colorWithRGBValuesForRed:(CGFloat)red
                                 green:(CGFloat)green
                                  blue:(CGFloat)blue
                                 alpha:(CGFloat)alpha
{
    return [UIColor colorWithRed:red/255.0f
                           green:green/255.0f
                            blue:blue/255.0f
                           alpha:alpha];
}


- (CGFloat) redValue
{
    CGFloat red = 0.0f;
    CGFloat green = 0.0f;
    CGFloat blue = 0.0f;
    CGFloat alpha = 0.0f;
    
    [self getRed:&red
           green:&green
            blue:&blue
           alpha:&alpha];
    
    return red;
}

- (CGFloat) greenValue
{
    CGFloat red = 0.0f;
    CGFloat green = 0.0f;
    CGFloat blue = 0.0f;
    CGFloat alpha = 0.0f;
    
    [self getRed:&red
           green:&green
            blue:&blue
           alpha:&alpha];
    
    return green;
}

- (CGFloat) blueValue
{
    CGFloat red = 0.0f;
    CGFloat green = 0.0f;
    CGFloat blue = 0.0f;
    CGFloat alpha = 0.0f;
    
    [self getRed:&red
           green:&green
            blue:&blue
           alpha:&alpha];
    
    return blue;
}

- (CGFloat) alphaValue
{
    CGFloat red = 0.0f;
    CGFloat green = 0.0f;
    CGFloat blue = 0.0f;
    CGFloat alpha = 0.0f;
    
    [self getRed:&red
           green:&green
            blue:&blue
           alpha:&alpha];
    
    return alpha;
}

@end
