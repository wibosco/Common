//
//  NSArray+Statistics.m
//  Common
//
//  Created by William Boles on 07/09/2012.
//
//

#import "NSArray+Statistics.h"

@implementation NSArray (Statistics)

- (NSInteger) meanValueOfContainedNumbers
{
    NSInteger runningTotal = 0;
    
    if ([self count] == 0)
    {
        
        return 0;
        
    }
    
    for (NSUInteger index = 0; index < [self count]; index++)
    {
        
        NSObject *comparsionObject = [self objectAtIndex:index];
        
        if ([comparsionObject isKindOfClass:[NSNumber class]])
        {
            
            NSNumber *number = (NSNumber *)comparsionObject;
            
            runningTotal += [number integerValue];
            
        }
        else
        {
            
            runningTotal = 0;
            
            break;
            
        }
        
        
    }

    
    return (NSInteger)(runningTotal / [self count]);
}

@end
