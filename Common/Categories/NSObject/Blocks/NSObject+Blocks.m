//
//  NSObject+Blocks.m
//  Common
//
//  Created by William Boles on 29/11/12.
//  Copyright (c) 2012 Boles. All rights reserved.
//

#import "NSObject+Blocks.h"

@implementation NSObject (Blocks)

#pragma mark - Block

- (void) performBlock:(void (^)(void))block
           afterDelay:(NSTimeInterval)delay
{
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delay * NSEC_PER_SEC));
    
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void)
    {
        
        if (block)
        {
            block();
        }
        
    });
}

@end
