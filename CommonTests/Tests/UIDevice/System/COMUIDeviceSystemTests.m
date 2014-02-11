//
//  COMUIDeviceSystemTests.m
//  Common
//
//  Created by William Boles on 10/02/2014.
//  Copyright (c) 2014 Boles. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UIDevice+System.h"
#import <objc/runtime.h>

@interface COMUIDeviceSystemTests : XCTestCase

@property (nonatomic, assign) Method originalMethod;
@property (nonatomic, assign) Method swizzleMethod;

- (void) swizzleInstanceMethodForInstancesOfClass:(Class)targetClass
                                         selector:(SEL)selector
                                      newSelector:(SEL)newSelector;
- (void) undoSwizzleInstanceMethod;

- (NSString *) iOS7SystemVersion;
- (NSString *) iOS6SystemVersion;
- (NSString *) iOS5SystemVersion;
- (NSString *) iOS4SystemVersion;

@end

@implementation COMUIDeviceSystemTests

#pragma mark - Swizzle
     
- (void) swizzleInstanceMethodForInstancesOfClass:(Class)targetClass
                                         selector:(SEL)selector
                                      newSelector:(SEL)newSelector
{
    self.originalMethod = class_getInstanceMethod(targetClass, selector);
    self.swizzleMethod = class_getInstanceMethod([self class], newSelector);
    
    method_exchangeImplementations(self.originalMethod, self.swizzleMethod);
}

- (void) undoSwizzleInstanceMethod
{
    method_exchangeImplementations(self.swizzleMethod, self.originalMethod);
    
    self.swizzleMethod = nil;
    self.originalMethod = nil;
}

#pragma mark - Versions

- (NSString *) iOS7SystemVersion
{
    return @"7.0";
}

- (NSString *) iOS6SystemVersion
{
    return @"6.0";
}

- (NSString *) iOS5SystemVersion
{
    return @"5.0";
}

- (NSString *) iOS4SystemVersion
{
    return @"4.0";
}

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

#pragma mark iOS 7

- (void)testForiOS7DeviceRunningiOSVersion7
{
    [self swizzleInstanceMethodForInstancesOfClass:[UIDevice class]
                                          selector:@selector(systemVersion)
                                       newSelector:@selector(iOS7SystemVersion)];

    XCTAssertTrue([UIDevice isDeviceRunningiOS7OrAbove],
                  @"Device was running iOS 7");
    
    [self undoSwizzleInstanceMethod];
}

- (void)testForiOS7DeviceRunningiOSVersion6
{
    [self swizzleInstanceMethodForInstancesOfClass:[UIDevice class]
                                          selector:@selector(systemVersion)
                                       newSelector:@selector(iOS6SystemVersion)];
    
    XCTAssertFalse([UIDevice isDeviceRunningiOS7OrAbove],
                   @"Device was running iOS 6");
    
    [self undoSwizzleInstanceMethod];
}

#pragma mark iOS 6

- (void)testForiOS6DeviceRunningiOSVersion6
{
    [self swizzleInstanceMethodForInstancesOfClass:[UIDevice class]
                                          selector:@selector(systemVersion)
                                       newSelector:@selector(iOS6SystemVersion)];
    
    XCTAssertTrue([UIDevice isDeviceRunningiOS6OrAbove],
                  @"Device was running iOS 6");
    
    [self undoSwizzleInstanceMethod];
}

- (void)testForiOS6DeviceRunningiOSVersion5
{
    [self swizzleInstanceMethodForInstancesOfClass:[UIDevice class]
                                          selector:@selector(systemVersion)
                                       newSelector:@selector(iOS5SystemVersion)];
    
    XCTAssertFalse([UIDevice isDeviceRunningiOS7OrAbove],
                   @"Device was running iOS 5");
    
    [self undoSwizzleInstanceMethod];
}

#pragma mark iOS 5

- (void)testForiOS5DeviceRunningiOSVersion5
{
    [self swizzleInstanceMethodForInstancesOfClass:[UIDevice class]
                                          selector:@selector(systemVersion)
                                       newSelector:@selector(iOS5SystemVersion)];
    
    XCTAssertTrue([UIDevice isDeviceRunningiOS5OrAbove],
                  @"Device was running iOS 5");
    
    [self undoSwizzleInstanceMethod];
}

- (void)testForiOS6DeviceRunningiOSVersion4
{
    [self swizzleInstanceMethodForInstancesOfClass:[UIDevice class]
                                          selector:@selector(systemVersion)
                                       newSelector:@selector(iOS4SystemVersion)];
    
    XCTAssertFalse([UIDevice isDeviceRunningiOS7OrAbove],
                   @"Device was running iOS 4");
    
    [self undoSwizzleInstanceMethod];
}

@end
