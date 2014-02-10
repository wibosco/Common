//
//  COMNSArrayReverseTests.m
//  Common
//
//  Created by William Boles on 10/02/2014.
//  Copyright (c) 2014 Boles. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSArray+Reverse.h"

@interface COMNSArrayReverseTests : XCTestCase

@property (nonatomic, strong) NSArray *array;

@end

@implementation COMNSArrayReverseTests

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

- (void)testContentOfArrayIsReversedInstance
{
    NSArray *reversedArray = @[@"Sixth", @"Fifth", @"Fourth", @"Third", @"Second", @"First"];
    
    XCTAssertEqualObjects(reversedArray,
                          [self.array reversedArray],
                          @"Content of array should have been reversed");
}

- (void)testContentOfArrayIsReversedClass
{
    NSArray *reversedArray = @[@"Sixth", @"Fifth", @"Fourth", @"Third", @"Second", @"First"];
    
    XCTAssertEqualObjects(reversedArray,
                          [NSArray reverseArray:self.array],
                          @"Content of array should have been reversed");
}

#pragma mark - Type

//- (void)testReturnedObjectIsOfTypeImmutableArrayInstance
//{
//    XCTAssertEqualObjects([NSArray class],
//                          [[self.array reversedArray] class],
//                          @"NSArray should be returned");
//}
//
//- (void)testReturnedObjectIsOfTypeImmutableArrayClass
//{
//    XCTAssertEqualObjects([NSArray class],
//                          [[NSArray reverseArray:self.array] class],
//                          @"NSArray should be returned");
//}

#pragma mark - Empty

- (void) testEmptyArrayInstance
{
    NSArray *emptyArray = @[];
    
    XCTAssertEqualObjects(emptyArray,
                          [@[] reversedArray],
                          @"An empty array should have been returned");
}

- (void) testEmptyArrayClass
{
    NSArray *emptyArray = @[];
    
    XCTAssertEqualObjects(emptyArray,
                          [NSArray reverseArray:@[]],
                          @"An empty array should have been returned");
}

#pragma mark - Nil

- (void) testNilArrayClass
{
    XCTAssertNil([NSArray reverseArray:nil], @"Nil should be returned");
}

@end
