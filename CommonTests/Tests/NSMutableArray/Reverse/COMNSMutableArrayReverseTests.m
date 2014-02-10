//
//  COMNSMutableArrayReverseTests.m
//  Common
//
//  Created by William Boles on 10/02/2014.
//  Copyright (c) 2014 Boles. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSMutableArray+Reverse.h"

@interface COMNSMutableArrayReverseTests : XCTestCase

@property (nonatomic, strong) NSMutableArray *array;

@end

@implementation COMNSMutableArrayReverseTests

#pragma mark - Setup

- (void)setUp
{
    [super setUp];
    
    self.array = [NSMutableArray arrayWithArray:@[@"First", @"Second", @"Third", @"Fourth", @"Fifth", @"Sixth"]];
    
}

#pragma mark - Teardown

- (void)tearDown
{
    self.array = nil;
    
    [super tearDown];
}

#pragma mark - Valid

- (void)testContentOfArrayIsReversedInstance
{
    NSMutableArray *reversedArray = [NSMutableArray arrayWithArray:@[@"Sixth", @"Fifth", @"Fourth", @"Third", @"Second", @"First"]];
    
    [self.array reverse];
    
    XCTAssertEqualObjects(reversedArray,
                          self.array,
                          @"Content of array should have been reversed");
}

#pragma mark - Empty 

- (void) testEmptyArray
{
    NSMutableArray *emptyArray = [NSMutableArray arrayWithArray:@[]];
    
    XCTAssertEqualObjects(emptyArray,
                          [NSMutableArray arrayWithArray:@[]],
                          @"The empty array should not have changed");
}

@end
