//
//  MockAddNewsViewHandler.swift
//  CleanTableCollectionViewTests
//
//  Created by Benedict on 22/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import Foundation
import UIKit
@testable import CleanTableCollectionView

class MockAddNewsViewHandler: AddNewsViewEventHandler {
    var invokedAddNews = false
    var invokedAddNewsCount = 0
    var invokedAddNewsParameters: (id: String, title: String, desc: String, type: String)?
    var invokedAddNewsParametersList = [(id: String, title: String, desc: String, type: String)]()
    func addNews(withId id: String, withTitle title: String, withDesc desc: String, withType type: String) {
        invokedAddNews = true
        invokedAddNewsCount += 1
        invokedAddNewsParameters = (id, title, desc, type)
        invokedAddNewsParametersList.append((id, title, desc, type))
    }
}
