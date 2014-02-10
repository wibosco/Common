//
//  NSTimer+Blocks.h
//  Common
//
//  Created by William Boles on 17/01/2014.
//  Copyright (c) 2014 Boles. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (Blocks)


/*
 Schedules a timer event with a time interval and a block to be called when that time interval is reached. Timer can be repeated
 
 It's important to note that timers can introduce retain cycles into your app so you should only use a weak reference to 'self' inside the block (and then converted into a strong reference for the executing of the block), i.e:
 
 __weak YourClass *weakSelf = self;
 
 //Start of block
 YourClass *strongSelf = weakSelf;
 //End of block
 
 @param timeInterval - interval until the timer is fired
 @param block - block called when timer has fired
 @param repeats - determines if timer is a single firing or multiple
 */
+ (NSTimer *) scheduledTimerWithTimeInterval:(NSTimeInterval)timeInterval
                                       block:(void (^)(void))block
                                     repeats:(BOOL)repeats;

@end
