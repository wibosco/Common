//
//  NSString+Time.m
//  Common
//
//  Created by William Boles on 18/02/2013.
//  Copyright (c) 2013 Boles. All rights reserved.
//

#import "NSString+Time.h"

@implementation NSString (Time)

+ (NSString *) formattedTimeFromNumericTime:(NSUInteger)time
{
    NSUInteger minutes = time/60;
    NSUInteger seconds = time - (minutes*60);
    
    return [NSString stringWithFormat:@"%02lu:%02lu",(unsigned long) minutes, (unsigned long)seconds];
}

@end
