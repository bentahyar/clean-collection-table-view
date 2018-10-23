//
//  RouterTest.swift
//  CleanTableCollectionViewUITests
//
//  Created by Benedict on 15/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import XCTest
@testable import CleanTableCollectionView

class RouterTest: XCTestCase {
    var router: ViewWireframe?
    var view: MockView?
    
    override func setUp() {
        self.router = ViewWireframe.init()
        self.view = MockView()
    }
    
    override func tearDown() {
        
    }
}
