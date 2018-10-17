//
//  MockInteractorOutput.swift
//  CleanTableCollectionViewTests
//
//  Created by Benedict on 15/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import Foundation
@testable import CleanTableCollectionView

class MockInteractorOutput: ViewInteractorOutput {
    var invokedSuccessAddData = false
    var invokedSuccessAddDataCount = 0
    var invokedSuccessAddDataParameters: (data: [News], Void)?
    var invokedSuccessAddDataParametersList = [(data: [News], Void)]()
    func successAddData(withData data: [News]) {
        invokedSuccessAddData = true
        invokedSuccessAddDataCount += 1
        invokedSuccessAddDataParameters = (data, ())
        invokedSuccessAddDataParametersList.append((data, ()))
    }
}
