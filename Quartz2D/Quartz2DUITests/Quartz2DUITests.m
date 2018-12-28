//
//  Quartz2DUITests.m
//  Quartz2DUITests
//
//  Created by 陈桂民 on 2017/9/25.
//  Copyright © 2017年 cgm. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface Quartz2DUITests : XCTestCase

@end

@implementation Quartz2DUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];

}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

@end
