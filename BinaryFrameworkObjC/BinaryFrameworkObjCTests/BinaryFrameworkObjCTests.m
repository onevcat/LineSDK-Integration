//
//  BinaryFrameworkObjCTests.m
//  BinaryFrameworkObjCTests
//
//  Created by Wang Wei on 2019/07/24.
//  Copyright © 2019 OneV's Den. All rights reserved.
//

#import <XCTest/XCTest.h>
@import LineSDKObjC;

@interface BinaryFrameworkObjCTests : XCTestCase

@end

@implementation BinaryFrameworkObjCTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testSDKVersion {
    NSString *version = [LineSDKConstant SDKVersion];
    NSArray *array = [version componentsSeparatedByString:@"."];
    XCTAssertEqual(array.count, 3);
    NSLog(@"%@", array);
    XCTAssertTrue([array[0] isEqualToString:@"5"]);
}

- (void)testCanCreatePermission {
    LineSDKLoginPermission *permission = LineSDKLoginPermission.profile;
    XCTAssertNotNil(permission);
}

- (void)testSDKResource {
    LineSDKLoginButton *button = [[LineSDKLoginButton alloc] init];
    XCTAssertNotNil(button);

    XCTAssertNotNil([button buttonTextValue]);

    button.buttonTextValue = @"Hello";
    XCTAssertEqual(button.button.titleLabel.text, @"Hello");
}
@end
