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

+ (UIColor *) RGBColorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue
{
    return [UIColor colorWithRed:red/255.0f
                           green:green/255.0f
                            blue:blue/255.0f
                           alpha:1.0f];
}

+ (NSString *) RGBForCSS:(UIColor *)color
{
    CGFloat red = 0.0f;
    CGFloat green = 0.0f;
    CGFloat blue = 0.0f;
    CGFloat alpha = 0.0f;
    
    [color getRed:&red
            green:&green
             blue:&blue
            alpha:&alpha];
    
    return [NSString stringWithFormat:@"rgb(%lu,%lu,%lu)", (unsigned long)(red*255.0f), (unsigned long)(green*255.0f), (unsigned long)(blue*255.0f)];
}

@end
