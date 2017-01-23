//
//  ExampleTestSoftwareTests.swift
//  ExampleTestSoftwareTests
//
//  Created by Andrew Diniz da Costa on 26/09/16.
//  Copyright © 2016 LES PUC-Rio. All rights reserved.
//

import XCTest
@testable import ExampleTestSoftware

class ExampleTestMultDiv: XCTestCase {
    
    var operationInstance:Calc!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        print("Executando ExampleTestMultDiv")
        super.setUp()
        operationInstance = Calc()
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSum() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let resultObtained = operationInstance.mult(number1: 1, number2: 2)
        let resultExpected:Double = 2
        XCTAssertEqual(resultObtained, resultExpected)
    }
    
    func testSub() {
        let resultObtained = operationInstance.div(number1: 1, number2: 2)
        let resultExpected:Double = 0.5
        XCTAssertEqual(resultObtained, resultExpected)
    }

    
}
