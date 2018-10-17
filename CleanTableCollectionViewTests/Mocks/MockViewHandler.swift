//
//  MockViewHandler.swift
//  CleanTableCollectionViewTests
//
//  Created by Benedict on 15/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import Foundation
@testable import CleanTableCollectionView

class MockViewHandler: ViewEventHandler {
    var invokedItemDidClicked = false
    var invokedItemDidClickedCount = 0
    var invokedItemDidClickedParameters: (title: String, type: String)?
    var invokedItemDidClickedParametersList = [(title: String, type: String)]()
    func itemDidClicked(withTitle title: String, withType type: String) {
        invokedItemDidClicked = true
        invokedItemDidClickedCount += 1
        invokedItemDidClickedParameters = (title, type)
        invokedItemDidClickedParametersList.append((title, type))
    }
    var invokedLoadNews = false
    var invokedLoadNewsCount = 0
    func loadNews() {
        invokedLoadNews = true
        invokedLoadNewsCount += 1
    }
}
