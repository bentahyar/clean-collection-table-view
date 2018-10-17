//
//  Article.swift
//  CleanTableCollectionView
//
//  Created by Benedict on 11/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import Foundation

struct Article: News {
    var id: String
    var title: String
    var content: String = ""
    
    init(id: String, content: String, title: String) {
        self.id = id
        self.content = content
        self.title = title
    }
}
