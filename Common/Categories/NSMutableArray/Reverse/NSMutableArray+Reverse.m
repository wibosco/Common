//
//  NSMutableArray+Reverse.m
//  Common
//
//  Created by William Boles on 07/02/2013.
//  Copyright (c) 2013 Boles. All rights reserved.
//

#import "NSMutableArray+Reverse.h"

@implementation NSMutableArray (Reverse)

- (void) reverse
{
    if ([self count] != 0)
    {
        NSUInteger upwardsCount = 0;
        NSUInteger downwardsCount = [self count] - 1;
        
        while (upwardsCount < downwardsCount)
        {
            [self exchangeObjectAtIndex:upwardsCount
                      withObjectAtIndex:downwardsCount];
            
            upwardsCount++;
            downwardsCount--;
        }
    }
}


@end
