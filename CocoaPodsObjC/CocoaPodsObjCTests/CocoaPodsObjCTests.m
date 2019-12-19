//
//  CocoaPodsObjCTests.m
//  CocoaPodsObjCTests
//
//  Created by Wang Wei on 2019/07/19.
//  Copyright © 2019 LINE Corp. All rights reserved.
//

#import <XCTest/XCTest.h>
@import LineSDK;

@interface CocoaPodsObjCTests : XCTestCase

@end

@implementation CocoaPodsObjCTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testSDKVersion {
    NSString *version = [LineSDKConstant SDKVersion];
    XCTAssertNotEqual(version.length, 0);
}

- (void)testSDKResource {
    LineSDKLoginButton *button = [[LineSDKLoginButton alloc] init];
    XCTAssertNotNil(button);

    XCTAssertNotNil([button buttonTextValue]);

    button.buttonTextValue = @"Hello";
    XCTAssertEqual(button.button.titleLabel.text, @"Hello");
}

@end
