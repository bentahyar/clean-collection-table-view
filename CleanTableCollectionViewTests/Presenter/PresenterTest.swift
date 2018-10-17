//
//  PresenterTest.swift
//  CleanTableCollectionViewUITests
//
//  Created by Benedict on 15/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import XCTest
@testable import CleanTableCollectionView

class PresenterTest: XCTestCase {
    var interactor: MockInteractorInput?
    var view: MockView?
    
    var router: MockRouter?
    var eventHandler: ViewPresenter?
    
    private var news: [News] = [
        Feed(desc: "Booms boom boom", id: "1", title: "This is feed 2"),
        Feed(desc: "Booms boom boom", id: "2", title: "This is feed 3"),
        Article(id: "3", content: "Boom", title: "This is article 3"),
        Article(id: "4", content: "Boom", title: "This is article 4"),
        Article(id: "5", content: "Boom", title: "This is article 5"),
        Caroussel(id: "6", image: "Boom boom", title: "This is caroussel 6"),
        Caroussel(id: "7", image: "Boom boom", title: "This is caroussel 7"),
        Caroussel(id: "8", image: "Boom boom", title: "This is caroussel 8")
    ]
    
    override func setUp() {
        self.interactor = MockInteractorInput()
        self.view = MockView()
        
        self.router = MockRouter()
        self.eventHandler = ViewPresenter(interactor: interactor!, router: router!)
        self.eventHandler?.view = view
    }
    
    override func tearDown() {
        
    }
    
    func testSuccessfullyAddData() {
        eventHandler?.successAddData(withData: news)
        
        XCTAssert(view?.invokedShowData == true, "Expected function to be called")
        XCTAssert(view?.invokedShowDataCount == 1, "Expected only called once")
    }
    
    func testSuccessfullyClickedItem() {
        eventHandler?.itemDidClicked(withTitle: "Test Title", withType: "Test")
        
        XCTAssert(view?.invokedShowAlert == true, "Expected function to be called")
        XCTAssert(view?.invokedShowAlertCount == 1, "Expected only called once")
    }
    
    func testLoadNews() {
        eventHandler?.loadNews()
        
        XCTAssert(interactor?.invokedAddData == true, "Expected function to be called")
        XCTAssert(interactor?.invokedAddDataCount == 1, "Expected only called once")
    }
}
