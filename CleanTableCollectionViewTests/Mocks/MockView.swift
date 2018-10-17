//
//  MockView.swift
//  CleanTableCollectionViewUITests
//
//  Created by Benedict on 15/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import Foundation
@testable import CleanTableCollectionView

class MockView: ViewController {
    var invokedPresenterSetter = false
    var invokedPresenterSetterCount = 0
    var invokedPresenter: ViewEventHandler?
    var invokedPresenterList = [ViewEventHandler?]()
    var invokedPresenterGetter = false
    var invokedPresenterGetterCount = 0
    var stubbedPresenter: ViewEventHandler!
    override var presenter: ViewEventHandler? {
        set {
            invokedPresenterSetter = true
            invokedPresenterSetterCount += 1
            invokedPresenter = newValue
            invokedPresenterList.append(newValue)
        }
        get {
            invokedPresenterGetter = true
            invokedPresenterGetterCount += 1
            return stubbedPresenter
        }
    }
    var invokedDataGetter = false
    var invokedDataGetterCount = 0
    var stubbedData: [News]!
    override var data: [News]? {
        invokedDataGetter = true
        invokedDataGetterCount += 1
        return stubbedData
    }
    var invokedViewDidLoad = false
    var invokedViewDidLoadCount = 0
    override func viewDidLoad() {
        invokedViewDidLoad = true
        invokedViewDidLoadCount += 1
    }
    var invokedShowData = false
    var invokedShowDataCount = 0
    var invokedShowDataParameters: (data: [News], Void)?
    var invokedShowDataParametersList = [(data: [News], Void)]()
    override func showData(withData data: [News]) {
        invokedShowData = true
        invokedShowDataCount += 1
        invokedShowDataParameters = (data, ())
        invokedShowDataParametersList.append((data, ()))
    }
    var invokedShowAlert = false
    var invokedShowAlertCount = 0
    var invokedShowAlertParameters: (title: String, type: String)?
    var invokedShowAlertParametersList = [(title: String, type: String)]()
    override func showAlert(withTitle title: String, withType type: String) {
        invokedShowAlert = true
        invokedShowAlertCount += 1
        invokedShowAlertParameters = (title, type)
        invokedShowAlertParametersList.append((title, type))
    }
}
