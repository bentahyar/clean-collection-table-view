//
//  ViewEventHandler.swift
//  CleanTableCollectionView
//
//  Created by Benedict on 15/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import Foundation

protocol ViewEventHandler: class {
    func itemDidClicked(withTitle title: String, withType type: String)
    
    func loadNews()
}
