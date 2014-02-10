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

- (NSArray *) reversedArray
{
    NSMutableArray *reversedArray = [NSMutableArray arrayWithCapacity:[self count]];
    
    NSEnumerator *enumerator = [self reverseObjectEnumerator];
    
    for (id element in enumerator)
    {
        [reversedArray addObject:element];
    }
    
    return reversedArray;
}


@end
