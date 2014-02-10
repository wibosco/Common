//
//  NSString+URLEncoding.h
//  pathway
//
//  Created by William Boles on 3/26/13.
//  Copyright (c) 2013 Boles. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (URLEncoding)

-(NSString *) urlEncodeUsingEncoding:(NSStringEncoding)encoding;

@end
