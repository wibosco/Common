//
//  NSArray+Statistics.m
//  Common
//
//  Created by William Boles on 07/09/2012.
//
//

#import "NSArray+Statistics.h"

@implementation NSArray (Statistics)

#pragma mark - Whole

- (NSInteger) meanWholeValueOfContainedNumbers
{
    return (NSInteger)lroundf([self meanFractionValueOfContainedNumbers]);
}

#pragma mark - Fraction

- (float) meanFractionValueOfContainedNumbers
{
    float meanWholeValueOfContainedNumbers = 0;
    
    if ([self count] != 0)
    {
        float runningTotal = 0;
        
        for (NSUInteger index = 0; index < [self count]; index++)
        {
            NSObject *comparsionObject = [self objectAtIndex:index];
            
            if ([comparsionObject isKindOfClass:[NSNumber class]])
            {
                NSNumber *number = (NSNumber *)comparsionObject;
                
                runningTotal += [number floatValue];
            }
            else
            {
                runningTotal = 0;
                
                break;
            }
        }
        
        meanWholeValueOfContainedNumbers = (float)(runningTotal/[self count]);
        
    }
    
    return meanWholeValueOfContainedNumbers;
}

@end
