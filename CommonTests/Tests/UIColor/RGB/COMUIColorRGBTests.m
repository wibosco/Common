//
//  COMUIColorRGBTests.m
//  Common
//
//  Created by William Boles on 10/02/2014.
//  Copyright (c) 2014 Boles. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UIColor+RGB.h"

@interface COMUIColorRGBTests : XCTestCase

@end

@implementation COMUIColorRGBTests

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

#pragma mark - RGB

- (void)testInitColorWithRGBValues
{
    CGFloat red = 135.0f;
    CGFloat green = 200.0f;
    CGFloat blue = 50.0f;
    CGFloat alpha = 1.0f;
    
    UIColor *color = [UIColor colorWithRed:red/255.0f
                                     green:green/255.0f
                                      blue:blue/255.0f
                                     alpha:alpha];
    
    UIColor *RGBColor = [UIColor colorWithRGBValuesForRed:red
                                                    green:green
                                                     blue:blue
                                                    alpha:alpha];
    
    XCTAssertEqualObjects(RGBColor,
                          color,
                          @"color should be the same as RGBColor");
}

- (void) testInitRedValueCorrectlyAssigned
{
    CGFloat red = 135.0f;
    
    UIColor *RGBColor = [UIColor colorWithRGBValuesForRed:red
                                                    green:0.0f
                                                     blue:0.0f
                                                    alpha:0.0f];
    CGFloat retrievedRed = 0.0f;
    CGFloat retrievedGreen = 0.0f;
    CGFloat retrievedBlue = 0.0f;
    CGFloat retrievedAlpha = 0.0f;
    
    [RGBColor getRed:&retrievedRed
               green:&retrievedGreen
                blue:&retrievedBlue
               alpha:&retrievedAlpha];
    
    XCTAssertEqual(retrievedRed,
                   (red/255.0f),
                   @"Red parameter is not being correctly assigned");
}

- (void) testInitGreenValueCorrectlyAssigned
{
    CGFloat green = 135.0f;
    
    UIColor *RGBColor = [UIColor colorWithRGBValuesForRed:0.0f
                                                    green:green
                                                     blue:0.0f
                                                    alpha:0.0f];
    CGFloat retrievedRed = 0.0f;
    CGFloat retrievedGreen = 0.0f;
    CGFloat retrievedBlue = 0.0f;
    CGFloat retrievedAlpha = 0.0f;
    
    [RGBColor getRed:&retrievedRed
               green:&retrievedGreen
                blue:&retrievedBlue
               alpha:&retrievedAlpha];
    
    XCTAssertEqual(retrievedGreen,
                   (green/255.0f),
                   @"Green parameter is not being correctly assigned");
    
}

- (void) testInitBlueValueCorrectlyAssigned
{
    CGFloat blue = 135.0f;
    
    UIColor *RGBColor = [UIColor colorWithRGBValuesForRed:0.0f
                                                    green:0.0f
                                                     blue:blue
                                                    alpha:0.0f];
    CGFloat retrievedRed = 0.0f;
    CGFloat retrievedGreen = 0.0f;
    CGFloat retrievedBlue = 0.0f;
    CGFloat retrievedAlpha = 0.0f;
    
    [RGBColor getRed:&retrievedRed
               green:&retrievedGreen
                blue:&retrievedBlue
               alpha:&retrievedAlpha];
    
    XCTAssertEqual(retrievedBlue,
                   (blue/255.0f),
                   @"Blue parameter is not being correctly assigned");
    
}

- (void) testInitAlphaValueCorrectlyAssigned
{
    CGFloat alpha = 0.2f;
    
    UIColor *RGBColor = [UIColor colorWithRGBValuesForRed:0.0f
                                                    green:0.0f
                                                     blue:0.0f
                                                    alpha:alpha];
    CGFloat retrievedRed = 0.0f;
    CGFloat retrievedGreen = 0.0f;
    CGFloat retrievedBlue = 0.0f;
    CGFloat retrievedAlpha = 0.0f;
    
    [RGBColor getRed:&retrievedRed
               green:&retrievedGreen
                blue:&retrievedBlue
               alpha:&retrievedAlpha];
    
    XCTAssertEqual(retrievedAlpha,
                   alpha,
                   @"Alpha parameter is not being correctly assigned");
}

#pragma mark - Individual values

- (void) testRedColorValue
{
    CGFloat red = 135.0f/255.0f;
    CGFloat green = 200.0f/255.0f;
    CGFloat blue = 50.0f/255.0f;
    CGFloat alpha = 1.0f/255.0f;
    
    UIColor *color = [UIColor colorWithRed:red
                                     green:green
                                      blue:blue
                                     alpha:alpha];
    
    XCTAssertEqual(color.redValue,
                   red,
                   @"Red isn't being properly extracted");
}

- (void) testGreenColorValue
{
    CGFloat red = 135.0f/255.0f;
    CGFloat green = 200.0f/255.0f;
    CGFloat blue = 50.0f/255.0f;
    CGFloat alpha = 1.0f/255.0f;
    
    UIColor *color = [UIColor colorWithRed:red
                                     green:green
                                      blue:blue
                                     alpha:alpha];
    
    XCTAssertEqual(color.greenValue,
                   green,
                   @"Green isn't being properly extracted");
}

- (void) testBlueColorValue
{
    CGFloat red = 135.0f/255.0f;
    CGFloat green = 200.0f/255.0f;
    CGFloat blue = 50.0f/255.0f;
    CGFloat alpha = 1.0f/255.0f;
    
    UIColor *color = [UIColor colorWithRed:red
                                     green:green
                                      blue:blue
                                     alpha:alpha];
    
    XCTAssertEqual(color.blueValue,
                   blue,
                   @"Blue isn't being properly extracted");
}

- (void) testAlphaColorValue
{
    CGFloat red = 135.0f/255.0f;
    CGFloat green = 200.0f/255.0f;
    CGFloat blue = 50.0f/255.0f;
    CGFloat alpha = 1.0f/255.0f;
    
    UIColor *color = [UIColor colorWithRed:red
                                     green:green
                                      blue:blue
                                     alpha:alpha];
    
    XCTAssertEqual(color.alphaValue,
                   alpha,
                   @"Alpha isn't being properly extracted");
}

@end
