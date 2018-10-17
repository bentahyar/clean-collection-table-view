//
//  InteractorTest.swift
//  CleanTableCollectionViewUITests
//
//  Created by Benedict on 15/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import XCTest
@testable import CleanTableCollectionView

class InteractorTest: XCTestCase {
    var mockOutput: MockInteractorOutput?
    var interactor: ViewInteractor?
    
    override func setUp() {
        mockOutput = MockInteractorOutput()
        interactor = ViewInteractor()
        
        interactor?.output = mockOutput
    }
    
    override func tearDown() {
        
    }
    
    func testAddData() {
        interactor?.addData()
        
        XCTAssert(mockOutput?.invokedSuccessAddData == true, "Expected to be called")
        XCTAssert(mockOutput?.invokedSuccessAddDataCount == 1, "Expected add data to be called once")
    }
}

