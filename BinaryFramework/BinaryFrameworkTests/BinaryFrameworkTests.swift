//
//  BinaryFrameworkTests.swift
//  BinaryFrameworkTests
//
//  Created by Wang Wei on 2019/07/24.
//  Copyright © 2019 OneV's Den. All rights reserved.
//

import XCTest
import LineSDK
@testable import BinaryFramework

class BinaryFrameworkTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSDKVersion() {
        let versions = Constant.SDKVersion.split(separator: ".")
        XCTAssertEqual(versions.count, 3)
        XCTAssertEqual(versions[0], "5")
    }

    func testSDKResource() {
        let button = LoginButton()
        XCTAssertNotNil(button)
    }

}
