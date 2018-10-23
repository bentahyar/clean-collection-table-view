//
//  MockInteractorRouter.swift
//  CleanTableCollectionViewUITests
//
//  Created by Benedict on 15/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import Foundation
import UIKit
@testable import CleanTableCollectionView

class MockRouter: ViewWireframe {
    var invokedViewControllerGetter = false
    var invokedViewControllerGetterCount = 0
    var stubbedViewController: UIViewController!
    override var viewController: UIViewController {
        invokedViewControllerGetter = true
        invokedViewControllerGetterCount += 1
        return stubbedViewController
    }
    var invokedNavigateToAddNews = false
    var invokedNavigateToAddNewsCount = 0
    var invokedNavigateToAddNewsParameters: (navigationController: UINavigationController, Void)?
    var invokedNavigateToAddNewsParametersList = [(navigationController: UINavigationController, Void)]()
    override func navigateToAddNews(withNavController navigationController: UINavigationController) {
        invokedNavigateToAddNews = true
        invokedNavigateToAddNewsCount += 1
        invokedNavigateToAddNewsParameters = (navigationController, ())
        invokedNavigateToAddNewsParametersList.append((navigationController, ()))
    }
}
