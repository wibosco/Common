//
//  NSString+Empty.m
//  Boles
//
//  Created by William Boles on 15/06/2012.
//  Copyright (c) 2012 Boles. All rights reserved.
//

#import "NSString+Empty.h"

@implementation NSString (Empty)

#pragma mark - Empty

- (BOOL) isEmpty
{
    return [NSString isStringEmpty:self];
}

+ (BOOL) isStringEmpty:(NSString *)string
{
    BOOL isStringEmpty = YES;
    
    if (string)
    {
        
        if ([string length] != 0)
        {
            NSString *trimmedString = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([trimmedString length] != 0)
            {
                return NO;
            }
        }
    }
    
    return isStringEmpty;
}

@end
