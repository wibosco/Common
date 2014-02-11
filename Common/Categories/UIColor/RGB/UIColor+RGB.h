//
//  UIColor+RGB.h
//  Common
//
//  Created by William Boles on 08/03/2013.
//  Copyright (c) 2013 Boles. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (RGB)

+ (UIColor *) colorWithRGBValuesForRed:(CGFloat)red
                                 green:(CGFloat)green
                                  blue:(CGFloat)blue
                                 alpha:(CGFloat)alpha;


- (CGFloat) redValue;
- (CGFloat) greenValue;
- (CGFloat) blueValue;
- (CGFloat) alphaValue;

@end
