//
//  Caroussel.swift
//  CleanTableCollectionView
//
//  Created by Benedict on 11/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import Foundation

struct Caroussel: News {
    var id: String
    var title: String
    var image: String = ""
    
    init(id: String, image: String, title: String) {
        self.id = id
        self.image = image
        self.title = title
    }
}
