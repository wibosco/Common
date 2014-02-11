//
//  NSTimer+Blocks.m
//  Common
//
//  Created by William Boles on 17/01/2014.
//  Copyright (c) 2014 Boles. All rights reserved.
//

#import "NSTimer+Blocks.h"

@implementation NSTimer (Blocks)

#pragma mark - Schedule

+ (NSTimer *) scheduledTimerWithTimeInterval:(NSTimeInterval)timeInterval
                                       block:(void (^)(void))block
                                     repeats:(BOOL)repeats
{
    return [NSTimer scheduledTimerWithTimeInterval:timeInterval
                                            target:self
                                          selector:@selector(timerSelector:)
                                          userInfo:[block copy]
                                           repeats:repeats];
}

+ (void) timerSelector:(NSTimer *)timer
{
    void (^block)(void) = timer.userInfo;
    
    if (block)
    {
        block();
    }
    
}

@end
