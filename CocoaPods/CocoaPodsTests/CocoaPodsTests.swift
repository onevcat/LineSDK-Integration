//
//  CocoaPodsTests.swift
//  CocoaPodsTests
//
//  Created by Wang Wei on 2019/07/19.
//  Copyright © 2019 LINE Corp. All rights reserved.
//

import XCTest
import LineSDK

class CocoaPodsTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSDKVersion() {
        let version = LineSDK.Constant.SDKVersion
        XCTAssertFalse(version.isEmpty)
    }
    
    func testSDKResource() {
        let button = LoginButton()
        XCTAssertNotNil(button.buttonText)

        button.buttonText = "Hello"
        XCTAssertEqual(button.titleLabel?.text, "Hello")
    }

}
