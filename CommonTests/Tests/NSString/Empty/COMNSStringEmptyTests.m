//
//  COMNSStringEmptyTests.m
//  Common
//
//  Created by William Boles on 10/02/2014.
//  Copyright (c) 2014 Boles. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+Empty.h"

@interface COMNSStringEmptyTests : XCTestCase

@property (nonatomic, strong) NSString *emptyString;
@property (nonatomic, strong) NSString *nonEmptyString;
@property (nonatomic, strong) NSString *nonEmptyWhiteSpaceFilledString;

@end

@implementation COMNSStringEmptyTests

#pragma mark - Setup

- (void)setUp
{
    [super setUp];
    
    self.emptyString = @"";
    self.nonEmptyString = @"String with content";
    self.nonEmptyWhiteSpaceFilledString = @"     ";
}

#pragma mark - Teardown

- (void)tearDown
{
    self.emptyString = nil;
    self.nonEmptyString = nil;
    
    [super tearDown];
}

#pragma mark - Empty

- (void)testEmptyStringInstance
{
    XCTAssertTrue([self.emptyString isEmpty], @"This string is empty and the return value should be true");
}

- (void)testEmptyStringClass
{
    XCTAssertTrue([NSString isStringEmpty:self.emptyString], @"This string is empty and the return value should be true");
}

#pragma mark - NonEmpty

- (void)testNonEmptyStringInstance
{
    XCTAssertFalse([self.nonEmptyString isEmpty], @"This string has content and the return value should be false");
}

- (void)testNonEmptyStringClass
{
    XCTAssertFalse([NSString isStringEmpty:self.nonEmptyString], @"This string has content and the return value should be false");
}

#pragma mark - White space

- (void) testNonEmptyStringThatOnlyContainsWhiteSpaceInstance
{
    XCTAssertTrue([self.nonEmptyWhiteSpaceFilledString isEmpty], @"This string is empty of 'real' content and the return value should be true");
}

- (void) testNonEmptyStringThatOnlyContainsWhiteSpaceClass
{
    XCTAssertTrue([NSString isStringEmpty:self.nonEmptyWhiteSpaceFilledString], @"This string is empty of 'real' content and the return value should be true");
}

#pragma mark - Nil

- (void)testNilString
{
    XCTAssertTrue([NSString isStringEmpty:nil], @"The parameter is nil and the return value should be true");
}

@end
