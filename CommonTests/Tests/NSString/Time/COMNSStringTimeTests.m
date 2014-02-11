//
//  COMNSStringTimeTests.m
//  Common
//
//  Created by William Boles on 10/02/2014.
//  Copyright (c) 2014 Boles. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+Time.h"

@interface COMNSStringTimeTests : XCTestCase

@end

@implementation COMNSStringTimeTests

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

#pragma mark - Non-zero

- (void)testTimeWithHourAndMinuteComponent
{
    XCTAssertEqualObjects([NSString formattedTimeFromNumericTime:72],
                          @"01:12",
                          @"Integer value isn't correctly formatted");
}

- (void)testTimeWithZeroHourAndNonZeroMinuteComponent
{
    XCTAssertEqualObjects([NSString formattedTimeFromNumericTime:42],
                          @"00:42",
                          @"Integer value isn't correctly formatted");
}

- (void)testTimeWithNonZeroHourAndZeroMinuteComponent
{
    XCTAssertEqualObjects([NSString formattedTimeFromNumericTime:120],
                          @"02:00",
                          @"Integer value isn't correctly formatted");
}

- (void)testTimeWithThreeDigitHourComponent
{
    XCTAssertEqualObjects([NSString formattedTimeFromNumericTime:12000],
                          @"200:00",
                          @"Integer value isn't correctly formatted");
}

#pragma mark - Zero

- (void)testTimeWithZeroParameter
{
    XCTAssertEqualObjects([NSString formattedTimeFromNumericTime:0],
                          @"00:00",
                          @"Integer value isn't correctly formatted");
}

@end
