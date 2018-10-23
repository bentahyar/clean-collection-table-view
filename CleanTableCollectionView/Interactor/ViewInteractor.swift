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
        self.output?.successAddData(withData: DBHelper.shared.readNews())
    }
}
