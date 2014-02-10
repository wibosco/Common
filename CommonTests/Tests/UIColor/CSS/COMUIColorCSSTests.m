//
//  COMUIColorCSSTests.m
//  Common
//
//  Created by William Boles on 10/02/2014.
//  Copyright (c) 2014 Boles. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UIColor+CSS.h"

@interface COMUIColorCSSTests : XCTestCase

@end

@implementation COMUIColorCSSTests

#pragma mark - Setup

- (void)setUp
{
    [super setUp];
}

#pragma mark - Teardown

- (void)tearDown
{
    [super tearDown];
}

#pragma mark - RGB string

- (void) testCSSRGBStringForColorClass
{
    CGFloat red = 135.0f;
    CGFloat green = 200.0f;
    CGFloat blue = 50.0f;
    CGFloat alpha = 1.0f;
    
    UIColor *color = [UIColor colorWithRed:red/255.0f
                                     green:green/255.0f
                                      blue:blue/255.0f
                                     alpha:alpha];
    
    NSString *CSSRGBStringOfColor = [NSString stringWithFormat:@"rgb(%lu,%lu,%lu)", (unsigned long)red, (unsigned long)green, (unsigned long)blue];
    
    XCTAssertEqualObjects([UIColor CSSRGBStringForColor:color],
                          CSSRGBStringOfColor,
                          @"Should have returned the same string");
    
}

- (void) testCSSRGBStringForColorInstance
{
    CGFloat red = 135.0f;
    CGFloat green = 200.0f;
    CGFloat blue = 50.0f;
    CGFloat alpha = 1.0f;
    
    UIColor *color = [UIColor colorWithRed:red/255.0f
                                     green:green/255.0f
                                      blue:blue/255.0f
                                     alpha:alpha];
    
    NSString *CSSRGBStringOfColor = [NSString stringWithFormat:@"rgb(%lu,%lu,%lu)", (unsigned long)red, (unsigned long)green, (unsigned long)blue];
    
    XCTAssertEqualObjects([color CSSRGBString],
                          CSSRGBStringOfColor,
                          @"Should have returned the same string");
    
}

- (void) testRGBStringForNilColor
{
    NSString *CSSRGBStringOfColor = @"rgb(0,0,0)";
    
    XCTAssertEqualObjects([UIColor CSSRGBStringForColor:nil],
                          CSSRGBStringOfColor,
                          @"Should have returned black");
}

@end
