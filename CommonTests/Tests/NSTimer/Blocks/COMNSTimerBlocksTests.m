//
//  COMNSTimerBlocksTests.m
//  Common
//
//  Created by William Boles on 10/02/2014.
//  Copyright (c) 2014 Boles. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSTimer+Blocks.h"
#import "XCTestCase+AsyncTesting.h"

@interface COMNSTimerBlocksTests : XCTestCase

@end

@implementation COMNSTimerBlocksTests

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

#pragma mark - Block

- (void)testNonRepeatingTimerWithValidCallBackBlock
{
    NSTimeInterval timeInterval = 0.1f;
    
    __block BOOL blockCalled = NO;
    
    [NSTimer scheduledTimerWithTimeInterval:timeInterval
                                      block:^
    {
        blockCalled = YES;
        
        [self notify:XCTAsyncTestCaseStatusSucceeded];
    }
                                    repeats:NO];
    
    [self waitForStatus:XCTAsyncTestCaseStatusSucceeded
                timeout:timeInterval+1.0f];
    
    XCTAssertTrue(blockCalled, @"Block should have been called back");
}

- (void)testRepeatingTimerWithValidCallBackBlock
{
    NSTimeInterval timeInterval = 0.1f;
    
    __block NSUInteger repeated = 0;
    __block BOOL blockCalled = NO;
    
    NSTimer * timer =
    [NSTimer scheduledTimerWithTimeInterval:timeInterval
                                      block:^
                    
    {
        if (repeated == 1)
        {
            blockCalled = YES;
            
            [self notify:XCTAsyncTestCaseStatusSucceeded];
        }
        
        repeated++;
    }
                                    repeats:YES];
    
    [self waitForStatus:XCTAsyncTestCaseStatusSucceeded
                timeout:2*timeInterval+1.0f];
    
    XCTAssertTrue(blockCalled, @"Block should have been called back");
    
    [timer invalidate];
}

@end
