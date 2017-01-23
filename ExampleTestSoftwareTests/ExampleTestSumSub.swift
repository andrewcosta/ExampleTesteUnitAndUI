//
//  ExampleTestSoftwareTests2.swift
//  ExampleTestSoftware
//
//  Created by Andrew Diniz da Costa on 26/09/16.
//  Copyright © 2016 LES PUC-Rio. All rights reserved.
//

import XCTest
@testable import ExampleTestSoftware

class ExampleTestSumSub: XCTestCase {
    
    var operationInstance:Calc!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        print("Executando ExampleTestSumSub")
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
        self.measure {
            let resultObtained = self.operationInstance.sum(number1: 1, number2: 2)
            let resultExpected:Double = 3
            XCTAssertEqual(resultObtained, resultExpected)
        }
        
    }
    
    func testSub() {
        let resultObtained = operationInstance.sub(number1: 1, number2: 2)
        let resultExpected:Double = -1
        XCTAssertEqual(resultObtained, resultExpected)
    }
    
}
