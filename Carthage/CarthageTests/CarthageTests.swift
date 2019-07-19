//
//  CarthageTests.swift
//  CarthageTests
//
//  Created by Wang Wei on 2019/07/19.
//  Copyright © 2019 LINE Corp. All rights reserved.
//

import XCTest
import LineSDK

class CarthageTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSDKVersion() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let version = Constant.SDKVersion
        XCTAssertFalse(version.isEmpty)
    }

    func testSDKResource() {
        let button = LoginButton()
        XCTAssertNotNil(button.buttonText)

        button.buttonText = "Hello"
        XCTAssertEqual(button.titleLabel?.text, "Hello")
    }
}
