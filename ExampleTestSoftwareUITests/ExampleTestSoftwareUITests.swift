//
//  ExampleTestSoftwareUITests.swift
//  ExampleTestSoftwareUITests
//
//  Created by Andrew Diniz da Costa on 26/09/16.
//  Copyright © 2016 LES PUC-Rio. All rights reserved.
//

import XCTest

class ExampleTestSoftwareUITests: XCTestCase {
    

    override func setUp() {
        super.setUp()
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        XCUIApplication().launch()
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        //XCUIApplication().buttons["Ok"].tap()
        super.tearDown()
    }
    
    func testExample() {
        
        var i = 0
        var numLabel = 0
        while(i<=9){
            let app = XCUIApplication()
            app.buttons["Ok"].tap()
            app.staticTexts["Testando \(i)"].tap()
            app.buttons["Cancel"].tap()
            app.navigationBars.buttons.element(boundBy: 0).tap()
            
            numLabel += 2
            XCTAssert(app.staticTexts["\(numLabel)"].exists)
            
            i+=1
        }
        

        
    }
    
}
