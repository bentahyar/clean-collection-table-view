//
//  MockViewHandler.swift
//  CleanTableCollectionViewTests
//
//  Created by Benedict on 15/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import Foundation
import UIKit
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
    var invokedNavigateToAddNews = false
    var invokedNavigateToAddNewsCount = 0
    var invokedNavigateToAddNewsParameters: (navigationController: UINavigationController, Void)?
    var invokedNavigateToAddNewsParametersList = [(navigationController: UINavigationController, Void)]()
    func navigateToAddNews(withNavController navigationController: UINavigationController) {
        invokedNavigateToAddNews = true
        invokedNavigateToAddNewsCount += 1
        invokedNavigateToAddNewsParameters = (navigationController, ())
        invokedNavigateToAddNewsParametersList.append((navigationController, ()))
    }
    var invokedLoadNews = false
    var invokedLoadNewsCount = 0
    func loadNews() {
        invokedLoadNews = true
        invokedLoadNewsCount += 1
    }
}
