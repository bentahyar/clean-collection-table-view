//
//  Interactor.swift
//  CleanTableCollectionView
//
//  Created by Benedict on 15/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import Foundation

class ViewInteractor: ViewInteractorInput {
    
    weak var output: ViewInteractorOutput?
    
    deinit {
        print("View Interactor Deinit")
    }
    
    func addData() {
        let news: [News] = [
            Feed(desc: "Booms boom boom", id: "1", title: "This is feed 1"),
            Feed(desc: "Booms boom boom", id: "2", title: "This is feed 2"),
            Feed(desc: "Booms boom boom", id: "3", title: "This is feed 3"),
            Article(id: "3", content: "Boom", title: "This is article 3"),
            Article(id: "4", content: "Boom", title: "This is article 4"),
            Article(id: "5", content: "Boom", title: "This is article 5"),
            Caroussel(id: "6", image: "Boom boom", title: "This is caroussel 6"),
            Caroussel(id: "7", image: "Boom boom", title: "This is caroussel 7"),
            Caroussel(id: "8", image: "Boom boom", title: "This is caroussel 8")
        ]
        
        self.output?.successAddData(withData: news)
    }
}
