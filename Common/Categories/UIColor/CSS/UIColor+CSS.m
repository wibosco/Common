//
//  UIColor+CSS.m
//  Common
//
//  Created by William Boles on 10/02/2014.
//  Copyright (c) 2014 Boles. All rights reserved.
//

#import "UIColor+CSS.h"

@implementation UIColor (CSS)

#pragma mark - String

+ (NSString *) CSSRGBStringForColor:(UIColor *)color
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

- (NSString *) CSSRGBString
{
    return [UIColor CSSRGBStringForColor:self];
}


@end
