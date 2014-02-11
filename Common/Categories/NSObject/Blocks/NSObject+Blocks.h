//
//  NSObject+Blocks.h
//  Common
//
//  Created by William Boles on 29/11/12.
//  Copyright (c) 2012 Boles. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Blocks)

- (void) performBlock:(void (^)(void))block afterDelay:(NSTimeInterval)delay;

@end
