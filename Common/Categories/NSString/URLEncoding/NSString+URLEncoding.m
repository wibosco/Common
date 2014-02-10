//
//  NSString+URLEncoding.m
//  pathway
//
//  Created by William Boles on 3/26/13.
//  Copyright (c) 2013 Boles. All rights reserved.
//

#import "NSString+URLEncoding.h"

@implementation NSString (URLEncoding)

-(NSString *) urlEncodeUsingEncoding:(NSStringEncoding)encoding
{
	return (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(NULL,
                                                               (CFStringRef)self,
                                                               NULL,
                                                               (CFStringRef)@"!*'\"();:@&=+$,/?%#[]% ",
                                                               CFStringConvertNSStringEncodingToEncoding(encoding)));
}

@end