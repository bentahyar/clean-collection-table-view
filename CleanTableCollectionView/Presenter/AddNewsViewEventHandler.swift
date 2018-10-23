//
//  AddNewsViewEventHandler.swift
//  CleanTableCollectionView
//
//  Created by Benedict on 22/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import Foundation

protocol AddNewsViewEventHandler: class {
    func addNews(withId id: String, withTitle title: String, withDesc desc: String, withType type: String)
}
