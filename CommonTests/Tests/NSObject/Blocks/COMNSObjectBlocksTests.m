//
//  COMNSObjectBlocksTest.m
//  Common
//
//  Created by William Boles on 10/02/2014.
//  Copyright (c) 2014 Boles. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSObject+Blocks.h"
#import "XCTestCase+AsyncTesting.h"

@interface COMNSObjectBlocksTests : XCTestCase

@property (nonatomic, strong) NSObject *objectBlockTest;

@end

@implementation COMNSObjectBlocksTests

#pragma mark - Setup

- (void) setUp
{
    [super setUp];
    
    self.objectBlockTest = [[NSObject alloc] init];
    
}

#pragma mark - Teardown

- (void) tearDown
{
    
    self.objectBlockTest = nil;
    
    [super tearDown];
}

#pragma mark - Tests

- (void)testBlockCalledAsync
{
    NSTimeInterval timeDelay = 0.2f;
    
    __block BOOL blockCalled = NO;
    
    [self.objectBlockTest performBlock:^
    {
        blockCalled = YES;
        [self notify:XCTAsyncTestCaseStatusSucceeded];
    }
                            afterDelay:timeDelay];
    
    [self waitForStatus:XCTAsyncTestCaseStatusSucceeded
                timeout:timeDelay+1.0f];
    
    XCTAssertTrue(blockCalled, @"Block should have been called back");
    
}

#pragma mark - Nil

- (void) testNilBlock
{
    NSTimeInterval timeDelay = 0.2f;
    
    [self.objectBlockTest performBlock:nil
                            afterDelay:timeDelay];
    
    //Assert for non exception
}

@end
