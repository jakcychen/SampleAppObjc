//
//  SampleAppObjcTests.m
//  SampleAppObjcTests
//
//  Created by JackyChen on 2016/12/29.
//  Copyright © 2016年 JackyChen. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Bank.h"

@interface SampleAppObjcTests : XCTestCase

@end

@implementation SampleAppObjcTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCalculateBalance
{
    CGFloat balance = [Bank CalculateBalanceWithCaptital:1000 interest:0.05f];
    XCTAssertEqual(balance, 1050.0f);
}

//- (void)testPerformanceExample {
//    // This is an example of a performance test case.
//    [self measureBlock:^{
//        // Put the code you want to measure the time of here.
//    }];
//}

@end
