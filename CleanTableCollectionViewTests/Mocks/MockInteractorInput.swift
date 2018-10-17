//
//  MockInteractorInput.swift
//  CleanTableCollectionViewTests
//
//  Created by Benedict on 15/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import Foundation
@testable import CleanTableCollectionView

class MockInteractorInput: ViewInteractorInput {
    var invokedAddData = false
    var invokedAddDataCount = 0
    func addData() {
        invokedAddData = true
        invokedAddDataCount += 1
    }
}
