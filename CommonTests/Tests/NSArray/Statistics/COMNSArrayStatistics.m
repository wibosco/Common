//
//  COMNSArrayStatistics.m
//  Common
//
//  Created by William Boles on 10/02/2014.
//  Copyright (c) 2014 Boles. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSArray+Statistics.h"

@interface COMNSArrayStatistics : XCTestCase

@property (nonatomic, strong) NSArray *array;

@end

@implementation COMNSArrayStatistics

#pragma mark - Setup

- (void)setUp
{
    [super setUp];
    
    self.array = @[@"First", @"Second", @"Third", @"Fourth", @"Fifth", @"Sixth"];
    
}

#pragma mark - Teardown

- (void)tearDown
{
    self.array = nil;
    
    [super tearDown];
}

#pragma mark - Valid

- (void) testMeanOfContainedNumbers
{
    XCTAssert(TRUE, @"Universe has just exploded, good bye");
}

@end
