//
//  AddNewsInteractorIO.swift
//  CleanTableCollectionView
//
//  Created by Benedict on 22/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import Foundation

protocol AddNewsViewInteractorInput: class {
    func addData(withId id: String, withTitle title: String, withDesc desc: String, withType type: String)
}

protocol AddNewsViewInteractorOutput: class {
    func successAddData()
}
