//
//  MockAddNewsInteractorInput.swift
//  CleanTableCollectionViewTests
//
//  Created by Benedict on 22/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import Foundation
import UIKit
@testable import CleanTableCollectionView

class MockAddNewsInteractorInput: AddNewsViewInteractorInput {
    var invokedAddData = false
    var invokedAddDataCount = 0
    var invokedAddDataParameters: (id: String, title: String, desc: String, type: String)?
    var invokedAddDataParametersList = [(id: String, title: String, desc: String, type: String)]()
    func addData(withId id: String, withTitle title: String, withDesc desc: String, withType type: String) {
        invokedAddData = true
        invokedAddDataCount += 1
        invokedAddDataParameters = (id, title, desc, type)
        invokedAddDataParametersList.append((id, title, desc, type))
    }
}
