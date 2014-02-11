//
//  NSArray+Reverse.m
//  Common
//
//  Created by William Boles on 07/02/2013.
//  Copyright (c) 2013 Boles. All rights reserved.
//

#import "NSArray+Reverse.h"

@implementation NSArray (Reverse)

#pragma mark - Reverse

+ (NSArray *) reverseArray:(NSArray *)reverseArray
{
    NSMutableArray *reversedArray = nil;
    
    if (reverseArray)
    {
        reversedArray = [NSMutableArray arrayWithCapacity:[reverseArray count]];
        
        NSEnumerator *enumerator = [reverseArray reverseObjectEnumerator];
        
        for (id element in enumerator)
        {
            [reversedArray addObject:element];
        }
    }
    
    return [reversedArray copy];
}

- (NSArray *) reversedArray
{
    return [NSArray reverseArray:self];
}

@end
