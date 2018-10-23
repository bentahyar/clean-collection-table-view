//
//  MockAddNewsInteractorOutput.swift
//  CleanTableCollectionViewTests
//
//  Created by Benedict on 22/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import Foundation
import UIKit
@testable import CleanTableCollectionView

class MockAddNewsInteractorOutput: AddNewsViewInteractorOutput {
    var invokedSuccessAddData = false
    var invokedSuccessAddDataCount = 0
    func successAddData() {
        invokedSuccessAddData = true
        invokedSuccessAddDataCount += 1
    }
}
