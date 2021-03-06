//
//  bit_flyer_chart_mvvmUITests.swift
//  bit-flyer-chart-mvvmUITests
//
//  Created by kyo on 2017/10/02.
//  Copyright © 2017 com.example. All rights reserved.
//

import XCTest

class bit_flyer_chart_mvvmUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTransitionToChangeThemeColorView() {
        let app = XCUIApplication()
        let configTabbarButton = app.tabBars.buttons["config"]
        XCTAssertTrue(configTabbarButton.exists)
        
        configTabbarButton.tap()
        let changeThemeCell = app.tables.cells.staticTexts["テーマカラーの変更"]
        XCTAssertTrue(changeThemeCell.exists)
        
        changeThemeCell.tap()
        let screenTitle = app.navigationBars["テーマカラーを選ぶ"]
        
        XCTAssertTrue(screenTitle.exists)
    }
}
