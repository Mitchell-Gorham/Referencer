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

    func testStarClass() {
        let image = "image"
        let name = "name"
        let const = "constellation"
        let appMag = "64.3"
        let dist = "23.78"
        let notes = "testnote"
        
        let testClass = StarClass(image: image, name: name, const: const, appMag: appMag, dist: dist, notes: notes)

        XCTAssertEqual(testClass.image, image)
        XCTAssertEqual(testClass.name, name)
        XCTAssertEqual(testClass.const, const)
        XCTAssertEqual(testClass.appMag, appMag)
        XCTAssertEqual(testClass.dist, dist)
        XCTAssertEqual(testClass.notes, notes)
    }
    
    func testArrayPassing() {
        let star0 = StarClass(image: "star0", name: "star0", const: "const0", appMag: "0", dist: "0", notes: "n0")
        let star1 = StarClass(image: "star1", name: "star1", const: "const1", appMag: "1", dist: "1", notes: "n1")
        let star2 = StarClass(image: "star2", name: "star2", const: "const2", appMag: "2", dist: "2", notes: "n2")
        let starArray: [StarClass] = [star0, star1, star2]
        
        XCTAssertEqual(3, starArray.count)
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
