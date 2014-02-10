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
        NSUInteger i = 0;
        NSUInteger j = [self count] - 1;
        
        while (i < j)
        {
            [self exchangeObjectAtIndex:i
                      withObjectAtIndex:j];
            
            i++;
            j--;
        }
    }
}


@end
