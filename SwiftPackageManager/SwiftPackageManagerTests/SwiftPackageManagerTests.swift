//
//  SwiftPackageManagerTests.swift
//  SwiftPackageManagerTests
//
//  Created by Wang Wei on 2019/07/19.
//  Copyright © 2019 OneV's Den. All rights reserved.
//

import XCTest
@testable import SwiftPackageManager
import LineSDK

class SwiftPackageManagerTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSDKVersion() {
        let version = Constant.SDKVersion
        print(version)
        XCTAssertFalse(version.isEmpty)
    }


    func testSDKResource() {
        // No resource supported in SPM now.
        
//        let button = LoginButton()
//        XCTAssertNotNil(button.buttonText)
//
//        button.buttonText = "Hello"
//        XCTAssertEqual(button.titleLabel?.text, "Hello")
    }


}
