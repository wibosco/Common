//
//  COMNSArrayStatistics.m
//  Common
//
//  Created by William Boles on 10/02/2014.
//  Copyright (c) 2014 Boles. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSArray+Statistics.h"

@interface COMNSArrayStatisticsTests : XCTestCase

@property (nonatomic, strong) NSArray *array;
@property (nonatomic, strong) NSArray *fractionArray;
@property (nonatomic, strong) NSArray *nonNumberArray;

@end

@implementation COMNSArrayStatisticsTests

#pragma mark - Setup

- (void)setUp
{
    [super setUp];
    
    self.array = @[@1, @2, @3, @4, @5, @6, @7];
    self.fractionArray = @[@1, @2, @3, @4, @5, @6];
    self.nonNumberArray = @[@1, @2, @3, @"Fourth", @5, @6];
    
}

#pragma mark - Teardown

- (void)tearDown
{
    self.array = nil;
    self.fractionArray = nil;
    self.nonNumberArray = nil;
    
    [super tearDown];
}

#pragma mark - Valid

- (void) testMeanOfContainedNumbers
{
    XCTAssert([self.array meanValueOfContainedNumbers] == 4, @"Mean of array should have been 4");
}

- (void) testIgnoresFractionMeanOfContainedNumbers
{
    XCTAssert([self.fractionArray meanValueOfContainedNumbers] == 3, @"Mean of array should disregard fraction");
}

#pragma mark - Empty 

- (void) testEmptyArray
{
    XCTAssert([@[] meanValueOfContainedNumbers] == 0, @"Mean of an empty array should be 0");
}

#pragma mark - Invalid

- (void) testArrayContainsNonNumberTypes
{
    XCTAssert([self.nonNumberArray meanValueOfContainedNumbers] == 0, @"Mean of an array with invalid contents should be 0");
}

@end
