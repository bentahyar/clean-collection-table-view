//
//  InteractorIO.swift
//  CleanTableCollectionView
//
//  Created by Benedict on 15/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import Foundation

protocol ViewInteractorInput: class {
    func addData()
}

protocol ViewInteractorOutput: class {
    func successAddData(withData data: [News])
}
