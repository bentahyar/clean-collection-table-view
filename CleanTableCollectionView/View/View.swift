//
//  View.swift
//  CleanTableCollectionView
//
//  Created by Benedict on 15/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import Foundation

protocol View: class {
    func showData(withData data: [News])
    
    func showAlert(withTitle title: String, withType type: String)
}
