//
//  UIColor+CSS.h
//  Common
//
//  Created by William Boles on 10/02/2014.
//  Copyright (c) 2014 Boles. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (CSS)

+ (NSString *) CSSRGBStringForColor:(UIColor *)color;
- (NSString *) CSSRGBString;

@end
