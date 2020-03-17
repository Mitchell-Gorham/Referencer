//
//  ReferencerTests.swift
//  ReferencerTests
//
//  Created by Mitchell Gorham on 10/3/20.
//  Copyright © 2020 Mitchell Gorham. All rights reserved.
//

import XCTest
@testable import Referencer

class ReferencerTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let name = "name"
        let const = "constellation"
        let appMag = 64.3
        let dist = 23.78
        
        let testStruct = starStats(name: name, const: const, appMag: appMag, dist: dist )

        XCTAssertEqual(testStruct.name, name)
        XCTAssertEqual(testStruct.const, const)
        XCTAssertEqual(testStruct.appMag, appMag)
        XCTAssertEqual(testStruct.dist, dist)
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
