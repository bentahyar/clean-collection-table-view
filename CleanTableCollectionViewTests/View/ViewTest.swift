//
//  ViewTest.swift
//  CleanTableCollectionViewTests
//
//  Created by Benedict on 15/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import XCTest
@testable import CleanTableCollectionView

class ViewTest: XCTestCase {
    var presenter: MockViewHandler?
    var view: ViewController?
    
    private var news: [News] = [
        Feed(desc: "Booms boom boom", id: "0", title: "This is feed 1"),
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
        view = ViewController()
        presenter = MockViewHandler()
        
        view?.presenter = presenter
        view?.loadViewIfNeeded()
    }
    
    override func tearDown() {
        
    }
    
    func testDataValidity() {
        view?.showData(withData: news)
        
        guard let collectionView = view?.collectionView else {
            XCTFail("Collection View has not been initiallized")
            
            return
        }
        
        guard let data = view?.data?.count else {
            XCTFail("Data is empty")
            
            return
        }
        
        XCTAssert(data == news.count, "Expected data to have 9 items")
        XCTAssert(view?.collectionView.numberOfItems(inSection: 0) == news.count, "Expected collectionView to have 9 items")
        
        guard
            let cell1 = view?.dataSource.collectionView(collectionView, cellForItemAt: IndexPath(row: 0, section: 0)) as? FeedCollectionViewCell,
            let cell2 = view?.dataSource.collectionView(collectionView, cellForItemAt: IndexPath(row: 3, section: 0)) as? ArticleCollectionViewCell,
            let cell3 = view?.dataSource.collectionView(collectionView, cellForItemAt: IndexPath(row: 6, section: 0)) as? CarousselCollectionViewCell else {
            XCTFail("Different types on predefined type")
            
            return
        }
        
        XCTAssert(cell1.title.text == news[0].title, "Expect first row to show title news number 1.")
        XCTAssert(cell2.title.text == news[3].title, "Expect first row to show title news number 2.")
        XCTAssert(cell3.title.text == news[6].title, "Expect first row to show title news number 3.")
    }
    
    func testShowAllert() {
        view?.showAlert(withTitle: "This is a test alert", withType: "Test")
        
        XCTAssert(view?.alertView?.message == "This is a test alert", "Expected message on alert view is 'This is a test alert'")
    }
}
