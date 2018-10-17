//
//  Feed.swift
//  CleanTableCollectionView
//
//  Created by Benedict on 11/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import Foundation

struct Feed: News {
    var id: String
    var title: String
    var desc: String = ""
    
    init(desc: String, id: String, title: String) {
        self.desc = desc
        self.title = title
        self.id = id
    }
}
